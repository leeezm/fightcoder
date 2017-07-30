/*
*problemMess.js用来处理题目信息页面的所有事件;
*language, color...为页面上元素的id信息;
*getElement:获得页面的元素；
*changeLanguage/changeColor/changeRetract为设置编译器的语言，背景色，缩进
*expandHandler:处理编译器的大小
*/

var ProblemMessUtil = function (){
	this.language = 'language';
	this.color = 'color';
	this.retract = 'retract';
	this.expand = 'expand';
	this.editor = ace.edit('editor');
	this.submit = 'submit';
	this.document = document;

	var _this = this;
	var flag = true;

	this.getElement = function (id){
		return _this.document.getElementById(id);
	}

	this.changeLanguage = function (){
		var elem = _this.getElement(_this.language);
		_this.editor.session.setMode(elem.value);  //设置语言
	}

	this.changeColor = function (){
		var elem = _this.getElement(_this.color);
		_this.editor.setTheme(elem.value); //设置背景色
	}

	this.changeRetract = function (){
		var elem = _this.getElement(_this.retract);
		_this.editor.getSession().setTabSize(elem.value);  //设置缩进大小
	}

	this.expandHandler = function (){
		var elem = _this.getElement(_this.expand);
		if (flag){
			elem.className = 'glyphicon glyphicon-resize-small';
			document.querySelector('.problem-desc').style.width = '32%';
			document.querySelector('.problem-code').style.width = '68%';
		}else{
			elem.className = 'glyphicon glyphicon-resize-full';
			document.querySelector('.problem-desc').style.width = '42%';
			document.querySelector('.problem-code').style.width = '58%';
		}
		flag = !flag;
	}
}

window.onload = function () {
	var problemMessUtil = new ProblemMessUtil();
	var def_language = 'ace/mode/c_cpp';
	var def_color = 'ace/theme/xcode';
	var def_retract = 4;
	problemMessUtil.editor.setTheme(def_color); //设置默认背景色为高亮
	problemMessUtil.editor.session.setMode(def_language);  //设置默认语言为C/C++
	problemMessUtil.editor.getSession().setTabSize(def_retract);  //设置默认缩进大小
	var language = problemMessUtil.getElement(problemMessUtil.language);
	var color = problemMessUtil.getElement(problemMessUtil.color);
	var retract = problemMessUtil.getElement(problemMessUtil.retract);
	var expand = problemMessUtil.getElement(problemMessUtil.expand);
	EventUtil.addHandler(language, 'change', problemMessUtil.changeLanguage);
	EventUtil.addHandler(color, 'change', problemMessUtil.changeColor);
	EventUtil.addHandler(retract, 'change', problemMessUtil.changeRetract);
	EventUtil.addHandler(expand, 'click', problemMessUtil.expandHandler);
};
