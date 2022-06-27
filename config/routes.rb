Rails.application.routes.draw do
  get '/messages/mymessages', to: 'messages#my_messages'
  get '/messages/user/:username', to: 'messages#user_messages'
  resources :messages
  scope '/auth' do
    post '/signup', to: 'users#create'
    post '/signin', to: 'users#sign_in'
  end
end
