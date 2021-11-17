$(function () {
    // Reference the auto-generated proxy for the hub.  
    var chat = $.connection.chatHub;
    // Create a function that the hub can call back to display messages.
    chat.client.addNewMessageToPage = function (connectionId, message) {
        $('#discussion').append('<li><strong>' + htmlEncode(connectionId)
            + '</strong>: ' + htmlEncode(message) + '</li>');
    };
    // Set initial focus to message input box.  
    $('#message').focus();
    // Start the connection.
    $.connection.hub.start().done(function () {
        $('#sendMessageBtn').click(function () {
            if ($('#message').val().trim() != "") {
                chat.server.send($('#username').val(), $('#message').val());
                $('#message').val('').focus();
            } else {
                $('#message').focus();
            }
        });
        $("#message").keypress(function (event) {
            if (event.keyCode === 13) {
                if ($('#message').val().trim() != '') {
                    chat.server.send($('#username').val(), $('#message').val());
                    $('#message').val('').focus();
                } else if ($('#message').val().trim() == '') {
                    $('#message').focus();
                }
            }
        });
    });




});
function htmlEncode(value) {
    var encodedValue = $('<div />').text(value).html();
    return encodedValue;
}