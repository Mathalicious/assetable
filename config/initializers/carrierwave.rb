if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
end

# override sanitize regex function
# to allow whitespaces in filename
module CarrierWave
  class SanitizedFile
    def self.sanitize_regexp
      @sanitize_regexp ||= /[^\p{Word}\.\-\+\ ]/
    end
  end
end
