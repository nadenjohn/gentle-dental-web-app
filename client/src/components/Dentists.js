import DentistItem from "./DentistItem";

function Dentists({dentists, user, handlePost}) {
    
    return (
     <body>
          <div>{dentists.map(dentist => <DentistItem  key={dentist.id} dentist={dentist} user={user} handlePost={handlePost} />)}</div>
     </body>
    );
  }
  
  export default Dentists;

