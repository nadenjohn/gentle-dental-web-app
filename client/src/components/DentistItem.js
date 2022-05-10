import {Link} from "react-router-dom";

function DentistItem({dentist, user}) {
    
    console.log(dentist)


    return (

      <>
       <img style={{width:'100px'}} src={photo}></img>
       <h1>{dentist.name}</h1>
       <h2>{dentist.specialty}</h2>
       <NewAppointmentForm id={id} user={user} dentist={dentist}/>
      
       </>
    );
  }
  
  export default DentistItem;