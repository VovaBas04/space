@extends('voyager::bread.edit-add')
@section('javascript')
    @parent
    <script>
    let x_elem = document.getElementsByName('position_x')[0]
    x_elem.value = new URL(window.location.href).searchParams.get('x')??0
    x_elem.disable = true
    let y_elem = document.getElementsByName('position_y')[0]
    y_elem.disable = true
    y_elem.value = new URL(window.location.href).searchParams.get('y')??0

    </script>
@endsection
