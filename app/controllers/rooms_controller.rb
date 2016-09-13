class RoomsController < ApplicationController
  def sad
    @messages = Sad.all
    puts @messages
    puts @messages.class
  end

  def happy
    @messages = Happy.all
    puts @messages
    puts @messages.class
    
  end

  def angry
    @messages = Angry.all
    puts @messages
    puts @messages.class
    
  end

  def calm
    @messages = Calm.all
    puts @messages
    puts @messages.class
    
  end
end
