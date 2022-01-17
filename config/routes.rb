Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do 
    namespace 'v1' do 
      resources :applications do 
        resources :chats do
           resources :messages
        end 
      end 
    end 
  end  
end
