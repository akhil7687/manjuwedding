class AddCookieIdToWedAttenders < ActiveRecord::Migration[5.0]
  def change
    add_column :wed_attenders, :cookie_id, :string
  end
end
