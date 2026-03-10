@extends('layout.editor')
@section('title')
    Armada
@endsection

@section('content')
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Armada</h1>
        
        <form action="" id="form_cari" method="post">
            @csrf
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Cari nama" name="cari" id="cari">
                <div class="input-group-append">
                    <button type="button" id="add_new" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Add</button>
                  <button class="d-none d-sm-inline-block btn btn-sm btn-info shadow-sm" type="button" id="btn-cari">Cari</button>
                </div>
              </div>
        </form>
    </div>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Data Armada</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="Tmh" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Image</th>
                            <th>Title</th>
                            <th>Total Unit</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<form id="addForm" method="post" enctype="multipart/form-data">
    @csrf
    <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add new Armada</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-grop row">
                         <div class="col-md-4">
                        <div class="form-group">
                           <label for="image">Image (Belum Ada)</label>
                            <input type="file" id="image" name="image" class="form-control-file" accept="image/*">
                        </div>
                    </div>

                      <div class="col-sm-6">
                            <div class="form-group">
                                <label for="title">Unit Model</label>
                                <input type="text" id="title" name="title" class="form-control">
                            </div>
                        </div>
                        
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="total_unit">Total Unit</label>
                                <input type="text" id="total_unit" name="total_unit" class="form-control">
                            </div>
                        </div>


                    </div>
                   
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button type="button" id="proses_add" class="btn btn-primary">Save</button>
                </div>
            </div>
        </div>
    </div>
</form>
<form id="updateForm" method="post" enctype="multipart/form-data">
    @csrf
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog modal-dialog-scrollable modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Update Armada</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>

                <div class="modal-body">
                    <div class="form-grop row">
                        <div class="col-md-4">
                            <div class="form-group">
                             <label>Image Saat Ini:</label><br>
                                 <img id="preview_image_update" src="" alt="Preview" style="max-width: 150px; border-radius: 6px;">
                            </div>

                    <div class="form-group">
                        <label for="image_update">Ganti Image (Opsional)</label>
                             <input type="hidden" id="id_update" name="id" class="form-control">
                                <input type="file" id="image_update" name="image" class="form-control-file" accept="image/*">
                    </div>
                    
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="title">Unit Model</label>
                                <input type="text" id="title_update" name="title" class="form-control">
                        </div>
                    </div>
                        
                         <div class="col-sm-6">
                        <div class="form-group">
                            <label for="total_unit">Total Unit</label>
                                <input type="text" id="total_unit_update" name="total_unit" class="form-control">
                            </div>
                        </div>

                        
                 </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button type="button" id="proses_update" class="btn btn-primary">Update</button>
                </div>
 </div>
            </div>
        </div>
    
</form>
@endsection
@section('script')
<script>
    $('document').ready(function(e){
        var Tmh = $('#Tmh').DataTable({
            "responsive": true,
            'searching': false,
            "processing": true,
            "serverSide": true,
            "pagingType": "full_numbers",
            "paging":true,
            "ajax":{
                "url":"{{ route('editor.armada.data') }}",
                "data":function(parm){
                    parm.search = $('#cari').val();
                    
                },
                   
            },
            "columns":[
    {
        "data": "image",
        "orderable": false,
        "render": function(data){
            if (!data) {
                return '<span class="text-muted">No Image</span>';
            }
            return `
                <img src="/storage/${data}" 
                     style="width: 80px; height: 60px; object-fit: cover; border-radius: 6px;">
            `;
        }
    },

    {"data": "title","orderable":false},
      {"data": "total_unit","orderable":false},

    {
        "data": "id",
        "orderable": false,
        render: function (data, type, row){

            var idData = row.id;
            let isVerified = row.verified;
            let btn = '<div class="btn-group" role="group" aria-label="Basic example">';

            if(isVerified == 0){
                btn += '<button type="button" class="btn btn-success btnVerified">Verified</button>';
            }

            btn += '<button type="button" class="btn btn-warning btnUpdate">Update</button>';
            btn += '<button type="button" class="btn btn-danger btnDelete">Delete</button>';
            btn += '</div>';

            return btn;
        }
    },
]

        });
        function redraw(){
            Tmh.draw();
        }
        $("#add_new").click(function(){
            $("#addModal").modal("show");
        });
        $("#proses_add").click(function(){
            var postData = new FormData($("#addForm")[0]);
            $.ajax({
                url:"{{ URL::route('editor.armada.store') }}",
                data:postData,
                type:"POST",
                dataType:"JSON",
                cache:false,
                contentType: false,
                processData: false,
                beforeSend: function(){
                    $('.loading-clock').css('display','flex');
                },
                success:function(data){
                    if(data.success == 1){
                        // Reset form
                        $('#addForm')[0].reset();
                        // Remove image preview
                        $("#addModal").modal("hide");
                        toastr_success(data.messages);
                        redraw();
                    }else{
                        toastr_error(data.messages);
                    }
                },
                complete: function(){
                    $('.loading-clock').css('display','none');
                },
            });
        });
        $("#btn-cari").click(function(){
            let search = $("#cari").val();
            Tmh.draw();
        });
        $("#Tmh tbody").on('click','.btnUpdate',function(){
            let data = Tmh.row( $(this).parents('tr') ).data();
            let idData = data.id;
            $.ajax({
                url:"{{ URL::route('editor.armada.detail') }}",
                type: "GET",
                data: {
                    "_token": "{{ csrf_token() }}",
                    'id': idData
                },
                dataType: "JSON",
                cache: false,
                beforeSend: function(){
                    $('.loading-clock').css('display','flex');
                },
                 success: function(data) {
    if(data.success == 1){
        let id = data.data.id;
        let image = data.data.image;
        let title = data.data.title;
        let total_unit = data.data.total_unit;

        $("#id_update").val(id);
        $('#title_update').val(title);
        $('#total_unit_update').val(total_unit);

    
        $("#preview_image_update").attr("src", "/storage/" + image);

        // ✅ wajib dikosongkan, tidak boleh diisi
        $("#image_update").val("");
        
    } else{
        toastr_error(data.messages);
    }
},

                complete: function(){
                    $('.loading-clock').css('display','none');
                },
            })
            $("#updateModal").modal("show");
        });
        $("#proses_update").click(function(){
            var postData = new FormData($("#updateForm")[0]);
            $.ajax({
                url:"{{ URL::route('editor.armada.update') }}",
                data:postData,
                type:"POST",
                dataType:"JSON",
                cache:false,
                contentType: false,
                processData: false,
                beforeSend: function(){
                    $('.loading-clock').css('display','flex');
                },
                success:function(data){
                    if(data.success == 1){
                        $("#updateModal").modal("hide");
                        toastr_success(data.messages);
                        redraw();
                    }else{
                        toastr_error(data.messages);
                    }
                },
                complete: function(){
                    $('.loading-clock').css('display','none');
                },
            });
        });
        $("#Tmh tbody").on('click','.btnDelete',function(){
            let data = Tmh.row( $(this).parents('tr') ).data();
            let idData = data.id;
            Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes, delete it!"
                }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url:"{{ URL::route('editor.armada.delete') }}",
                        type: "DELETE",
                        data: {
                            "_token": "{{ csrf_token() }}",
                            'id': idData
                        },
                        dataType: "JSON",
                        cache: false,
                        beforeSend: function(){
                            $('.loading-clock').css('display','flex');
                        },
                        success: function(data) {
                            if(data.success == 1){
                                toastr_success(data.messages);
                                redraw();
                            } else{
                                toastr_error(data.messages);
                            }
                        },
                        complete: function(){
                            $('.loading-clock').css('display','none');
                        },
                    }); 
                }
                });
        });
        function toastr_success(msg){
        const Toast = Swal.mixin({
            toast: true,
            position: "top-end",
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.onmouseenter = Swal.stopTimer;
                toast.onmouseleave = Swal.resumeTimer;
            }
            });
            Toast.fire({
            icon: "success",
            title: msg
        });
    }
    function toastr_error(msg){
        const Toast = Swal.mixin({
            toast: true,
            position: "top-end",
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.onmouseenter = Swal.stopTimer;
                toast.onmouseleave = Swal.resumeTimer;
            }
            });
            Toast.fire({
            icon: "error",
            title: msg
        });
        }
    });
</script>
@endsection
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@push('page_scripts')
                          <!-- Page level plugins -->
                 <script src="{{ asset('template_admin/vendor/datatables/jquery.dataTables.min.js') }}"></script>
                 <script src="{{ asset('template_admin/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>
                  <script src="{{ asset('template_admin/js/demo/datatables-demo.js') }}"></script> 
                        @endpush  