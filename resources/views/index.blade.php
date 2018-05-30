<!DOCTYPE html>
<html>
<head>
	<title> Test </title>
</head>
<body>
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Description</th>
            <th>Work time</th>
        </tr>
        @foreach ($users as $user)
            @if($user['total_work'] < 8)
            <tr style="background-color: #333; color: #fff">
                <td>{{$user['id']}}</td>
                <td>{{$user['name']}}</td>
                <td>{{$user['description']}}</td>
                <td>{{$user['total_work_view']}}</td>
            </tr>
            @else
                <tr>
                    <td>{{$user['id']}}</td>
                    <td>{{$user['name']}}</td>
                    <td>{{$user['description']}}</td>
                    <td>{{$user['total_work_view']}}</td>
                </tr>
            @endif
        @endforeach
    </table>
</body>
</html>