Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "events#index"
  resources :events do
    resources :joins do
      collection do
        # デフォルト形式をcsvに設定
        get :csv_download, defaults: { format: 'csv' }
      end
    end
  end
  resources :users

end
