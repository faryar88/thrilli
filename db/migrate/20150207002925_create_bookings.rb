class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id 
      t.integer :adventure_id 
      t.timestamps 
    end
  end
end
