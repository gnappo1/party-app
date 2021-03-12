class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.datetime :date
      t.string :name
      t.float :budget
      t.boolean :private

      t.timestamps
    end
  end
end
