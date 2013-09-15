class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :is_complete
      t.references :list

      t.timestamps
    end
    add_index :tasks, [:list_id, :title], unique: true
  end
end
