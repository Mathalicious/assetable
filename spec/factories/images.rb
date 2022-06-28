FactoryBot.define do
  factory :image do
    filename do
      Rack::Test::UploadedFile.new(
        Assetable::Engine.root.join('spec', 'fixtures', 'files', 'test.jpg'),
        'image/jpeg')
    end
  end

  factory :image_web, class: Image do
    name { "File Name" }
    file do
      Rack::Test::UploadedFile.new(
        Assetable::Engine.root.join('spec', 'fixtures', 'files', 'test.jpg'),
        'image/jpeg'
      )
    end
  end
end