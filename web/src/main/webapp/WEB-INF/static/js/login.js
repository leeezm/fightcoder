/*
*login.js，用于画出登录框处理所有登录有关的事件
*LoginUtil:
*initOfInput()函数用canvas来画出输入框
*usernameFlag, userpassFlag:分别用来判断输入是否正确
*usernameid, userpassid, errorid:用来记录id
*getElement:获得元素对象
*checkUsername:验证用户名是否存在，格式是否正确
*checkUserpass:验证密码是否正确（格式和数据）
*checkAllLogin:验证所有登录信息是否完善
*/

var LoginUtil = {

	usernameFlag: false,

	userpassFlag: false,

	usernameid: '',

	userpassid: '',

	errorid: '',

	initOfInput: function (){
		var formCanvas = document.getElementById('formCanvas');
		var mainbody = document.querySelector('.mainbody');
		var mainbodyStyle = document.defaultView.getComputedStyle(mainbody, null);
		var width = parseFloat(mainbodyStyle.width);
		var height = parseFloat(mainbodyStyle.height);
		formCanvas.width = width;
		formCanvas.height = height;
		var ctx = formCanvas.getContext('2d');
		ctx.beginPath();
		//画出两个输入框
		ctx.moveTo(width/3, 240);
		ctx.lineTo(width*(7/9), 240);
		ctx.lineTo(width/3, 238);
		ctx.moveTo(width*(7/9)+2, 242);
		ctx.lineTo(width*(7/9)+2, 280);
		ctx.lineTo(width/3+width/10, 280);
		ctx.moveTo(width*(7/9)-2, 278);
		ctx.lineTo(width/3, 278);
		ctx.moveTo(width/3-4, 276);
		ctx.lineTo(width/3-4, 237);
		ctx.moveTo(width/3, 310);
		ctx.lineTo(width*(7/9), 310);
		ctx.lineTo(width/3, 308);
		ctx.moveTo(width*(7/9)+2, 312);
		ctx.lineTo(width*(7/9)+2, 350);
		ctx.lineTo(width/3+width/10, 349);
		ctx.moveTo(width*(7/9)-2, 348);
		ctx.lineTo(width/3, 348);
		ctx.moveTo(width/3-4, 346);
		ctx.lineTo(width/3-4, 307);
		//画按钮
		ctx.moveTo(width/3 + width/9, 400);
		ctx.lineTo(width/3 + width/9*1.7, 400);
		ctx.lineTo(width/3 + width/9*1.7, 435);
		ctx.lineTo(width/3 + width/9, 435);
		ctx.lineTo(width/3 + width/9, 400);

		ctx.moveTo(width/3 + width/9*2, 400);
		ctx.lineTo(width/3 + width/9*2.7, 400);
		ctx.lineTo(width/3 + width/9*2.7, 435);
		ctx.lineTo(width/3 + width/9*2, 435);
		ctx.lineTo(width/3 + width/9*2, 400);

		// ctx.shadowOffsetX = 5;
		// ctx.shadowOffsetY = 5;
		ctx.shadowBlur = 50;
		ctx.shadowColor = 'rgba(0, 0, 0, 0.8)';
		ctx.stroke();
	},

	getElement: function (elementid){
		return document.getElementById(elementid);
	},

	checkUsername: function (){
		var _this = LoginUtil;
		var input = _this.getElement(_this.usernameid);
		var error = _this.getElement(_this.errorid);
		var username = input.value;
		var reg = /^([a-zA-Z0-9_-])+@[a-zA-Z0-9_-]+((\.[a-z]{2,3}){1,2})$/;
		if (username == ''){
			error.innerHTML = '用户名不能为空';
		}else if (!reg.test(username)){
			error.innerHTML = '邮箱格式错误';
		}else{
			//用ajax验证是否已存在
			var ajaxUtil = AjaxUtil('post', 'url', _this.showMessage, username);
			ajaxUtil.ajax();
		}
	},

	checkUserpass: function (){
		var _this = LoginUtil;
		var input = _this.getElement(_this.usernameid);
		var error = _this.getElement(_this.errorid);
		var userpass = input.value;
		var reg = /^\w{6,16}$/;
		if (userpass == ''){
			error.innerHTML = '密码不能为空';
		}else if (!reg.test(userpass)){
			error.innerHTML = '密码格式错误';
		}else{
			//用ajax验证密码是否正确
			var ajaxUtil = new ajaxUtil('post', 'url', _this.showMessage, userpass);
			ajaxUtil.ajax();
		}
	},

	checkAllLogin: function (){
		var _this = LoginUtil;
		if (_this.usernameFlag && _this.userpassFlag){
			return true;
		}else{
			var event = EventUtil.getEvent();
			EventUtil.preventDefault(event);
			return false;
		}
	},

	showMessage: function (result){
		var _this = LoginUtil;
		var error = _this.getElement(_this.errorid);
		if (result == true){
			error.innerHTML = '';
			_this.usernameFlag = true;
		}else if (result == 'nameError'){
			error.innerHTML = '用户名不存在！';
		}else{
			error.innerHTML = '密码错误！'
		}
	}
}

//添加页面加载完成后的事件处理函数
window.onload = function (){
	LoginUtil.initOfInput();
	LoginUtil.usernameid = 'input-username';
	LoginUtil.userpassid = 'input-userpass';
	LoginUtil.errorid = 'error';
	var username = LoginUtil.getElement('input-username');
	var userpass = LoginUtil.getElement('input-userpass');
	var form = document.forms[0];
	EventUtil.addHandler(username, 'blur', LoginUtil.checkUsername);
	EventUtil.addHandler(userpass, 'blur', LoginUtil.checkUserpass);
	EventUtil.addHandler(form, 'submit', LoginUtil.checkAllLogin);
};