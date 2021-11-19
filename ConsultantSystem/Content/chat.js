$(function () {
    var chat = $.connection.chatHub;
    chat.client.addChatMessage = function (connectionId, message) {
        $('#discussion').append('<li class="clearfix"><div class="message-data text-right"><span class="message-data-time">'
            + htmlEncode(connectionId) + '</div><div class="message other-message float-right">' + htmlEncode(message) + '</div></li>');
    };
    var groupMessage = $('.groupMessage').text();
    var usernameReceive = $('.usernameReceive').text();
    var usernameDelivery = $('.usernameMessage').text();
    var delivery = $('.delivery').text();

    $('#startBtn').click(function () {
        $('#groupBtn').removeAttr("hidden");
        $('#message').removeAttr("hidden");
        $('#startBtn').attr("hidden", "hidden");
        $('#message').focus();
        var username = $('#usernamea span').text()
        if (username == "") {
            $('div.input-group-prepend').attr("hidden", "hidden");
            $('#message').attr("hidden", "hidden");
        } else {
            $('#message').removeAttr("hidden");
            $('div.input-group-prepend').removeAttr("hidden");
        }
        chat.invoke("JoinGroup", groupMessage).catch(function (err) {
            return console.error(err.toString());
        });
        event.preventDefault();
    });
    chat.on("UserConnected", function (connectionId) {
        var groupElement = document.getElementById("group");
        var option = document.createElement("option");
        option.text = connectionId;
        option.value = connectionId;
        groupElement.add(option);
    });

    $.connection.hub.start().catch(function (err) {
        return console.error(err.toString());
    });
    //$('#seeMore').click(function () {
    //    $("#seeMore").attr("hidden","hidden");
    //    var currentUrl = window.location.href;
    //    currentUrl += "&seeMore=1";
    //    console.log("currentUrl", currentUrl)
    //    window.location.href= currentUrl;
    //});
    // Start the connection.
    $('#sendMessageBtn').click(function () {
        if ($('#message').val().trim() != "") {
            chat.invoke("Send", groupMessage, delivery + "-" + $('#message').val()).catch(function (err) {
                return console.error(err.toString());
            });
            postMessage(usernameDelivery, usernameReceive, $('#message').val())
            $('#message').val('').focus();
        } else {
            $('#message').focus();
        }
        event.preventDefault();
    });
    $("#message").keypress(function (event) {
        if (event.keyCode === 13) {
            if ($('#message').val().trim() != "") {

                chat.invoke("Send", groupMessage, delivery + "-" + $('#message').val()).catch(function (err) {
                    return console.error(err.toString());
                });
                postMessage(usernameDelivery, usernameReceive, $('#message').val())
                $('#message').val('').focus();
            } else {
                $('#message').focus();
            }
            event.preventDefault();
        }
    });
});
function htmlEncode(value) {
    var encodedValue = $('<div />').text(value).html();
    return encodedValue;
}

function postMessage(delivery, receive, messsage) {
    var chatModel = {
        delivery: delivery,
        receive: receive,
        message: messsage
    }
    console.log(delivery, receive, messsage)
    $.ajax({
        url: '/api/Chat',
        method: 'POST',
        dataType: 'JSON',
        contentType: 'application/json; charset=utf-8',
        data: JSON.stringify(chatModel),
        success: function () {

        },
        error: function (xhr, err) {
            alert(xhr.responseText);
        }
    });
}