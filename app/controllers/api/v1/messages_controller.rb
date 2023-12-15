module Api
  module V1
    class MessagesController < ApplicationController
      def index
        @message = Message.order('RANDOM()').first
        if @message
          render json: { message: @message.text, status: 'Success' }
        else
          render json: { message: 'No messages found', status: 'Error' }
        end
      end
    end
  end
end
