@extends('layouts.app')

@section('title')Главная@endsection


@section('content')
<div class="container text-center">
  <h2>{{$data->name}}</h2>
  <h1 class="green">1тг = {{$data->rate}}</h1>
  <p>Данные были обновлены: {{$data->updated_at}}</p>
</div>


@endsection
