require "smart_data_mapper/engine"

module SmartDataMapper
  mattr_accessor :file_class

  def self.file_class
    @@file_class.constantize
  end

  def self.setup
    yield self
  end
end
