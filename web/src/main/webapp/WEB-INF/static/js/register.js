/*
*register.js，用于画出登录框处理所有登录有关的事件
*RegisterUnit:
*initOfInput()函数用canvas来画出输入框
*usernameFlag, userpassFlag, reuserpassFlag:分别用来判断输入是否正确
*usernameid, userpassid, reuserpassid, errorid:记录id
*getElement:获得元素对象
*checkUsername:验证用户名是否正确
*checkUserpass:验证密码是否正确
*checkReUserpass:验证第二次密码输入和第一次是否相同
*checkAllRegisetr:验证所有注册信息是否完善
*/

var RegisterUtil = {

	usernameFlag: false,

	userpassFlag: false,

	reuserpassFlag: false,

	usernameid: '',

	userpassid: '',

	reuserpassid: '',

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
		ctx.moveTo(width/3, 380);
		ctx.lineTo(width*(7/9), 380);
		ctx.lineTo(width/3, 378);
		ctx.moveTo(width*(7/9)+2, 382);
		ctx.lineTo(width*(7/9)+2, 420);
		ctx.lineTo(width/3+width/10, 419);
		ctx.moveTo(width*(7/9)-2, 418);
		ctx.lineTo(width/3, 418);
		ctx.moveTo(width/3-4, 416);
		ctx.lineTo(width/3-4, 377);
		//画按钮
		ctx.moveTo(width/3 + width/9, 470);
		ctx.lineTo(width/3 + width/9*1.7, 470);
		ctx.lineTo(width/3 + width/9*1.7, 505);
		ctx.lineTo(width/3 + width/9, 505);
		ctx.lineTo(width/3 + width/9, 470);

		ctx.moveTo(width/3 + width/9*2, 470);
		ctx.lineTo(width/3 + width/9*2.7, 470);
		ctx.lineTo(width/3 + width/9*2.7, 505);
		ctx.lineTo(width/3 + width/9*2, 505);
		ctx.lineTo(width/3 + width/9*2, 470);

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
		var _this = RegisterUtil;
		var input = _this.getElement(_this.usernameid);
		var error = _this.getElement(_this.errorid);
		var username = input.value;
		var reg = /^([a-zA-Z0-9_-])+@[a-zA-Z0-9_-]+((\.[a-z]{2,3}){1,2})$/;
		if (username == ''){
			error.innerHTML = '用户名不能为空';
		}else if (!reg.test(username)){
			error.innerHTML = '邮箱格式错误';
		}else{
			//用ajax验证是否已经被注册
			var ajaxUtil = new AjaxUtil('post', 'url', _this.showMessage, username);
			ajaxUtil.ajax();
		}
	},

	checkUserpass: function (){
		var _this = RegisterUtil;
		var input = _this.getElement(_this.usernameid);
		var error = _this.getElement(_this.errorid);
		var userpass = input.value;
		var reg = /^\w{6,16}$/;
		if (userpass == ''){
			error.innerHTML = '密码不能为空';
		}else if (!reg.test(userpass)){
			error.innerHTML = '密码格式错误';
		}else{
			errorid.innerHTML = '';
			_this.userpassFlag = true;
		}
	},

	checkReUserpass: function (){
		var _this = RegisterUtil;
		var input = _this.getElement(_this.usernameid);
		var reinput = _this.getElement(_this.userpassid);
		var error = _this.getElement(_this.errorid);
		var userpass = input.value;
		var reuserpass = reinput.value;
		if (reuserpass == ''){
			error.innerHTML = '密码不能为空';
		}else if (reuserpass != userpass){
			error.innerHTML = '两次密码不一致';
		}else{
			errorid.innerHTML = '';
			_this.reuserpassFlag = true;
		}
	},

	checkAllRegister: function (){
		var _this = RegisterUtil;
		if (_this.usernameFlag && _this.userpassFlag && _this.reuserpassFlag){
			return true;
		}else{
			var event = EventUtil.getEvent();
			EventUtil.preventDefault(event);
			return false;
		}
	},

	showMessage: function (result){
		var _this = RegisterUtil;
		var error = _this.getElement(_this.errorid);
		if (result == true){
			error.innerHTML = '';
			_this.usernameFlag = true;
		}else{
			error.innerHTML = '用户名已被注册！';
		}
	}

}

//添加页面加载完成后的事件处理函数
window.onload = function (){
	RegisterUtil.initOfInput();
	RegisterUtil.usernameid = 'input-username';
	RegisterUtil.userpassid = 'input-userpass';
	RegisterUtil.reuserpassid = 'input-reuserpass';
	RegisterUtil.errorid = 'error';
	var username = RegisterUtil.getElement('input-username');
	var userpass = RegisterUtil.getElement('input-userpass');
	var reuserpass = RegisterUtil.getElement('input-reuserpass');
	var form = document.forms[0];
	EventUtil.addHandler(username, 'blur', RegisterUtil.checkUsername);
	EventUtil.addHandler(userpass, 'blur', RegisterUtil.checkUserpass);
	EventUtil.addHandler(reuserpass, 'blur', RegisterUtil.checkReUserpass);
	EventUtil.addHandler(form, 'submit', RegisterUtil.checkAllRegister);
};