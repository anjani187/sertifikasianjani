@extends('layout.editor')
@section('title')
    Daftar
@endsection

@section('content')
<div class="container-fluid">

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Daftar Tugas</h1>
        
        <form action="" id="form_cari" method="post">
            @csrf
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Cari judul tugas / deskripsi" name="cari" id="cari">
                <div class="input-group-append">
                    <button type="button" id="add_new" class="btn btn-sm btn-primary shadow-sm">Add</button>
                    <button class="btn btn-sm btn-info shadow-sm" type="button" id="btn-cari">Cari</button>
                </div>
            </div>
        </form>
    </div>

    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="Tmh" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Judul Tugas</th>
                            <th>Deadline</th>
                            <th>Deskripsi</th>
                            <th>Status</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<!-- ADD MODAL -->
<form id="addForm" method="post">
@csrf
<div class="modal fade" id="addModal">
<div class="modal-dialog modal-dialog-scrollable modal-lg">
<div class="modal-content">

<div class="modal-header">
<h5 class="modal-title">Add Tugas</h5>
<button class="close" data-dismiss="modal"><span>×</span></button>
</div>

<div class="modal-body">
<div class="row">

<div class="col-md-6">
<label>Judul Tugas</label>
<input type="text" id="judul_tugas" name="judul_tugas" class="form-control">
</div>

<div class="col-md-6">
<label>Deadline</label>
<input type="date" id="deadline" name="deadline" class="form-control">
</div>

<div class="col-md-12 mt-3">
<label>Deskripsi</label>
<textarea id="deskripsi" name="deskripsi" class="form-control" rows="4"></textarea>
</div>

<div class="col-md-6 mt-3">
<label>Status</label>
<select name="status_id" id="status_id" class="form-control">
<option value="1">Pending</option>
<option value="2">In Progress</option>
<option value="3">Completed</option>
</select>
</div>

</div>
</div>

<div class="modal-footer">
<button class="btn btn-secondary" data-dismiss="modal">Cancel</button>
<button type="button" id="proses_add" class="btn btn-primary">Save</button>
</div>

</div>
</div>
</div>
</form>


<!-- UPDATE MODAL -->
<form id="updateForm" method="post">
@csrf
<input type="hidden" id="id_update" name="id">

<div class="modal fade" id="updateModal">
<div class="modal-dialog modal-dialog-scrollable modal-lg">
<div class="modal-content">

<div class="modal-header">
<h5 class="modal-title">Update Tugas</h5>
<button class="close" data-dismiss="modal"><span>×</span></button>
</div>

<div class="modal-body">
<div class="row">

<div class="col-md-6">
<label>Judul Tugas</label>
<input type="text" id="judul_tugas_update" name="judul_tugas" class="form-control">
</div>

<div class="col-md-6">
<label>Deadline</label>
<input type="date" id="deadline_update" name="deadline" class="form-control">
</div>

<div class="col-md-12 mt-3">
<label>Deskripsi</label>
<textarea id="deskripsi_update" name="deskripsi" class="form-control" rows="4"></textarea>
</div>

<div class="col-md-6 mt-3">
<label>Status</label>
<select name="status_id" id="status_id_update" class="form-control">
<option value="1">Pending</option>
<option value="2">In Progress</option>
<option value="3">Completed</option>
</select>
</div>

</div>
</div>

<div class="modal-footer">
<button class="btn btn-secondary" data-dismiss="modal">Cancel</button>
<button type="button" id="proses_update" class="btn btn-primary">Update</button>
</div>

</div>
</div>
</div>
</form>
@endsection



@section('script')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
$(function () {

var Tmh = $('#Tmh').DataTable({
responsive:true,
serverSide:true,
ajax:{
url:"{{ route('editor.corevalue.data') }}",
data:function(params){
params.search = $('#cari').val();
}
},
columns:[

{data:'judul_tugas'},
{data:'deadline'},
{data:'deskripsi'},

{
data:'status.name',
render:function(data){

if(data == 'Pending'){
return '<span class="badge badge-warning">Pending</span>';
}

if(data == 'In Progress'){
return '<span class="badge badge-primary">In Progress</span>';
}

if(data == 'Completed'){
return '<span class="badge badge-success">Completed</span>';
}

return data;

}
},

{
data:"id",
render:function(_,__,row){
return `
<button class="btn btn-warning btnUpdate">Update</button>
<button class="btn btn-danger btnDelete">Delete</button>
`;
}
}

]

});


function redraw(){ Tmh.draw(); }

$("#add_new").click(()=>$("#addModal").modal("show"));

$("#btn-cari").click(redraw);


$("#proses_add").click(function(){

$.post({

url:"{{ route('editor.corevalue.store') }}",
data:$("#addForm").serialize(),

success:function(res){

if(res.success){

$('#addForm')[0].reset();
$("#addModal").modal("hide");

toastr_success(res.messages);
redraw();

}else{

toastr_error(res.messages);

}

}

});

});


$("#Tmh tbody").on('click','.btnUpdate',function(){

let id = Tmh.row($(this).parents('tr')).data().id;

$.get("{{ route('editor.corevalue.detail') }}",{id},function(res){

$("#id_update").val(res.data.id);
$("#judul_tugas_update").val(res.data.judul_tugas);
$("#deadline_update").val(res.data.deadline);
$("#deskripsi_update").val(res.data.deskripsi);
$("#status_id_update").val(res.data.status_id);

});

$("#updateModal").modal("show");

});


$("#proses_update").click(function(){

$.post({

url:"{{ route('editor.corevalue.update') }}",
data:$("#updateForm").serialize(),

success:function(res){

if(res.success){

$("#updateModal").modal("hide");

toastr_success(res.messages);
redraw();

}else{

toastr_error(res.messages);

}

}

});

});


$("#Tmh tbody").on('click','.btnDelete',function(){

let data = Tmh.row($(this).parents('tr')).data();

Swal.fire({
title:"Are you sure?",
text:"You won't be able to revert this!",
icon:"warning",
showCancelButton:true,
confirmButtonText:"Yes, delete it!"
}).then((result)=>{

if(result.isConfirmed){

$.ajax({

url:"{{ route('editor.corevalue.delete') }}",
type:"DELETE",

data:{
_token:"{{ csrf_token() }}",
id:data.id
},

success:function(res){

if(res.success){

toastr_success(res.messages);
redraw();

}else{

toastr_error(res.messages);

}

}

});

}

});

});


function toastr_success(msg){

Swal.fire({
toast:true,
position:"top-end",
icon:"success",
title:msg,
showConfirmButton:false,
timer:3000
});

}

function toastr_error(msg){

Swal.fire({
toast:true,
position:"top-end",
icon:"error",
title:msg,
showConfirmButton:false,
timer:3000
});

}

});
</script>
@endsection

@push('page_scripts')
                          <!-- Page level plugins -->
                 <script src="{{ asset('template_admin/vendor/datatables/jquery.dataTables.min.js') }}"></script>
                 <script src="{{ asset('template_admin/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>
                  <script src="{{ asset('template_admin/js/demo/datatables-demo.js') }}"></script> 
                        @endpush  