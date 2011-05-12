HolygrailRails31::Application.routes.draw do
  
  resources :demos do
    collection do
      get :goto_index
    end
  end


end
