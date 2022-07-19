import { useEffect, useState } from "react";
import AppointmentItem from './AppointmentItem';
import NewAppointmentForm from './NewAppointmentForm';

function Appointments({user, onCancelAppointment, onUpdateAppointment}) {
   
return (
    <div className="container">
      <h1>{user.name}'s Appointments</h1>
      <div> {user.appointments.map(appointment => <AppointmentItem key={appointment.id} appointment={appointment} onCancelAppointment={onCancelAppointment} onUpdateAppointment={onUpdateAppointment}/>)}</div>
    </div>
   );
}
export default Appointments;