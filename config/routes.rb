Rails.application.routes.draw do
  
  get 'searches/result'
  root 'login#create'
   
   resources :diary, only: [:index, :new, :create, :edit, :destroy]
   resources :member, only: [:index, :new, :create, :update]
   resources :login, only: [:index, :destroy, :new, :create]
   resources :post, only: [:index, :new, :create, :edit, :destroy]
  
 
  
  get '/login/:id', to: 'login#destroy'
  
  #프로필 수정
  get 'member/profile/:id', to: 'member#profile'
  
  # 방명록 수정 
  patch '/post/:id', to: 'post#update'
  
  # 방명록 삭제
  get '/post/delete/:id', to: 'post#destroy'
 
  #다이어리 내용
  get '/diary/text/:id', to: 'diary#text'
  
  #다이어리 수정
  patch '/diary/:id', to: 'diary#update'
  
  #다이어리 삭제
  get '/delete/:id', to: 'diary#destroy' 
  
    
  get '/', to: 'main#index'
  
 
  
end
