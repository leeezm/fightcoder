/*
*attention.js
*contMessid:为关注容器的id，
*addNoticeHandler:利用事件冒泡处理每个关注或取消关注按钮的事件
*/

var attentionUtil = {
	contMessid: 'content-mess',

	addNoticeHandler: function (){
		var event = EventUtil.getEvent();
		console.log(event);
		var elem = EventUtil.getTarget(event);
		if (elem.innerHTML == '已关注'){
			var ajaxUtil = new AjaxUtil('url', 'get', function (result){
				if (result){
					elem.innerHTML = '加关注';
					elem.className = 'att-item-btn no-notice';
				}else{
					alert('服务器忙！');
				}
			}, '');
			ajaxUtil.ajax();
		}else{
			var ajaxUtil = new AjaxUtil('url', 'get', function (result){
				if (result){
					elem.innerHTML = '已关注';
					elem.className = 'att-item-btn yes-notice';
				}else{
					alert('服务器忙！');
				}
			}, '');
			ajaxUtil.ajax();
		}
	}
};

window.onload = function (){
	var elem = document.getElementById(attentionUtil.contMessid);
	EventUtil.addHandler(elem, 'click', attentionUtil.addNoticeHandler);
}