class Diary < ApplicationRecord
   belongs_to :user
   
   # 이미지
    mount_uploader :attachment, AttachmentUploader
end
