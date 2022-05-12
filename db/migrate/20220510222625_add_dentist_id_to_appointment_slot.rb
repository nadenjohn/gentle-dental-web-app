class AddDentistIdToAppointmentSlot < ActiveRecord::Migration[6.1]
  def change
    add_column :appointment_slots, :dentist_id, :integer
  end
end
