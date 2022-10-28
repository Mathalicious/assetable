module Assetable
  class Video < Asset
    mount_uploader :filename, Assetable::VideoUploader
  end
end
