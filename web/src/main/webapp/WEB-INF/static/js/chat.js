/*
*personalMess.js
*personalMessUtil:为相互私信交流处理模块；
*submitid:为发送按钮id，
*inputDialogid:为聊天输入框id，
*messContainer:为聊天显示框id，
*doc:全局的document，
*getElement:获得元素本身，
*submitHandler:为提交请求的处理
*window.onload:页面加载完成后为提交按钮注册事件 
*/

var personalMessUtil = {
	submitid: 'submit',

	inputDialogid: 'input-dialog',

	messContainerid: 'content-mess',

	doc: document,

	getElement: function (id){
		var _this = personalMessUtil;
		return _this.doc.getElementById(id);
	},

	submitHandler: function (){
		var _this = personalMessUtil;
		var message = _this.getElement(_this.inputDialogid).value;
		var messContainer = _this.getElement(_this.messContainerid);
		if (message){
			var ajaxUtil = new AjaxUtil('url', 'post', function (result){
				if (result == true){
					messContainer.innerHTML += '<div class="mess-item-right">'+
				'<div class="main-container-right">'+
					'<div class="mess-right">'+ message+'</div>'+
					'<div class="pic-right">'+
						'<a href="#"><img src="../static/images/meinv.png" /></a>'+
					'</div>'+
				'</div>'+
				'<div class="date-footer-right">2017-09-12&nbsp;14:56</div>'+
				'</div>'
				}else{
					alert('服务器忙！');
				}
			}, message);
			ajaxUtil.ajax();
		}
	}
};

window.onload = function (){
	var submit = personalMessUtil.getElement(personalMessUtil.submitid);
	EventUtil.addHandler(submit, 'click', personalMessUtil.submitHandler);
}