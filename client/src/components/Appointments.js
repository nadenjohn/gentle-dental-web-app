import { useEffect, useState } from "react";
import AppointmentItem from './AppointmentItem'
import NewAppointmentForm from './NewAppointmentForm'

function Appointments({user, onCancelAppointment}) {
   


return (
    <div className="container">
      <h2>{user.name}'s Appointments</h2>
      <div> {user.appointments.map(appointment => <AppointmentItem key={appointment.id} appointment={appointment} onCancelAppointment={onCancelAppointment}/>)}</div>
    </div>
   );
}
export default Appointments;