# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    
  end

  def happy(data)
    Happy.create! content: data['message']
  end

  def sad(data)
    Sad.create! content: data['message']
  end

  def calm(data)
    Calm.create! content: data['message']
  end

  def angry(data)
    Angry.create! content: data['message']
  end
end
