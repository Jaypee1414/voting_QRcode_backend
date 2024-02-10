const path = require('path')
const multer = require('multer');
const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const app = express();
app.use(express.json());
app.use(express.static(`public`));
app.use(cors());

const storage =multer.diskStorage({
    destination: (req,file, cb)=>{
        cb(null,'public/images')
    },
    filename:(req, file, cb)=>{
        cb(null,file.fieldname + "_" + Date.now() + path.extname(file.originalname));
    }
})

const upload =multer({
    storage: storage
})

const db = mysql.createConnection({
    host: "us-cluster-east-01.k8s.cleardb.net",
    user: "b9a66ea88b0b87",
    password: "2d122827",
    database: "heroku_d477d65f5ab7b33"
    // mysql://b9a66ea88b0b87:2d122827@us-cluster-east-01.k8s.cleardb.net/heroku_d477d65f5ab7b33?reconnect=true
    // mysql://b9a66ea88b0b87:2d122827@us-cluster-east-01.k8s.cleardb.net/heroku_d477d65f5ab7b33?reconnect=true
    // mysql://b9a66ea88b0b87:2d122827@us-cluster-east-01.k8s.cleardb.net/heroku_d477d65f5ab7b33?reconnect=true
})

app.post('/Register' , (req, res) =>{

    const schoolID = req.body.schoolID;
    const fullname = req.body.fullname;
    const address = req.body.address;
    const course = req.body.course;
    const studentNumber = req.body.studentNumber;
    const guardianNumber = req.body.guardianNumber;
    const guardianFullname = req.body.guardianFullname;
    const guardianAddress = req.body.guardianAddress;

    db.query("INSERT INTO studentregister (`schoolID`,`fullname`,`address`,`course`,`studentnumber`,`guardiannumber`,`guardianfullname`,`guardianaddress`) VALUES(?,?,?,?,?,?,?,?)", [schoolID,fullname,address,course,studentNumber,guardianNumber,guardianFullname,guardianAddress], 
    (err, result) =>{
        console.log(err);
    }
    )
})


app.post('/PreRegister' , (req, res) =>{

    const schoolID = req.body.schoolID;
    const fullname = req.body.fullname;
    const address = req.body.address;
    const course = req.body.course;
    const studentNumber = req.body.studentNumber;
    const guardianNumber = req.body.guardianNumber;
    const guardianFullname = req.body.guardianFullname;
    const guardianAddress = req.body.guardianAddress;

    db.query("INSERT INTO preregister (`schoolID`,`fullname`,`address`,`course`,`studentnumber`,`guardiannumber`,`guardianfullname`,`guardianaddress`) VALUES(?,?,?,?,?,?,?,?)", [schoolID,fullname,address,course,studentNumber,guardianNumber,guardianFullname,guardianAddress], 
    (err, result) =>{
        console.log(err);
    }
    );
})

app.post('/NewElection',(req,res)=>{
    const ElectionName = req.body.ElectionName;
    const ElectionYear = req.body.ElectionYear;
    const HeadedName = req.body.HeadedName;
    const Description = req.body.Description;
    db.query("INSERT INTO election (`ElectionName`,`ElectionYear`,`HeadName`,`Description`) VALUES(?,?,?,?)", [ElectionName,ElectionYear,HeadedName,Description], 
    (err, result) =>{
        console.log(err);
    }
    );
})

app.post('/NewPartylist',(req,res)=>{
    const ElectionName = req.body.ElectionName;
    const PartylistName =req.body.PartylistName;
    const Meaning = req.body.Meaning;
    const Lead = req.body.Lead;
    db.query("INSERT INTO partylist (`electionName`,`partylistName`,`partylistMean`,`partylistLead`) VALUES(?,?,?,?)", [ElectionName,PartylistName,Meaning,Lead], 
    (err, result) =>{
        console.log(err);
    }
    );
})

app.post('/NewPosition',(req,res)=>{
    const ElectionName = req.body.electionName;
    const Position=req.body.position;
    db.query("INSERT INTO `position`( `electionName`, `Position`) VALUES (?,?)", [ElectionName,Position], 
    
    (err, result) =>{
        console.log(err);
    }
    );
    
})

app.post('/SubmitForm',upload.single("image"),(req,res)=>{
    const image = req.file.filename;
    const electionName = req.body.electionName;
    const partylistName = req.body.partylistName;
    const position = req.body.position;
    const schoolID = req.body.schoolID;
    const vote = 0;

    db.query("INSERT INTO `candidates`(`electionName`,`partylistName`,`position`,`schoolID`,`vote`,`image`) VALUES (?,?,?,?,?,?)", [electionName,partylistName,position,schoolID,vote,image], 
    
    (err, result) =>{
        console.log(err);
    }
    );
    
})

app.post('/openElection',(req,res)=>{
    const electionName = req.body.electionName;
    const Validation = 0;
    db.query("INSERT INTO `vote`(`electionName`,`Validation`) VALUES (?,?)", [electionName,Validation], 
    (err, result) =>{
        console.log(err);
    }
    );
    
})

app.post('/closeElection',(req,res)=>{
    const electionName = req.body.electionName;
    const Validation = 0;
    db.query("INSERT INTO `vote`(`electionName`,`Validation`) VALUES (?,?)", [electionName,Validation], 
    (err, result) =>{
        console.log(err);
    }
    );
    
})

app.post('/CountVote', (req, res)=>{
    const count = req.body.Count;
    const Vote = req.body.Vote;
    const ElectionName = req.body.ElectionName;
    db.query("UPDATE candidates SET vote = ? WHERE electionName = ? AND schoolID = ?",[count,ElectionName,Vote],
    (err,result)=>{
        console.log(err);
    }
    );
})


app.post('/SubmitVoting', (req, res)=>{
    const schoolID = req.body.schoolID;
    db.query("INSERT INTO studentvote(`schoolID`,`vote`) VALUES(?,?)",[schoolID,1],
    (err,result)=>{
        console.log(err);
    }
    );
})


// app.post('/Login', (req, res) => {
//     const email = req.body.email;
//     const password = req.body.password;  
//     db.query(
//         "SELECT * FROM user_tbl WHERE username=? AND password=?",
//         [email,password],
//         (err,result) =>{
//             if(err){
//              res.send({err: err})
//             }
//             if(result.length>0){
//                 res.send(result)
//             }else{
//                 res.send({message: "user not found"})
//             }
//         }
//     )

// })

app.get('/Vote', (req, res) => {

    db.query("SELECT * FROM vote WHERE Validation=0",
    (err,result)=>{
        if(err){
            res.send({message: "No record found"})
        }else{
            res.send(result)
        }
    })

})


app.get('/', (req, res) => {

    res.send({
      message: "connected"
    })
})

app.get('/PreRegister', (req, res) => {

    db.query("SELECT * FROM preregister ORDER BY user_number ASC",
    (err,result)=>{
        if(err){
            res.send({message: "No record found"})
        }else{
            res.send(result)
        }
    })

})

app.get('/GetRegister', (req, res) => {

    db.query("SELECT * FROM studentregister ORDER BY user_number ASC",
    (err,result)=>{
        if(err){
            res.send({message: "No record found"})
        }else{
            res.send(result)
        }
    })

})

app.get('/Election', (req, res) => {

    db.query("SELECT * FROM election ORDER BY Election_id ASC",
    (err,result)=>{
        if(err){
            res.send({message: "No record found"})
        }else{
            res.send(result)
        }
    })

})

app.get('/ElectionName/:election', (req, res) => {
    const election = req.params.election
    db.query("SELECT * FROM election WHERE Election_id Like ?",election,
    (err,result)=>{
        if(err){
            res.send({message: "No record found"})
        }else{
            res.send(result)
        }
    })

})

app.get('/Partylist', (req, res) => {

    db.query("SELECT * FROM partylist ",
    (err,result)=>{
        if(err){
            res.send({message: "No record found"})
        }else{
            res.send(result)
        }
    })

})

app.get('/Partylist/:id',(req,res)=>{

    const id = req.params.id;

    db.query("SELECT * FROM partylist WHERE electionName Like ?",id,
    (err,result)=>{
        if(err){
            res.send({message: "No record found"})
        }else{
            res.send(result)
        }
    })

})

app.get('/NewCandidate/:id',(req,res)=>{ 
    const id = req.params.id;
    db.query("SELECT * FROM studentregister WHERE schoolID Like ?",id,
    (err,result)=>{
        if(err){
            res.send({message: "No record found"})
        }else{
            res.send(result)
        }
    })

})

app.get('/position/:electionName',(req,res)=>{ 
    const electionName = req.params.electionName;
    db.query(" SELECT * FROM position WHERE electionName Like ?",electionName,
    (err,result)=>{
        if(err){
            res.send({message: "No record found"})
        }else{
            res.send(result)
        }
    })

})

app.get('/Participants/:electionName', (req, res) => {
    const electionName = req.params.electionName;
    const partylistName = req.params.partylistName;
    db.query(" SELECT * FROM candidates  WHERE electionName Like ? ORDER BY candidatesID ASC",electionName,
    (err,result)=>{
        if(err){
            res.send({message: "No record found"})
        }else{
            res.send(result)
        }
    })

})

app.get('/images', (req, res) => {
    db.query(" SELECT * FROM candidates",
    (err,result)=>{
        if(err){
            res.send({message: "No record found"})
        }else{
            res.send(result)
        }
    })

})

app.get('/vote/:election', (req, res) => {
    const electionName = req.params.election;
    db.query(" SELECT * FROM candidates WHERE electionName Like ?ORDER BY candidatesID",electionName,
    (err,result)=>{
        if(err){
            res.send({message: "No record found" })
        }else{
            res.send(result)
        }
    })

})

app.get('/Candidateposition/:electionName', (req, res) => {
    const electionName = req.params.electionName;
    db.query("SELECT * FROM `position` WHERE electionName Like ? ORDER BY `position`.`positionID` ASC", electionName,
    (err,result)=>{
        if(err){
            res.send({message: "No record found" })
        }else{
            res.send(result)
        }
    })

})

app.get('/school', (req, res) => {
    db.query(" SELECT * FROM studentregister",
    (err,result)=>{
        if(err){
            res.send({message: "No record found" })
        }else{
            res.send(result)
        }
    })

})

app.get('/CloseElection/:id', (req, res) => {  
    const electionID = req.params.id; 
    db.query("SELECT * FROM vote WHERE ElectionName Like ?", electionID,
    (err,result)=>{
        if(err){
            res.send({message: "No record found" })
        }else{
            res.send(result)
        }
    })
})


app.get('/Studentvote/:id', (req, res) => {  
    const electionID = req.params.id; 
    db.query("SELECT * FROM studentvote WHERE schoolID Like ?", electionID,
    (err,result)=>{
        if(err){
            res.send({message: "No record found" })
        }else{
            res.send(result)
        }
    })
})

app.get('/AuditLog', (req, res) => {  
    db.query("SELECT * FROM studentvote",
    (err,result)=>{
        if(err){
            res.send({message: "No record found" })
        }else{
            res.send(result)
        }
    })
})

app.put("/update/:id",(req,res)=>{
    const ElectionName = req.params.id;
    db.query("UPDATE vote SET `ElectionName`=? , `Validation`=? WHERE ElectionName=?",[ElectionName, 1 , ElectionName])
})


app.delete('/delete/:id', (req,res)=>{
    const schoolID = req.params.id;
    db.query("DELETE FROM preregister WHERE schoolID=? ", schoolID,
    (err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    }
    )
})


app.delete('/deleteTable', (req,res)=>{
    db.query("DELETE FROM studentvote",
    (err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    }
    )
})

app.listen(process.env.PORT || PORT ,  () =>{ 
    console.log("Listerning 8000")
})

// app.listen(5000 ,  () =>{ 
//     console.log("Listerning 8000")
// })