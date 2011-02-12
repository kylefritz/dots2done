App.Controllers.Tasks = Backbone.Controller.extend({
  routes:{
    "tasks/:id": "edit",
    "":"index",
    "new":"newTask"
  },
  edit:function(id){
    var task = new Task({id:id});
    task.fetch({
      success:function(model,resp){
        new App.Views.Edit({model:doc});
      },
      error:function(){
        new Error({message:"Couldn't find that task."});
        window.location.hash="#";
      }
    });
  },
  index:function(){
    $.getJson('/tasks',function(data){
      if(data){
        var tasks = _(data).map(function(i){return new Task(i);});
      }else{
        new Error({message:"Couldn't load tasks."});
      }
    });
  },
  newTask:function(){
    new App.Views.Edit({model:new Task()});
  }
});
