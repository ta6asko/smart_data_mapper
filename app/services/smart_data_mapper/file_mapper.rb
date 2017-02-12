module SmartDataMapper
  class FileMapper
    attr_reader :headers, :data, :indexes

    def initialize(file, headers)
      @file = file
      @headers = headers
      @data = []
      @indexes = []
      self.map
    end

    def map
      lines = CSV.parse(@file.file.read.gsub("\t", ',').gsub('=', ''))
      lines.shift.each_with_index do |label, index|
        @headers.each do |header|
          @indexes << index if label.to_s.downcase.strip == header.to_s.downcase.strip
        end
      end
      lines.drop(1).each do |line|
        arr = []
        @indexes.each do |index|
          arr << line[index]
        end
        @data << arr
      end
    end
  end
end
