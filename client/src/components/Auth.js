import React, {useState} from 'react'

function Auth({setUser, setIsAuthenticated}) {
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')
    const [errors, setErrors] =useState([])

    function onSubmit(e){
        e.preventDefault()
        const user = {
            name: username,
            password
        }

        fetch ('/users',{
            method: 'POST',
            headers:{'Content-Type': 'application/json'},
            body:JSON.stringify(user)
        })
        .then(res => {
            if(res.ok){
                res.json()
                .then(user=>{
                    setUser(user)
                    setIsAuthenticated(true)
                })
            } else {
                res.json()
                .then(json => setErrors(json.errors))
            } 
            
        })
    }
    return(
        <>
        <h1>Signup</h1>
        <form onSubmit={onSubmit}>
            <label>
                username
                <input type='text' value={username} onChange={(e)=> setUsername(e.target.value)}/>
            </label>
            <label>
                Password
                <input type='text' value={password} onChange={(e)=> setPassword(e.target.value)}/>
            </label>
            <input type="submit" value="Sign up!" />
        </form>
        </>
    )
}

export default Auth;