class CreateAngries < ActiveRecord::Migration[5.0]
  def change
    create_table :angries do |t|
      t.text :content

      t.timestamps
    end
  end
end
