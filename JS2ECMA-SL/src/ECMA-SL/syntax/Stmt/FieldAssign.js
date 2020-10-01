const Expr = require("../Expr/Expr"); 
const EmptyLab = require("../Labels/EmptyLab");


function MakeFieldAssign(Stmt){
  class FieldAssign extends Stmt {
    constructor(expressionObject, expressionField, expressionValue) {
      super();
      this.expressionObject = expressionObject;
      this.expressionField = expressionField;
      this.expressionValue = expressionValue;
    }

    toString() {
      return `${this.expressionObject.toString()}[${this.expressionField.toString()}] := ${this.expressionValue.toString()}`;
    }

    interpret(config) {
      config.heap.heap[this.expressionObject.interpret(config.store).value][this.expressionField.interpret(config.store).value] = this.expressionValue.interpret(config);
      
      return {config : config, seclabel: new EmptyLab()};
    }
  }
  FieldAssign.fromJSON = function(obj) {
  	var expr_obj = Expr.fromJSON(obj.obj);
  	var expr_field = Expr.fromJSON(obj.field);
  	var expr_value = Expr.fromJSON(obj.value);
  	return new FieldAssign(expr_obj,expr_field,expr_value);

  }
  return FieldAssign;
}

module.exports = MakeFieldAssign;
