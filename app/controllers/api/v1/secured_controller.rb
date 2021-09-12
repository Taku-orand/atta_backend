class Api::V1::SecuredController < ApplicationController
  before_action :authenticate_user
      def index
        render json: {
            message: "ID: #{current_user.id}, SUB: #{current_user.sub}"
        }
      end
end
