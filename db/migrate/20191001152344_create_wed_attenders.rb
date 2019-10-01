class CreateWedAttenders < ActiveRecord::Migration[5.0]
  def change
    create_table :wed_attenders do |t|
      t.string :att_name
      t.integer :status

      t.timestamps
    end
  end
end
