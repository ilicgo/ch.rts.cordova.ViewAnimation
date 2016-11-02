var exec = require('cordova/exec');

var _noop = function(){};

module.exports = {

	isEnable : false,

	enable : function  () {

    if(!this.isEnable){
      this.isEnable = true;
      exec(_noop, _noop, "ViewAnimation", "ViewAnimationEnable");
    }
	}
};
