	/*
	*nav.js
	*getWindowSize()函数用于获得浏览器的可视区域大小，实现了浏览器的兼容
	*initOfBg()函数用canvas画图，画出导航栏的背景
	*/

	function getWindowSize(){
		var pageWidth = window.innerWidth;
		var pageHeight = window.innerHeight;
		if (typeof pageWidth != 'number'){
			//判断页面是否处于标准模式
			if (document.compatMode == 'CSS1compat'){
				pageWidth = document.documentElement.clientWidth;
				pageHeight = document.documentElement.clientHeight;
			}else{ //处于IE6混杂模式下
				pageWidth = document.body.clientWidth;
				pageHeight = document.body.clientHeight;
			}
		}
		return {
			'pageWidth': pageWidth,
			'pageHeight': pageHeight
		}
	}

	function initBgOfNav(){
		var canvas = document.getElementById('canvas');
		var windowSize = getWindowSize();
		canvas.width = windowSize.pageWidth;
		canvas.height = windowSize.pageHeight;
		var ctx = canvas.getContext('2d');
		ctx.beginPath();
		ctx.shadowBlur = 80;
		ctx.shadowColor = 'rgba(0, 0, 0, 0.5)';
		ctx.arc(canvas.width/6, 150, canvas.width/6, Math.PI, 0.8*Math.PI, true);
		ctx.arc(canvas.width/6, 0, canvas.width/6, 0.8*Math.PI, 0.7*Math.PI, true);
		ctx.arc(canvas.width/6, 0,100, 0.7*Math.PI, 0.5*Math.PI, true);
		ctx.arc(canvas.width/6, 0,120, 0.5*Math.PI, 0.4*Math.PI, true);
		ctx.arc(canvas.width/6, 0,120, 0.4*Math.PI, 0.2*Math.PI, true);
		ctx.lineTo(canvas.width*(5/6), 90);
		ctx.arc(canvas.width, 80, 120, Math.PI, 0.7*Math.PI, true);
		ctx.arc(canvas.width, 80, 100, 0.7*Math.PI, 0.5*Math.PI, true);
		ctx.lineTo(canvas.width, 0);
		ctx.lineTo(0, 0);
		var gradient = ctx.createLinearGradient(0, 0, canvas.width/10, 80);
		gradient.addColorStop(0, 'grey');
		gradient.addColorStop(1, 'black');
		ctx.fillStyle = gradient;
		ctx.fill();
	}

	initBgOfNav();
