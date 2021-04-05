<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppFrame472CSharp._Default" %>

<html>
    <head>

        <%--<script src="scripts/jquery-3.6.0.js"></script>--%>
        <script src="https://code.jquery.com/jquery-1.6.4.min.js" integrity="sha256-lR1rrjnrFy9XqIvWhvepIc8GD9IfWWSPDSC2qPmPxaU=" crossorigin="anonymous"></script>
<script type="text/javascript" src="scripts/jquery.signalR-2.4.1.min.js"></script>
<script type="text/javascript" src="signalr/hubs"></script>

<script>
    $(function () {

        var logger = $.connection.idologyHub;
        logger.client.logMessage = function (msg) {
            console.log(msg);
        };
        $.connection.hub.start();
    })
</script>

    </head>
    <body>

    </body>
</html>
