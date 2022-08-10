require 'spec_helper'

describe Assetable::Gallery, type: :model do
  
  it { should belong_to(:galleryable) }
  it { should have_many(:asset_attachments) }
  it { should have_many(:assets).through(:asset_attachments) }

end
