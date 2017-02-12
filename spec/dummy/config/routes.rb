Rails.application.routes.draw do
  mount SmartDataMapper::Engine => "/smart_data_mapper"
end
