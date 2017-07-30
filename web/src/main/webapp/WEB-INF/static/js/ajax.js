/*
*ajax.js
*对ajax的封装，以便以后复用 
*/

var AjaxUtil = function (url, method, handler, data){
	this.url = url; //请求的url
	this.method = method; //请求方法
	this.handler = handler; //成功后的处理函数
	this.data = data; //要提交的数据
	this.ajax = function (){
		var request = this.getRequest();
		request.open(this.method, this.url, true);
		if (this.method == 'get'){
			request.send();
		}else{
			request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            request.send(this.data);
		}
        request.onreadystatechange = function (){
        	if (request.readyState == 4){
        		if (request.status == 200){
        			var result = request.responseText;
        			this.handler(result);
        		}
        	}else{
        		alert('发送失败，请重新发送！');
        	}
        }
	}
};

//获得xhr对象
AjaxUtil.prototype.getRequest = function (){
	var req = null;
	if (XMLHttpRequest){
		req = new XMLHttpRequest();
	}else{
		req = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return req;
}