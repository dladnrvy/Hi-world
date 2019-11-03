Rails.application.routes.draw do
  
  
  
  root 'login#create'
   
   resources :diary, only: [:index, :new, :create, :edit, :destroy]
   resources :member, only: [:index, :new, :create, :update]
   resources :login, only: [:index, :destroy, :new, :create]
   resources :post, only: [:index, :new, :create, :edit, :destroy]
  
 
  
  get '/login/:id', to: 'login#destroy'
  
  #프로필 수정
  get 'member/profile/:id', to: 'member#profile'
  
  #방명록 작성
  get '/post/new/:id', to: 'post#new'
  
  post '/post/create/:id', to: 'post#create'
  
   # 방명록 수정 
  get '/post/:id/:p_idx', to: 'post#edit'
  
  # 방명록 수정 
  patch '/post/:id', to: 'post#update'
  
  # 방명록 삭제
  get '/post/delete/:id', to: 'post#destroy'
  
  #다이어리 내용
  get '/diary/text/:id/:d_id', to: 'diary#text'
  
  #다이어리 수정
  patch '/diary/:id', to: 'diary#update'
  
  #다이어리 삭제
  get '/delete/:id', to: 'diary#destroy' 
  
  #검색
  get 'searches/result', to: 'searches#result'
  
  #아이디로 들어가기
  get 'searches/search/index/:id', to: 'searches#index'
    
  get '/', to: 'main#index'
  
  #검색 후 다이어리
  get '/diary/search/:id', to: 'diary#searchIndex'
  
  #검색 후 방명록
  get '/post/search/:id', to: 'post#searchIndex'
  
  
  
end
