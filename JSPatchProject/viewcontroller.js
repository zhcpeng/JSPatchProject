defineClass('ViewController' , {
            
    btnClick: function(button){
            console.log("22222:取代原生代码方法")
        self.callFunction();
    },
            
    callFunction: function(){
        console.log("33333:JS调用JS方法")
            
//            var alertView = require('UIAlertView').alloc().initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("Alert","JS Alert", self, "OK", null);
//            alertView.show()
    },
            
//            alertView_willDismissWithButtonIndex: function(alertView, idx) {
//            console.log('click btn ' + alertView.buttonTitleAtIndex(idx).toJS())
//            },
            
            //原本类里必须引入代理后才能用JS调用，此时原生类里代理可以不用实现
            testDelegate : function(){
            console.log("44444:JS取代原生代理方法")
            
            }

})
