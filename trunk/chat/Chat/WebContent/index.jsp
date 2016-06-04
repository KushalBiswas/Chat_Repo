<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="scripts/chatroom.js"></script>
<script type="text/javascript">
var proxy = CreateProxy('ws://localhost:9080/Chat/chat');

document.addEventListener("DOMContentLoaded", function(event) {
    console.log(document.getElementById('loginPanel'));
    proxy.initiate({
        loginPanel: document.getElementById('loginPanel'),
        msgPanel: document.getElementById('msgPanel'),
        txtMsg: document.getElementById('txtMsg'),
        txtLogin: document.getElementById('txtLogin'),
        msgContainer: document.getElementById('msgContainer')
    });
});
</script>
<link rel="stylesheet" type="text/css" href="content/styles/site.css">

</head>
<body>
<div id="container">
    <div id="loginPanel">
        <div id="infoLabel">Type a name to join the room</div>
        <div style="padding: 10px;">
            <input id="txtLogin" type="text" class="loginInput"
                onkeyup="proxy.login_keyup(event)" />
            <button type="button" class="loginInput" onclick="proxy.login()">Login</button>
        </div>
    </div>
    <div id="msgPanel" style="display: none">
        <div id="msgContainer" style="overflow: auto;"></div>
        <div id="msgController">
            <textarea id="txtMsg" 
                title="Enter to send message"
                onkeyup="proxy.sendMessage_keyup(event)"
                style="height: 20px; width: 100%"></textarea>
            <button style="height: 30px; width: 100px" type="button"
                onclick="proxy.logout()">Logout</button>
        </div>
    </div>
</div>
</body>
</html>