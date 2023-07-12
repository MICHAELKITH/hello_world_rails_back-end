module Api
    module V1
      class GreetingsController < ApplicationController
        def random
          @random_greeting = Greeting.all.sample
          render json: { greeting: @random_greeting.message }
        end
      end
    end
  end