@extends('frontend.layouts.master')

@push('stylesheet')
@endpush
@section('content')
<!-- Breadcrumbs -->
<div class="breadcrumbs overlay">
    <div class="container">
        <div class="bread-inner">
            <div class="row">
                <div class="col-12">
                    <h2>{{ Auth::user()->name }}</h2>
                    <ul class="bread-list">
                        <li><a href="/">Dashboard</a></li>
                        <li><i class="icofont-simple-right"></i></li>
                        <li class="active">profil</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<section class="section">
    <div class="container">
        <div class="row mt-2">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-white">
                        <div class="d-flex align-items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="16" viewBox="0 0 14 16"><g fill="none" fill-rule="evenodd" stroke="#999" stroke-linecap="round" stroke-linejoin="round"><path d="M13.494 15.28l-12.181.003v-1.787c0-.724.145-1.376.43-1.935a3.603 3.603 0 0 1 1.24-1.383 6.503 6.503 0 0 1 1.723-.795 8.735 8.735 0 0 1 1.235-.272"/><path d="M8.897 9.12c.413.067.803.154 1.165.263.64.193 1.22.46 1.725.795.533.353.95.818 1.237 1.383.286.56.431 1.211.431 1.935v1.787M4.608 7.338c-.562-1.018-.847-2.075-.847-3.146 0-.951.313-1.646.958-2.124.675-.502 1.571-.755 2.664-.755 1.093 0 1.989.253 2.664.755.645.478.958 1.173.958 2.124 0 1.104-.278 2.182-.827 3.207-.497.927-1.1 1.565-1.79 1.907a2.855 2.855 0 0 1-.987.164c-.378 0-.67-.062-.87-.124-.726-.34-1.374-1.016-1.923-2.008z"/></g></svg>
                            <h4 class="ml-2" style="font-size: 16px; font-weight: 600;">
                                {{ Auth::user()->name }}
                            </h4>
                        </div>
                    </div>
                    <div class="card-body row">
                        <div class="col-12">
                            @session('success')
                                <p class="alert alert-success">{{ session('success') }}</p>
                            @endsession

                            @session('error')
                                <p class="alert alert-danger">{{ session('error') }}</p>
                            @endsession

                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            <div class="d-flex justify-content-between align-items-center">
                                <h5>Biodata diri</h5>
                                <button class="btn btn-primary" data-toggle="modal" data-target="#editModal">Edit</button>

                                <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-scrollable">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="editModalLabel">Edit Profil</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="{{ route('profile.update') }}" method="post" id="form-edit">
                                                    @csrf
                                                    @method('PUT')
                                                    @if(Auth::user()->role == "PRODUSEN")
                                                    <div class="form-group">
                                                        <label for="name" class="col-form-label">Nama Pemilik</label>
                                                        <input type="text" name="name" value="{{ Auth::user()->name }}" class="form-control" id="name">
                                                    </div>
                                                        <div class="form-group">
                                                            <label for="name_perusahaaan" class="col-form-label">Nama Perusahaan</label>
                                                            <input type="text" name="nama_perusahaan" value="{{ Auth::user()->dataProdusen->nama_perusahaan }}" class="form-control" id="name_perusahaaan">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="nomor_induk_berusaha" class="col-form-label">Nomor Induk Berusaha</label>
                                                            <input type="text" name="nomor_induk_berusaha" value="{{ Auth::user()->dataProdusen->nomor_induk_berusaha }}" class="form-control" id="nomor_induk_berusaha">
                                                        </div>
                                                    @endif

                                                    @if (Auth::user()->role == "AKUN DINAS")
                                                    <input type="hidden" name="name" value="{{ Auth::user()->name }}" class="form-control" id="name">
                                                        <div class="form-group">
                                                            <label for="name_perusahaaan" class="col-form-label">Nama Instansi</label>
                                                            <input type="text" name="nama_perusahaan" value="{{ Auth::user()->dinas->nama_instansi }}" class="form-control" id="name_perusahaaan">
                                                        </div>
                                                    @endif
                                                    @if (Auth::user()->role == "AKUN DINAS NON NGANJUK")
                                                    <input type="hidden" name="name" value="{{ Auth::user()->name }}" class="form-control" id="name">
                                                        <div class="form-group">
                                                            <label for="name" class="col-form-label">Nama</label>
                                                            <input type="text" name="name" value="{{ Auth::user()->name }}" class="form-control" id="name">
                                                        </div>
                                                    @endif
                                                    <div class="form-group">
                                                        <label for="alamat_lengkap" class="col-form-label">Alamat Lengkap</label>
                                                        <input type="text" name="alamat_lengkap" value="{{ Auth::user()->alamat_lengkap }}" class="form-control" id="alamat_lengkap">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="telepone" class="col-form-label">Telepon</label>
                                                        <input type="text" name="telepon" value="{{ Auth::user()->telepon }}" class="form-control" id="telepone">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="email" class="col-form-label">Email</label>
                                                        <input type="email" name="email" value="{{ Auth::user()->email   }}" class="form-control" id="email">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="email" class="col-form-label">Password</label>
                                                        <input type="password" name="password" class="form-control" value="{{ Auth::user()->password_not_hash   }}" id="email">
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                                                <button type="button" id="simpan-form" class="btn btn-primary">Simpan</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-4">
                                @if (Auth::user()->role != 'AKUN DINAS' && Auth::user()->role != 'PRODUSEN')
                                    <div class="mb-2 col-4">
                                        <h6>Nama</h6>
                                    </div>
                                    <div class="mb-2 col-8">
                                        <p>{{ Auth::user()->name }}</p>
                                    </div>
                                @endif
                                @if(Auth::user()->role == "PRODUSEN")   
                                    <div class="mb-2 col-4">
                                        <h6>Nama Pemilik</h6>
                                    </div>
                                    <div class="mb-2 col-8">
                                        <p>{{ Auth::user()->name }}</p>
                                    </div>
                                    <div class="mb-2 col-4">
                                        <h6>Nama Perusahaan</h6>
                                    </div>
                                    <div class="mb-2 col-8">
                                        <p>{{ Auth::user()->dataProdusen->nama_perusahaan }}</p>
                                    </div>
                                    <div class="mb-2 col-4">
                                        <h6>Nomor Induk Berusaha</h6>
                                    </div>
                                    <div class="mb-2 col-8">
                                        <p>{{ Auth::user()->dataProdusen->nomor_induk_berusaha }}</p>
                                    </div>
                                @endif

                                @if(Auth::user()->role == "AKUN DINAS")
                                    <div class="mb-2 col-4">
                                        <h6>Nama Instansi</h6>
                                    </div>
                                    <div class="mb-2 col-8">
                                        <p>{{ Auth::user()->dinas->nama_instansi }}</p>
                                    </div>
                                @endif
                                <div class="mb-2 col-4">
                                    <h6>Alamat Lengkap</h6>
                                </div>
                                <div class="mb-2 col-8">
                                    <p>{{ Auth::user()->alamat_lengkap }}</p>
                                </div>
                                <div class="mb-2 col-4">
                                    <h6>Telepon</h6>
                                </div>
                                <div class="mb-2 col-8">
                                    <p>{{ Auth::user()->telepon }}</p>
                                </div>
                                <div class="mb-2 col-4">
                                    <h6>Email</h6>
                                </div>
                                <div class="mb-2 col-8">
                                    <p>{{ Auth::user()->email }}</p>
                                </div>
                                <div class="mb-2 col-4">
                                    <h6>Password</h6>
                                </div>
                                <div class="mb-2 col-8">
                                    <?php
                                        $hashedPassword = Auth::user()->password_not_hash;
                                        // Ambil hanya sebagian dari hash, maksimum 10 karakter
                                        // $maskedPassword = substr($hashedPassword, 0, 10) . '...'; 
                                    ?>
                                    <div class="password-field">
                                        <input type="password" class="password-input" value="{{ $hashedPassword }}" readonly>
                                        <span class="toggle-password" onclick="togglePasswordVisibility(this)">
                                            <i class="fas fa-eye"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@push('scripts')
    <script>
        var buttonSubmit = document.getElementById('simpan-form');
        console.log('ok');
        if(buttonSubmit){
            buttonSubmit.addEventListener('click', () => {
                var formEdit = document.getElementById('form-edit');
                if(formEdit){
                    formEdit.submit();
                }
            })
        }
    </script>
    <script>
        function togglePasswordVisibility(icon) {
            var passwordInput = icon.parentNode.querySelector('.password-input');
            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                icon.innerHTML = '<i class="fas fa-eye-slash"></i>';
            } else {
                passwordInput.type = "password";
                icon.innerHTML = '<i class="fas fa-eye"></i>';
            }
        }
    </script>
@endpush
