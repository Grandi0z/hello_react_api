class HelloController < ApplicationController
  def index
    random_greeting = Message.order('RANDOM()').first
    render json: { message: random_greeting&.greetings || 'No greetings found' }
  end
end
