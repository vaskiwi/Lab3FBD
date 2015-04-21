var mongoose = require('mongoose'),
	Schema = mongoose.Schema;

var mensajeSchema = new Schema({
	contenido: 		{ type: String }  
});


module.exports = mongoose.model('Mensaje', mensajeSchema);
