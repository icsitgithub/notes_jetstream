<!DOCTYPE html>
<html>

<head>
    <title>ICS-Notes</title>
</head>

<body>
    <h1>{{ $notes->title }}</h1>
    <h5>
        Contact : {{ $notes->contact->contact_name }}|
        Company : {{ $notes->contact->company->company_name }}|
        Event   : {{ $notes->event->event_name }}
    </h5>
    <p>{!! $notes->body !!}</p>
</body>

</html>
