import {Link} from "react-router-dom";

function AppointmentItem({appointment, onCancelAppointment}) {
    const {date, time, duration, dentist_id, user_id, id} = appointment
    console.log(appointment)
    
    function handleCancelAppointment(id) {
      fetch(`/appointments/${id}`, {
        method: "DELETE",
      });
      onCancelAppointment(id);
    }
    
    
    return (

      <>
       <h1>{date}</h1>
       <h2>{time}</h2>
       <div className="remove-btn">
        <button onClick={() => handleCancelAppointment(appointment.id)}>Cancel Appointment</button>
      </div>
      
       </>
    );
  }
  
  export default AppointmentItem;