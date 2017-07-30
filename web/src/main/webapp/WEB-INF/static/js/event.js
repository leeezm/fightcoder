/*
*event.js
*该文件里面封装的是兼容各个浏览器的事件处理代码
*addHandler:添加事件处理函数
*getEvent:获得event对象
*getTarget:获得target属性
*removeHandler:移除事件处理函数
*stopPropagation:阻止事件冒泡
*preventDefault:阻止默认事件发生
*/

var EventUtil = {

	addHandler: function (element, eventType, handler){
		if (element.addEventListener){
			element.addEventListener(eventType, handler, false);
		}else if (element.attachEvent){
			element.attachEvent('on' + eventType, handler);
		}else{
			element['on' + eventType] = handler;
		}
	},

	getEvent: function (){
		return event ? event : window.event;
	},

	getTarget: function (event){
		return event.target || event.srcElement;
	},

	removeHandler: function (element, eventType, handler){
		if (element.removeEventListener){
			element.removeEventListener(eventType, handler, false);
		}else if (element.detaEvent){
			element.detaEvent('on' + eventType, handler);
		}else{
			element['on' + eventType] = null;
		}
	},

	stopPropagation: function (event){
		if (event.stopPropagation){
			event.stopPropagation();
		}else{
			event.cancelBubble = true;
		}
	},

	preventDefault: function (event){
		if (event.preventDefault){
			event.preventDefault();
		}else{
			event.returnValue = false;
		}
	}
};