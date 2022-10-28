module Assetable
  class AssetsController < ActionController::Base
    respond_to :html, :js

    def index
      @assets = Assetable::Asset.page(params[:page]).per(20)
      @fieldname = params[:fieldname]
      @uploader_id = params[:uploader_id]
    end

    # Insert assets into a gallery or uploader
    def insert
      @fieldname = params[:fieldname]
      @uploader_id = params[:uploader_id]
      @assets = Assetable::Asset.find(params[:asset_ids])
    end

    # Create a new asset
    def create
      # Get the content type
      content_type = params[:file].content_type
      asset_params = { name: params[:file].original_filename, filename: params[:file] }

      # Create the appropriate model
      if content_type.split("/").first == "image"
        @asset = Assetable::Image.new(asset_params)
      elsif content_type.split("/").first == "video"
        @asset = Assetable::Video.new(asset_params)
      elsif content_type.split("/").first == "application"
        @asset = Assetable::Document.new(asset_params)
      end

      # Return
      @fieldname = params[:fieldname]
      @uploader_id = params[:uploader_id]
      if @asset.errors.empty? and @asset.save
        render :create
      else
        render :error
      end
    end

    # Edit an asset will return the edit form
    def edit
      @asset = Assetable::Asset.find(params[:id])
    end

    # Update an asset
    def update
      @asset = Assetable::Asset.find(params[:id])
      @asset.update(permitted_params)
    end

    # Permitted params for the model
    def permitted_params
      params.require(params[:asset_type].demodulize.underscore.to_sym).permit(
        :name,
        :filename,
        :body,
        :content_type,
        :width,
        :height,
        :asset_type,
        :ratio
      )
    end
  end
end