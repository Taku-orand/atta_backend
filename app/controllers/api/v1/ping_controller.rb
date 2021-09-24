class Api::V1::PingController < ApplicationController
    def index
      render json: {
        message: 'Pong'
      }
    end
end
