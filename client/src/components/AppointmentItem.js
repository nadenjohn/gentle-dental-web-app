import {Link} from "react-router-dom";

function AppointmentItem({appointment}) {
    const {date, time, duration, dentist_id, user_id} = appointment
    console.log(appointment)
    return (

      <>
       <h1>{date}</h1>
       <h2>{time}</h2>
      
       </>
    );
  }
  
  export default AppointmentItem;