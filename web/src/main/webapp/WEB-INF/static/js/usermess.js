/*
*usermess.js
*个人信息页处理函数
*noticeid:关注按钮id，
*usericon:显示用户图像的img标签的id，
*usericonBtn:修改图像按钮id，
*updateid:更新用户详细信息按钮的id，
*messCon:显示用户详细信息的div的id，
*messForm:填写详细信息的表单id，
*flag:用户点击修改信息按钮后控制显示div还是form，
*doc:全区document，
*getElement:获得元素本身的函数，
*noticeHandler:处理关注或取消关注，
*userIconHandler:处理修改用户图像，
*updateUsermessHandler:处理更改用户详细信息
*/

var UsermessUtil = {
	noticeid: 'notice-btn',
	usericon: 'usericon',
	usericonBtn: 'usericon-btn',
	updateid: 'update-user',
	messCtn: 'mess-container',
	messForm: 'mess-form',
	flag: false,
	doc: document,
	getElement: function (id){
		var _this = UsermessUtil;
		return _this.doc.getElementById(id);
	},

	noticeHandler: function (){
		var _this = UsermessUtil;
		var elem = _this.getElement(_this.noticeid);
		var userid = elem.name;
		var ajaxUtil = new AjaxUtil('url', 'get', function (result){
			if (result == true){
				if (elem.innerHTML === '加关注'){
					elem.innerHTML = '已关注';
				}else{
					elem.innerHTML = '加关注';
				}
			}else{
				alert('失败！');
			}
		}, userid);
		ajaxUtil.ajax();
	},

	userIconHandler: function (event){
		var _this = UsermessUtil;
		var elemImg = _this.getElement(_this.usericon);
		var files = EventUtil.getTarget(event).files;
		var reader = new FileReader();
		reader.readAsDataURL(files[0]);
		reader.onload = function (){
			elemImg.src = reader.result;
		};
	},

	updateUsermessHandler: function (){
		var _this = UsermessUtil;
		var messCtn = UsermessUtil.getElement(_this.messCtn);
		var messForm = UsermessUtil.getElement(_this.messForm);
		if (!_this.flag){
			messCtn.style.display = 'none';
			messForm.style.display = 'block';
		}else{
			messCtn.style.display = 'block';
			messForm.style.display = 'none';
		}
		_this.flag = !_this.flag;
	}
};

window.onload = function (){
	var notice = UsermessUtil.getElement(UsermessUtil.noticeid);
	var fileBtn = UsermessUtil.getElement(UsermessUtil.usericonBtn);
	var update = UsermessUtil.getElement(UsermessUtil.updateid);
	EventUtil.addHandler(notice, 'click', UsermessUtil.noticeHandler);
	EventUtil.addHandler(fileBtn, 'change', UsermessUtil.userIconHandler);
	EventUtil.addHandler(update, 'click', UsermessUtil.updateUsermessHandler);
};