class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :diarys
  
   # 이미지
    mount_uploader :profileImages , ProfileImagesUploader
end
