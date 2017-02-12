module SmartDataMapper
  class File < ApplicationRecord
    mount_uploader :file, FileUploader
  end
end
