# Base Asset Class
# ---------------------------------------
# Available Attributes:
# :type
# :name
# :body
# :filename
# :checksum
# :path
# :content_type
# :file_size
# :width
# :height
# :duration
# :bit_rate

module Assetable
  class Asset < ActiveRecord::Base
    has_many :asset_attachments, :as => :assetable, :dependent => :destroy
    has_many :assetable, :through => :asset_attachments

    before_validation :update_asset_attributes

    validates_uniqueness_of :checksum, message: "File has already been uploaded." if Assetable.unique_assets


    # File Type Helpers
    # ---------------------------------------------------------------------

    # Is the asset a image?
    def image?
      self.type == "Assetable::Image"
    end

    # Is the asset a document?
    def document?
      self.type == "Assetable::Document"
    end

    # Is the asset a video?
    def video?
      self.type == "Assetable::Video"
    end

    def external_service?
      self.type == "Assetable::ExternalService"
    end

    # File meta and helpers
    # ---------------------------------------------------------------------

    # Get the file type extension from the filename
    def extension
      self.filename.file.extension
    end

    # Add some custom attributes to the asset
    def update_asset_attributes
      if !self.external_service? and self.present? and self.changed?
        self.content_type = self.filename.file.content_type
        self.file_size = self.filename.file.size
        self.width, self.height = `identify -format "%wx%h" #{self.filename.file.path}`.split(/x/) unless self.document? or self.width? or self.height?
        self.ratio = self.width.to_f / self.height.to_f if self.width.present? and self.height.present?
      end
    end
  end
end
