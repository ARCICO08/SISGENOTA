import {createPool} from 'mysql2/promise'

export const pool = createPool({
    host: 'localhost',
    user:'root',
    password:'arcico2002',
    port:'3306',
    database:'conpanydb'
})