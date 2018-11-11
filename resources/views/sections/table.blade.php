<table class="table table-responsive" id="sections-table">
    <thead>
        <tr>
            <th>Historia</th>
        <th>Nombre</th>
        <th>Description</th>
        <th>Url</th>
        <th>Audio</th>
            <th colspan="3">Accion</th>
        </tr>
    </thead>
    <tbody>
    @foreach($sections as $section)
        <tr>
            @if(isset($section->story))
                 <td>{!! $section->story->name !!}</td>

            @else
                <td>Sin Historia</td>

            @endif
            <td>{!! $section->name !!}</td>
            <td>{!! $section->description !!}</td>
            <td><img width='80px' width='80px' src= 'images/{!! $section->url !!}'> </td>
            <td>{!! $section->audio_url !!}</td>
            <td>
                {!! Form::open(['route' => ['sections.destroy', $section->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('sections.show', [$section->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('sections.edit', [$section->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>