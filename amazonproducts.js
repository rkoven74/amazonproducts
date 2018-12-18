var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon_DB"
});

connection.connect(function(err) {
  if (err) throw err;
  runSearch();
});

function runSearch() {
  //Fetch all products in the resolution or callback 
  connection.query('SELECT * FROM products', function(err, res) {
   if(err){
     console.log(err)
     return;
   }
   //Loop through products and create a 'template' console log for eaxch producr
   for (var i = 0; i < res.length; i++) {
    console.log('\nID: ' + res[i].id + " $" + res[i].customer_price + '  ' + res[i].product_name);
  }
  inquirer
  .prompt([{
    name: "id",
    type: "input",
    message: "What is the Id of product?"
  },
  {
    name: "quantity",
    type: "input",
    message: "How Many would you like?"
  }])
  .then(function(answer) {
    console.log(answer);
    if(!isNaN(Number(answer.id) && !isNaN(Number(answer.quantity)))){
      
      console.log(res.filter(function(item){
        return item.id === +answer.id;
      }))
      console.log(res.filter(item => item.id === +answer.id))
      //IF So then make DB inquiry to subtract that QTY and return to user the total cost 
      //IF NOT then we tell user sorry cannot sell you an amount I do not have and then run search again so user can choose

    }
    else {
      //invalid data entered we should break out and run this method again
      console.log('Invalid choices please try again....')
      runSearch()
    }
    
  })
  .catch(function(err) {
    console.log(err);
  });

  });
  
}
