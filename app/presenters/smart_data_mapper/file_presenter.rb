module SmartDataMapper
  class FilePresenter
    def initialize(file)
      @file = file
    end

    def headers
      data = @file.file.read
      lines = CSV.parse(data.gsub("\t", ',').gsub('=', ''))
      lines.shift.map { |label| label.to_s.downcase.strip }
    end
  end
end
