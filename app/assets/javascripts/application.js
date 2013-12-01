// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require avatars_for_rails
//= require_tree .

var roller=function(){
	return{
		init:function(el,ty,sx,ex,d,st){
			e=document.getElementById(el);if(!e){return;}a=e.getElementsByTagName("a");
			for(i=0;i<a.length;i++){
				if(!a[i].id){a[i].id=el.id+i;}
				a[i].n=a[i].o=sx;a[i].en=ex; a[i].ty=ty;				
				if(a[i].ty=='v'){a[i].style.backgroundPosition = '0px '+a[i].n+'px';}
				else if(a[i].ty=='h'){a[i].style.backgroundPosition = a[i].n+'px 0px';}
				else{return;}
				a[i].onmouseover=roller.o;a[i].onmouseout=roller.o;
				a[i].st=Math.abs(Math.abs(ex-sx)/st);a[i].t=d/st;
			}
		},
		o:function(e){
			e=e||window.event;c=e.target!=null?e.target:e.srcElement;
			if(c.nodeName=='A' && e.type=="mouseover"){c.w=c.en;roller.s(c);}
			else if(c.nodeName=='A'){c.w=c.o;roller.s(c);}
		},
		s:function(e){
			if(e.ti){clearTimeout(e.ti);}
			if(Math.abs(e.n-e.w)<e.st){e.n=e.w;}
			else if(e.n<e.w){e.n=e.n+e.st;}
			else if(e.n>e.w){e.n=e.n-e.st;}			
			if(e.ty=='v'){e.style.backgroundPosition = '0px '+e.n+'px';}
			else{e.style.backgroundPosition = e.n+'px 0px';}
			if(e.n==e.w){clearTimeout(e.ti);return;}
			e.ti=setTimeout(function(){roller.s(e)}, e.t);
		}
	}
}();
