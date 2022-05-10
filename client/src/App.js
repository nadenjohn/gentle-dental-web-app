import React from "react";
import { useState, useEffect } from 'react';
import { Routes, Route, Link } from "react-router-dom";
import './App.css';
import './Skeleton-2.0.4 2/css/normalize.css'
import './Skeleton-2.0.4 2/css/skeleton.css'
import Auth from './components/Auth'
import Login from './components/Login'
import Navigation from './components/Navigation'
import Dentists from  "./components/Dentists"
import Home from "./components/Home"
import Appointments from "./components/Appointments"

function App() {
  const [dentists, setDentists] = useState([])


  const [isAuthenticated, setIsAuthenticated] = useState(false)
  const [user, setUser] = useState(null)

function handleRenderDentists(data){
  setDentists(data)
  console.log(data)
}


  useEffect(() => {
    fetch('/authorized_user')
    .then((res) => {
      if (res.ok) {
        res.json()
        .then((user) => {
          setIsAuthenticated(true);
          setUser(user);
        })
      
      }
    });
  
    fetch('/dentists')
    .then(res => res.json())
    .then(handleRenderDentists);

  },[]);
  if (!isAuthenticated) return <Login error={'please login'} setIsAuthenticated={setIsAuthenticated} setUser={setUser} />;
  return (
    <>
    <Navigation setIsAuthenticated={setIsAuthenticated} setUser={setUser} user={user}/>
    <Routes>
    <Route exact path="/" element={<Home />} />
    <Route exact path="/Dentists" element={<Dentists dentists={dentists} user={user}/>} />
    <Route exact path="/Appointments" element={<Appointments user={user}/>} />

    
    {/* <Route exact path="/signup" element={<Auth/>} />
    <Route exact path="/login" element={<Login/>} /> */}
     
    </Routes>
  </>
  );
}

export default App;