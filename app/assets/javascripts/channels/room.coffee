App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    
  disconnected: ->
    # Called when the subscription has been terminated by the server
    

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#chatbox').scrollTop($('#chatbox').scrollHeight = 10000000)
    $('#messages').append data['message']

  speak: (message)->
    @perform 'speak', message: message



$(document).on 'keyup', '.emoji-wysiwyg-editor', (event) ->
  if event.keyCode is 13 # return = send
    App.room.speak event.target.innerHTML
    event.target.innerHTML = ''
    event.preventDefault()
    $('#chatbox').scrollTop($('#chatbox').scrollHeight = 10000000)
    $(".audio-play")[0].currentTime = 0
    return $(".audio-play")[0].play()