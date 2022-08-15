module Assetable
  class Image < Asset
    mount_uploader :filename, Assetable::ImageUploader
  end
end
