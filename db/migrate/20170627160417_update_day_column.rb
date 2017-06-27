class UpdateDayColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :section_id
    add_column :days, :week_id, :int
  end
end
