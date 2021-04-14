const express = require('express')
const app = express()
const cors = require('cors')
const pool = require('./db.js')

app.use(express.json())
app.use(cors())

//RESET PASSWORD
app.get('/passwordreset', (req, res) => {
    const { username, newPassword } = req.query

    console.log(username, newPassword)
    const resetPassword = pool.query(
        'UPDATE users SET password = $1 WHERE username = $2',
        [newPassword, username],
        (err, result) => {
            if (err) {
                res.json({ "message": "failed" })
            } else {
                if (result.rowCount === 1) {
                    res.json({ "message": "success" })
                } else {
                    res.json({ "message": "failed" })
                }
            }
        }
    )
})

//LOGIN 
app.post('/login', (req, res) => {
    const { username, password } = req.body

    const resetPassword = pool.query(
        'SELECT EXISTS(SELECT * FROM users WHERE username = $1 AND password = $2);',
        [username, password],
        (err, result) => {
            if (err) {
                res.json({ "message": "failed" })
            } else {
                if (result.rows[0].exists) {
                    res.json({ message: 'success' })
                } else {
                    res.json({ message: 'failed' })
                }
            }
        }
    )
})

app.get('/namesearch', (req, res) => {
    let { name } = req.query

    // const query = "SELECT * FROM person_data WHERE UPPER(first_name) = '" + name.toUpperCase() + "'"
    const query = "SELECT * FROM person_data WHERE UPPER(first_name) LIKE '%" + name.toUpperCase() + "%'"
    console.log(query)

    const namesearch = pool.query(
        query,
        (err, result) => {
            if (err) {
                res.json({ "message": "failed", "error": err })
                console.log(err)
            } else {
                if (result.rows[0]) {
                    res.json(result.rows)
                } else {
                    res.json(result.rows)
                    console.log(result.rows)
                }
            }
        }
    )

})

app.listen(3001, () => {
    console.log('App running on port 3001')
})
