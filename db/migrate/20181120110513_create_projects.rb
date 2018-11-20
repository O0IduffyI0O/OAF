class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :contractor
      t.string :contact
      t.timestamps
    end
  end
end
