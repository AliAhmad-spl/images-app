class Image < ApplicationRecord
  has_one_attached :image
 
 def url
  return if image.blank?

  Rails.application.routes.url_helpers.rails_blob_url(image,
                                                        host: Rails.application.credentials.config[:host])
 end
end
