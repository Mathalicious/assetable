require 'spec_helper'

describe Assetable::AssetAttachment, type: :model do

  it { should belong_to(:assetable) }
  it { should belong_to(:asset) }
  it { should have_db_index([:assetable_type, :assetable_id]) }

end