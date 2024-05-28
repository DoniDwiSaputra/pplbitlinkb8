@extends('frontend.layouts.master')

@section('content')
<section class="container my-5">
    <div class="row">
        @foreach ($produsen as $item)
            <div class="col-4" style="margin-top: 1rem;">
                <div class="card">
                    <div class="card-body">
                    <h5 class="card-title">{{$item->user->name}}</h5>
                    <h6 class="card-subtitle mb-2 text-muted">{{$item->nama_perusahaan}}</h6>
                    <p class="card-text">Nomor Induk Berusaha: {{$item->nomor_induk_berusaha}}</p>
                    <p class="card-text">Alamat Lengkap: {{$item->user->alamat_lengkap}}</p>
                    <p class="card-text">Email: {{$item->user->email}}</p>
                    <p class="card-text">Telepon: {{$item->user->telepon}}</p>
                    <a href="{{url('/monitoring-dinas/laporan-bulanan/dinas/'.$item->user->id)}}" class="d-flex justify-content-center mt-4">
                        <button class="btn btn-primary">
                            Laporan Kinerja
                        </button>
                    </a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</section>
@endsection
