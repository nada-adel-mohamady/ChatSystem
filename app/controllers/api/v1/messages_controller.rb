module Api 
    module V1
        class MessagesApplication < ApplicationController
            belongs_to :chat
            def create
              message = Message.create()
              if message.save
                render json: {status: 'SUCCESS', message:'Saved message', data:message},status: :ok
              else
                render json: {status: 'ERROR', message:'message not saved', data:message.errors},status: :unprocessable_entity
              end
            end   
        end
    end 
end 
