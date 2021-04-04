class AddDesiredTimeToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :desired_time, :datetime
  end
end
