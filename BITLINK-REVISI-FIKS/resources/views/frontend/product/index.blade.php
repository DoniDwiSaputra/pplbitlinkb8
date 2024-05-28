@extends('frontend.layouts.master')
@section('content')
<script src="https://kit.fontawesome.com/29d4f5ffc9.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="{{ asset('css/display.css') }}">
    <section class="display-bibit section">
        @if (Auth::user()->role == 'PRODUSEN')
            <div class="container mt-3">
                <div class="row">
                    <div class="col-md-12 px-4">
                        <a href="/tambah-benih" class="btn btn-success">
                            Tambah Data
                        </a>
                    </div>
                </div>
            </div>
        @endif
        <div class="container mt-3">
            <div class="row">
                @foreach ($benih as $item)
                    <div class="col-lg-3" style="">
                        <div class="single-bibit">
                            <a href="/{{ $item->jenis_benih }}/detail/{{ $item->id_benih }}">
                                <div class="image">
                                    <img src="{{ asset($item->foto_benih) }}" alt="#">
                                </div>
                                <div class="content " style="text-align: start">
                                    <h4>{{ $item->varietas }}</h4>
                                    <p class="text-danger">Harga: Rp {{ $item->harga_benih }}</p>
                                    <div class="d-flex justify-content-between">
                                        <p style="font-size: 10px">
                                            <i class="fa-solid fa-location-dot"></i>
                                            {{ $item->akunProdusen->alamat_lengkap }}
                                        </p>
                                        <p class=""><i class="fa-solid fa-box-open"></i> {{ $item->stok_benih }}</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <!-- End Display Bibit Section -->
@stop
