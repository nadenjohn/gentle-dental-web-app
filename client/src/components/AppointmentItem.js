import {Link} from "react-router-dom";
import {useState} from "react";

function AppointmentItem({appointment, onCancelAppointment, onUpdateAppointment}) {
  const {date, time, duration, dentist_id, user_id, id, reason_for_visit} = appointment;
  const [reasonForVisit, setReasonForVisit] = useState("");

  const handleReasonForVisit = (e) => {
    setReasonForVisit(e.target.value);
  };
    
  function handleCancelAppointment(id) {
    fetch(`/appointments/${id}`, {
      method: "DELETE",
      });
      onCancelAppointment(id);
  }
    
  function handleSubmit(e){
    e.preventDefault();
    setReasonForVisit(e.target.value);
    console.log(e.target.value);

    fetch(`/appointments/${id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        reason_for_visit: reasonForVisit
        }),
      })
      .then((res) => res.json())
      .then((updatedAppointment) => {
        onUpdateAppointment(updatedAppointment);
    })
    };
    
    return (
      <>
       <h3>{date} @ {time}.</h3>
       <h3>Reason for visit: {reason_for_visit}</h3>
        <form onSubmit={handleSubmit}>
          <div>
            <div>
              <label>Reason for vist</label>
              <input type="text" placeholder="Enter reason for visit..." id="reason" onChange={handleReasonForVisit}/>
            </div>
          </div>
        </form>
        <button onClick={handleSubmit} className="form-button" type="submit">Add reason for visit</button>
        <div className="remove-btn">
          <button onClick={() => handleCancelAppointment(appointment.id)}>Cancel Appointment</button>
        </div>
      </>
    );
  }
  
  export default AppointmentItem;