class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.belongs_to :dogsitter, index: true
      t.belongs_to :dogs, index: true
      t.string :name
      t.timestamps
    end
  end
end
