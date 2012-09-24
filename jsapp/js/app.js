/**************************
* Application
**************************/

App = Em.Application.create();

/**************************
* Models
**************************/
App.Category = Em.Object.extend({
	description: null,
	name: null,
	id: null
});

/**************************
* Views
**************************/
App.TFView = Em.TextField.extend({

});

App.TFView2 = Em.TextField.extend({

});

App.TFView3 = Em.TextField.extend({

});

/**************************
* Controllers
**************************/
App.categoriesArray = Em.ArrayController.create({
	content: [],
	loadCategories: function() {
		var me = this;
		if ( 1==1 ) {
			var url = 'http://192.168.2.106:3002/category_entities/';
			$.getJSON(url,function(data){
				me.set('content', []);
				$(data).each(function(index,value){
					var t = App.Category.create({
						description: value.description,
						name: value.name,
						id: value.id
					});
					me.pushObject(t);
				})
			});

		}
	},
	addCategory: function(){
		$.ajax({
		  type: "POST",
		  url: "http://192.168.2.106:3002/category_entities/",
		  data: { description: this.get('description'), name:  this.get('name') }
		});
		this.loadCategories();
	}
});
App.categoriesArray.loadCategories();