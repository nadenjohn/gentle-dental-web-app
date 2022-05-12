class AddReasonForVisitToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :reason_for_visit, :string
  end
end
