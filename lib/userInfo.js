'use strict';
import dotenv from 'dotenv';
dotenv.config();

import { consoleBar,timeLog,resSend } from '../config.js';
import {pool} from './connect.js';

//-------------------//

const getAllUsers=async(req,res)=>{
    const query='SELECT * FROME user WHERE name= ?';
    const results={};
    const result = true;
    results.result=true;
    results.error=[];
    results.users=[];

    try{
        const connection=await pool.getConnection(async conn=>conn);
        try{
            const [rows,fields]= await connection.query(query);
            console.log(rows);

        }catch(err){
            results.result=false;
        results.error.push('Query Error');

        }

    } catch(err){
        results.result=false;
        results.error,push('DB Error');

    }
    res.sned(results);
    consoleBar();
    timeLog('GET all-users called//'+JSON.stringify(req.query)+'//'+JSON.stringify(results));
};

export {getAllUsers};