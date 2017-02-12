class CreateSmartDataMapperFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :smart_data_mapper_files do |t|

      t.timestamps
    end
  end
end
