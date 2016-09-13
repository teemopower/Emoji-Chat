class CreateHappies < ActiveRecord::Migration[5.0]
  def change
    create_table :happies do |t|
      t.text :content

      t.timestamps
    end
  end
end
