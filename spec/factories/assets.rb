FactoryBot.define do
  factory :asset do
    name { "file name" }
    filename do
      Rack::Test::UploadedFile.new(
        Assetable::Engine.root.join('spec', 'fixtures', 'files', 'test.jpg'),
        'image/jpeg'
      )
    end
  end

  factory :asset_web, class: Image do
    name { "File Name" }
    filename do
      Rack::Test::UploadedFile.new(
        Assetable::Engine.root.join('spec', 'fixtures', 'files', 'test.jpg'),
        'image/jpeg'
      )
    end
  end
end