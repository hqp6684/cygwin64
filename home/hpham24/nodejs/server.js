
var express = require('express');
var app = express();
//File system library
var fs = require('fs');


app.get('/', function(req,res){
    res.send("hello world");
})


app.get('/:dir', function(req,res){
    var dir = '/'+ req.params.dir;
    console.log('Going to read directory /%s', dir);
    fs.readdir( dir, function(err,files){
        if(err){
            return console.error(err);
        }
        
        res.send(JSON.stringify({'Files': files}));        
        // files.forEach(function(file){
        //     console.log(file);
        // });
    });
});



var SETTINGS = function () {
    var data_root = '';

    return {
        data_root : this.data_root,

    }
}

var Datablock = function(type, name){
    this.type = type;
    this.name = name;
}
Datablock.prototype.method_name = function(argument){
     // body...  
};





















app.listen(8082, function(){
  var host = "127.0.0.1";
  console.log(host);
});

