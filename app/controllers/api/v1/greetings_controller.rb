class Api::V1::GreetingsController < ApplicationController
  def random
    @greeting = Greeting.all.sample
    render json: @greeting
  end
end
