// import React from "react";
// import { useState } from "react";

// function NewAppointmentForm( {user, dentist, handlePost} ){
//     const [duration, setDuration] = useState("")
//     const [appointmentOptionId, setAppointmentOptionId] = useState("")

//     const [formData, setFormData] = useState({
//         date: '',
//         time: '',
//         duration: duration,
//         user_id: '',
//         dentist_id: '',
//     })
//     function onSubmit(e){
//         e.preventDefault()
//         const appointment = {
//             date: formData.date,
//             time: formData.time,
//             duration: duration,
//             user_id: user.id,
//             dentist_id: dentist.id

//         }
//         handlePost(appointment)
//     }
//         return (


//          <form onSubmit={onSubmit}>
        
    
//             <select value={appointmentOptionId} onChange={(e) => setDuration(e.target.value)}>
//                 <option value="">Select Appointment...</option>
//                 {dentist.appointment_slots.map((appointment_option) => (
//                     <option key={appointment_option.id} value={appointment_option.id}>
//                         {appointment_option.date}{appointment_option.time}
//                     </option>
//                 ))}
        
//             </select>
        
//             <input type="submit" value="Schedule Appointment" />
//         </form>
    
//       );
//     }
    
//     export default NewAppointmentForm;