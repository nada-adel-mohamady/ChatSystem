module Api 
    module V1
        class ChatsApplication < ApplicationController
            belongs_to :application
            def create
                chat = Chat.create(chat_params);
                if chat.save
                  render json: {status: 'SUCCESS', message:'Saved chat', data:chat},status: :ok
                else
                  render json: {status: 'ERROR', message:'chat not saved', data:chat.errors},status: :unprocessable_entity
                end  
            end
        end 
    end
end  
