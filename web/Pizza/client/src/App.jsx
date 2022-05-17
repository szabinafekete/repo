import './App.css';
import React, {useState, useEffect} from 'react';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import '../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js';
import '../node_modules/bootstrap/dist/js/bootstrap.min.js';
import axios from 'axios';
import {PizzaCard} from './components/PizzaCard';

function App() {
  const[products, setProducts] = useState([])
  useEffect(()=>{
    const url='http://localhost:5000/pizzak'
    fetchData(url)
  },[])

  const fetchData = async (url)=>{
    const resp = await axios.get(url)
    const data = resp.data
    setProducts(data)
  }
  console.log(products)
  return (
    <div>
      <div className='container-fluid'>
        <div className='banner d-flex justify-content-center align-items-center'>
         <h1>Szeretnéd a "Legjobb pizzát" ebédre, vagy vacsorára?</h1>
        </div>
        <div className="contact">
          <h6>Hívj! ☎ +36 067 2794</h6>
          <h6>Írj! 📧 info@pizza.hu</h6>
        </div>
        <div className="container">
          <div className="row">
            {products.map((obj, i) =><PizzaCard key={i} {...obj}/>)}
          </div>
        </div>
      </div>
    </div>
  );
}

export default App;
