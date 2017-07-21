class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :position
      t.string :description
      t.integer :jobposting_id
      t.references :board

      t.timestamps
    end
  end
end
