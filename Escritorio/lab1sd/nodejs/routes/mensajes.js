//File: routes/tvshows.js
module.exports = function(app) {

  var Mensaje = require('../models/mensaje.js');

  //GET - Return all tvshows in the DB
  findAllMensajes = function(req, res) {
  	Mensaje.find(function(err, mensajes) {
  		if(!err) {
        console.log('GET /mensajes')
  			res.send(mensajes);
  		} else {
  			console.log('ERROR: ' + err);
  		}
  	});
  };

  //GET - Return a TVShow with specified ID
  findById = function(req, res) {
  	Mensaje.findById(req.params.id, function(err, mensaje) {
  		if(!err) {
        console.log('GET /mensaje/' + req.params.id);
  			res.send(mensaje);
  		} else {
  			console.log('ERROR: ' + err);
  		}
  	});
  };

  //POST - Insert a new TVShow in the DB
  addMensaje = function(req, res) {
  	console.log('POST');
  	console.log(req.body);

  	var mensaje = new Mensaje({
  		contenido:    req.body.contenido, 
  	});

  	mensaje.save(function(err) {
  		if(!err) {
  			console.log('Created');
  		} else {
  			console.log('ERROR: ' + err);
  		}
  	});

  	res.send(mensaje);
  };

  //PUT - Update a register already exists
  updateMensaje = function(req, res) {
  	Mesnaje.findById(req.params.id, function(err, mensaje) {
  		mensaje.contenido   = req.body.contenido;

  		mensaje.save(function(err) {
  			if(!err) {
  				console.log('Updated');
  			} else {
  				console.log('ERROR: ' + err);
  			}
  			res.send(mensaje);
  		});
  	});
  }

  //DELETE - Delete a TVShow with specified ID
  deleteMensaje = function(req, res) {
  	TVShow.findById(req.params.id, function(err, tvshow) {
  		mensaje.remove(function(err) {
  			if(!err) {
  				console.log('Removed');
  			} else {
  				console.log('ERROR: ' + err);
  			}
  		})
  	});
  }

  //Link routes and functions
  app.get('/mensajes', findAllMensajes);
  app.get('/mensaje/:id', findById);
  app.post('/mensaje', addMensaje);
  app.put('/mensaje/:id', updateMensaje);
  app.delete('/mensaje/:id', deleteMensaje);

}
