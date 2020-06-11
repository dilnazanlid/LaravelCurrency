@extends('layouts.app')

@section('title')Главная@endsection


@section('main-content')
  <h2>Валюты</h2>
  <!-- {{ $data }} -->
  @foreach($data->channel->item as $current)
    <div class="container">
      <div class="row mt-5 border-2 border-color-grey">
        <div class="col-md-4">
          <h4>{{$current->title}}</h4>
        </div>
        <div class="col-md-3">
          <p>{{$current->description}}</p>
        </div>
        <div class="col-md-3">
          @if($current->change > 0)
            <p style="color:green;">{{$current->index}} : {{$current->change}}</p>
          @else
          @if($current->change < 0)
            <p style="color:red;">{{$current->index}} : {{$current->change}}</p>
          @else
            <p style="color:blue;">STABLE</p>
          @endif
          @endif
        </div>
        <div class="col-md-2">
          <h3>{{$current->pubDate}}</h3>
        </div>
      </div>
    </div>
  @endforeach
@endsection
