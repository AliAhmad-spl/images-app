class Image < ApplicationRecord
  has_one_attached :image
 
 def url
  return if image.blank?
  
  image.blob.service_url
 end
end
