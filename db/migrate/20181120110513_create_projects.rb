class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :contractor
      t.string :contact
      t.timestamps
    end
    
    create_table :orders do |t|
      t.belongs_to :project, index: true
      t.integer :n_workers_male
      t.integer :n_workers_female
      t.integer :n_office_staff
      t.integer :price
      t.text :comment
      t.timestamps
    end
  end
end
