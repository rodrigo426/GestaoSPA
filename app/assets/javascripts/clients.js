app.Clients = function() {
  this._input = $('#clients-search-txt');
  this._initAutocomplete();
};

app.Clients.prototype = {
	_initAutocomplete: function() {
  	this._input
    	.autocomplete({
      		source: '/clients',
      		appendTo: '#clients-search-results',
      		select: $.proxy(this._select, this)
    	})
    	.autocomplete('instance')._renderItem = $.proxy(this._render, this);
	},

	_select: function(e, ui) {
  		this._input.val(ui.item.title + ' - ' + ui.item.author);
  		return false;
	}


	_render: function(ul, item) {
	  var markup = [
    	'<span class="img">',
      	'<img src="' + item.photo + '" />',
    	'</span>',
    	'<span class="name">' + item.name + '</span>',
    	'<span class="email">' + item.email + '</span>'
  	  ];
  	  return $('<li>')
    	.append(markup.join(''))
    	.appendTo(ul);
}





};