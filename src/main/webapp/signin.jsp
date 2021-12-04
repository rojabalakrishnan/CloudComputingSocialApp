

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="google-signin-client_id" content="590501827126-21r968apc4hdh6h2q8je4v3tr9eliqmf.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <title>Sign In</title>
    <style>
        body{
            background-image:url('/images/hashbackgroud.jpeg');
        }
        .g-signin2 {
            justify-items: center;
            display: flex;
            justify-content: center;
        }
        .well {
            text-align : center;
            margin: auto;
            width: 40%;
            padding: 10px;
        }
        .padding {
            padding: 10rem !important
        }
        .card {
            padding: 20px; !important;
            box-shadow: 0 0px 40px 0 rgb(0 0 0 / 30%);
            background-color: rgb(255 255 255);
            transition: 0.5s;
            border-radius: 5%;
        }
    </style>
</head>
<body>
<div class="padding">
    <div class="well">
        <div class="card">
            <h1 class="card-title">Social App</h1>
            <img class="card-img-top img-fluid" src="/images/hash.png" alt="Card image cap">
        <h2> Sign In Here! </h2><br>
        <div class="g-signin2" data-onsuccess="onSignIn" data-theme = "dark" data-width="240" data-height="50" data-longtitle="true"></div>
        </div>
    </div>
</div>
<script>
    function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log('ID: ' + profile.getId());
        console.log('Name: ' + profile.getName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail());
        console.log('id_token: ' + googleUser.getAuthResponse().id_token);

        var redirectUrl = 'login';
        //using jquery to post data dynamically
        var form = $('<form action="' + redirectUrl + '" method="post">' +
            '<input type="text" name="id_token" value="' +
            googleUser.getAuthResponse().id_token + '" />' +
            '</form>');
        $('body').append(form);
        form.submit();
    }
</script>
</body>
</html>