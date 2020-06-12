@extends('layouts.app')

@section('title')Главная@endsection


@section('main-content')
  <h2>Валюты к тенге</h2>

<table class="table table-striped text-center">
  <thead>
    <tr>
      <th scope="col">Индекс валюты</th>
      <th scope="col">Курс</th>
      <th scope="col">Дата</th>
    </tr>
  </thead>
  <tbody>
    @foreach($data as $current)
      <tr>
        <td class="text-center"><a href="{{ route('currency-one', $current->name)}}">{{$current->name}}</a></td>
        <td class="text-center">{{$current->rate}}</td>
        <td class="text-center">{{$current->updated_at}}</td>
      </tr>
    @endforeach
  </tbody>
</table>


  <div class="container">
    <div class="row justify-content-center">
      <span>{!! $data->links() !!}</span>
    </div>
  </div>
@endsection
