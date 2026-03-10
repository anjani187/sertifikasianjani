// ==============================
// TOAST SUCCESS
// ==============================
function toastr_success(msg) {
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

// ==============================
// TOAST ERROR
// ==============================
function toastr_error(msg) {
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


// ==============================
// TOGGLE SETTING
// ==============================
window.toggleSetting = function(el) {
    fetch(el.dataset.url, {
        method: 'POST',
        headers: {
            'X-CSRF-TOKEN': document
                .querySelector('meta[name="csrf-token"]')
                .getAttribute('content'),
            'Accept': 'application/json'
        },
        body: new URLSearchParams({
            is_active: el.checked ? 1 : 0
        })
    })
    .then(res => {
        if (!res.ok) throw new Error('Request gagal');
        return res.json();
    })
    .then(data => {
        if (!data.success) {
            el.checked = !el.checked;
            toastr_error('Gagal memperbarui status');
            return;
        }

        toastr_success(
            el.checked
                ? 'Fitur berhasil diaktifkan'
                : 'Fitur berhasil dinonaktifkan'
        );
    })
    .catch(() => {
        el.checked = !el.checked;
        toastr_error('Terjadi kesalahan sistem');
    });
};
