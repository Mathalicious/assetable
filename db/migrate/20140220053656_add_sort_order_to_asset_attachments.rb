class AddSortOrderToAssetAttachments < ActiveRecord::Migration[4.2]
  def change
    add_column :assetable_asset_attachments, :sort_order, :integer, default: 0

    Assetable::AssetAttachment.reset_column_information

    Assetable::Gallery.all.each do |gallery|
      if gallery.asset_attachments.present?
        gallery.asset_attachments.each_with_index do |attachment, index|
          attachment.update_attribute(:sort_order, index)
        end
      end
    end
  end
end
