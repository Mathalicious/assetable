module Assetable
  class Video < Asset
    mount_uploader :filename, VideoUploader
  end
end
