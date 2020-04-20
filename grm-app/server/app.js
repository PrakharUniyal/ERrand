const express = require('express');
const graphqlHTTP = require('express-graphql');
const schema = require('./schema/schema');
const mongoose = require('mongoose');
const cors = require('cors');

const app = express();
const port = 4000;

app.use(cors());

mongoose.connect('mongodb+srv://Prakhar:test123@cluster0-zlcct.mongodb.net/test?retryWrites=true&w=majority')
mongoose.connection.once('open',()=>{
    console.log('connected to database');
});

app.use('/graphql', graphqlHTTP({
    schema: schema,
    graphiql: true,
}));

app.listen(port,() => {
    console.log('now listening on port 4000');
});
