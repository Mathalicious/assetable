FactoryBot.define do
  factory :document, class: Assetable::Document do
    filename do
      Rack::Test::UploadedFile.new(
        Assetable::Engine.root.join('spec', 'fixtures', 'files', 'test.pdf'),
        "application/pdf"
      )
    end
  end

  factory :document_web, class: Assetable::Image do
    name { "File Name" }
    file do
      Rack::Test::UploadedFile.new(
        Assetable::Engine.root.join('spec', 'fixtures', 'files', 'test.pdf'),
        "application/pdf"
      )
    end
  end
end