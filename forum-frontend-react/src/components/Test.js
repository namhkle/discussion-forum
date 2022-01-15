import React from "react";
import { useState } from "react";
import axios from "axios";

const Test = () => {
    const[post,setPosts] = useState([])

    const handleSend = async () => {
        const title = 'Cho Phone Em';
        const body = 'Pham Khanh Hung';
        const res = await axios.post('http://localhost:8081/api/posts',{title, body});
        console.log(res.data);
    }

    return(
        <>
        <button onClick={handleSend}>Send Post</button>
        </>
    )
}

export default Test;