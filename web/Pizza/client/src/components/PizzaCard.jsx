import React, {useState} from "react";
import axios from 'axios';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Typography from '@mui/material/Typography';
import Modal from '@mui/material/Modal';

const style = {
    position: 'absolute',
    top: '50%',
    left: '50%',
    transform: 'translate(-50%, -50%)',
    width: 400,
    bgcolor: 'background.paper',
    border: '2px solid #000',
    boxShadow: 24,
    p: 4,
  };

export const PizzaCard=({nev, foto})=>{
    const [detail, setDetail] = useState([]);
    const [open, setOpen] = useState(false);

    const handleClick=()=>{
        const url=`http://localhost:5000/pizzak/${nev}`
        fetchData(url)
        setOpen(true)
    }
    const fetchData = async (url)=>{
        const resp = await axios.get(url)
        const data = resp.data
        setDetail(data)
      }
      const handleClose = () => {
        setOpen(false)
        setDetail([])};
    return(
        <div className="col-md-4 col-sm-6">
            <div className="card">
                <img src={foto} className="card-img-top" alt="foto"/>
                <div className="card-body">
                    <h5 className="card-title">{nev}</h5>
                   <div className="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" onClick={()=>handleClick()}>Részletek</div>
                </div>
            </div>
            {detail.length>0 && (
            <Modal
                open={open}
                onClose={handleClose}
                aria-labelledby="modal-modal-title"
                aria-describedby="modal-modal-description"
            >
                <Box sx={style}>
                <Typography id="modal-modal-title" variant="h6" component="h2">
                    {nev}
                </Typography>
                <Typography id="modal-modal-description" sx={{ mt: 2 }}>
                    {detail.map((obj, i)=>
                                    <div key={i}>🍕 Méret: {obj.meret} cm - {obj.ar} Ft</div>
                                )}
                </Typography>
                <Button onClick={handleClose}>Bezárás</Button>
                </Box>
            </Modal>
            )}                  
        </div>
    )
}