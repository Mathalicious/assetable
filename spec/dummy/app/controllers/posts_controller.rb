class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(permitted_params)
    if @post.errors.empty? and @post.save
      redirect_to edit_post_path(@post)
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.errors.empty? and @post.update(permitted_params)
      redirect_to edit_post_path(@post)
    else
      render :new
    end
  end


  protected

    # Permitted params for an asset
    def permitted_params
      params.require(:post).permit(
        :title,
        :body,
        :balls,
        image_association_attributes: [:asset_id],
        hero_image_association_attributes: [:asset_id],
        gallery_attributes: [
          :id,
          asset_attachments_attributes: [:id, :asset_id, :_destroy, :sort_order, :name]
        ],
        hadouken_attributes: [
          :id,
          asset_attachments_attributes: [:id, :asset_id, :_destroy, :sort_order, :name]
        ],
        sections_attributes: [
          :id, :title, image_association_attributes: [:asset_id],
          gallery_attributes: [
            :id,
            asset_attachments_attributes: [:id, :asset_id, :_destroy, :sort_order, :name]
          ],
        ]
      )
    end

end
