Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :shops, only: [:index, :new, :create, :destroy, :show]
  resources :tags, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :admins, only: [:new, :create]
  
  get 'admin_dashboard/index'
  get 'admins/new'
  get 'admins/create'
  get 'admin/shops/index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  namespace :admin do
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
    get 'login', to: 'sessions#new'      # サインインページ
    post 'login', to: 'sessions#create'  # サインインの実行
    delete 'logout', to: 'sessions#destroy' # ログアウト
    get 'dashboard', to: 'dashboard#index' # 管理者ダッシュボード
    resources :shops
    resources :tags
  end
  
  root 'welcome#index'
end
