require_dependency 'smart_data_mapper/application_controller'

module SmartDataMapper
  class FilesController < ApplicationController
    before_action :set_file, only: [:show, :import]

    def new
      @file = SmartDataMapper.file_class.new
    end

    def import
      @mapper = SmartDataMapper::FileMapper.new(@file, params[:headers])
      render :import
    end

    def show
    end

    def create
      @file = SmartDataMapper.file_class.new(file_params)

      if @file.save
        redirect_to file_path(@file), notice: 'File was successfully created.'
      else
        render :new
      end
    end

    private

    def set_file
      @file = SmartDataMapper.file_class.find(params[:id])
    end

    def file_params
      params.require(:file).permit(:file)
    end
  end
end
