module Assetable
  class Document < Asset
    mount_uploader :filename, Assetable::DocumentUploader
  end
end
