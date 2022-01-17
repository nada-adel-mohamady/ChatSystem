module Api 
    module V1
      class ApplicationsController < ApplicationController
          has_many :chats, dependent: :destroy
          def index 
              applications = Application.order('created_at DESC');
              render json:{status: 'SUCCESS', message: 'Loaded applications', data:applications}, status: :ok
          end 

          def create
              application = Application.create(application_params);
              if application.save
                render json: {status: 'SUCCESS', message:'Saved application', data:application},status: :ok
              else
                render json: {status: 'ERROR', message:'application not saved', data:application.errors},status: :unprocessable_entity
          end 

          def update
            application = Application.find(params[:id])
            if application.update_attributes(application_params)
              render json: {status: 'SUCCESS', message:'Updated application', data:application},status: :ok
            else
              render json: {status: 'ERROR', message:'Application not updated', data:application.errors},status: :unprocessable_entity
            end
          end

          def application_params
            params.permit(:auth_token, :chats_count, :name)
          end
        end 
 
     end 
end 
end 