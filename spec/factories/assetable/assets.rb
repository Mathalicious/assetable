FactoryBot.define do
  factory :asset, class: Assetable::Asset do
    name { "file name" }
    filename do
      Rack::Test::UploadedFile.new(
        Assetable::Engine.root.join('spec', 'fixtures', 'files', 'test.jpg'),
        'image/jpeg'
      )
    end
  end

  factory :asset_web, class: Assetable::Image do
    name { "File Name" }
    filename do
      Rack::Test::UploadedFile.new(
        Assetable::Engine.root.join('spec', 'fixtures', 'files', 'test.jpg'),
        'image/jpeg'
      )
    end
  end
end