<table class="table table-responsive" id="stories-table">
    <thead>
        <tr>
            <th>Nombre</th>
            <th> categoria</th>
            <th> Foto</th>
            <th> Banner</th>
            <th colspan="2">Accion</th>
        </tr>
    </thead>
    <tbody>
    @foreach($stories as $story)
        <tr>
            <td>{!! $story->name !!}</td>
            @if(isset($story->category))
                <td>{!! $story->category->name !!}</td>

            @else
                <td>Sin categoria</td>

            @endif
            <td><img width='80px' width='80px' src= 'images/{!! $story->url !!}'> </td>
            <td><img width='80px' width='80px' src= 'images/{!! $story->url_banner !!}'> </td>

            <td>
                {!! Form::open(['route' => ['stories.destroy', $story->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('stories.show', [$story->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('stories.edit', [$story->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Estas seguro?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>