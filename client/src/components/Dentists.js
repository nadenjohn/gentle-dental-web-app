import DentistItem from "./DentistItem";

function Dentists({dentists, user}) {
    return (
     <div className="container">
         <div>{dentists.map(dentist => <DentistItem  key={dentist.id} dentist={dentist} user={user} />)}</div>
     </div>
    );
  }
  
  export default Dentists;
