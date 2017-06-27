class Sections < ActiveRecord::Migration[5.1]
  def change
    create_table :weeks do |t|
      t.column :name, :string
    end

    create_table :days do |t|
      t.column :name, :string
      t.column :day, :string
      t.column :section_id, :int
      t.column :body, :string
      t.column :page, :int
    end
  end
end
