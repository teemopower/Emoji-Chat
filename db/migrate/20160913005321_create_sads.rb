class CreateSads < ActiveRecord::Migration[5.0]
  def change
    create_table :sads do |t|
      t.text :content

      t.timestamps
    end
  end
end
