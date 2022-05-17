import React, {useState, useEffect} from 'react';
import axios from 'axios';
import kep4 from '../img/eu_world.png'

export const Stat=()=>{
    return(
        <>
        <h3 className='text-center'>BEV és PHEV modellek aránya az összes eladott szemékyautóhoz képest <span className="w-100">Európa - 2014-2020</span> </h3>
        <div className="col-md-6">
            <img className="img-fluid border border-white rounded" src={kep4} alt="" />
        </div>
        <div className="col-md-6">
            <ul className="list-group">
                <li className="list-group-item">Európai összesen (E-autó): db</li>
                <li className="list-group-item">Világpiac összesen (hagyományos): db</li>
                <li className="list-group-item">Európai piac aránya: %</li>
                <li className="btn btn-primary">Részletes adatok</li>
            </ul>
        </div>
        </>
    )
}