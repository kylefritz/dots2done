var Task = Backbone.Model.Extend({
  url: function(){
    var base = "tasks";
    if (this.isNew()) return base;
    return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.id;
  }
});
