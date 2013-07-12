class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_type
      t.string :title
      t.text :description
      t.datetime :start_date
      t.string :image

      t.timestamps
    end
  end
end
