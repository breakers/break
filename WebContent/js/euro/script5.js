/*!
 * jQuery Tools v1.2.6 - The missing UI library for the Web
 * 
 * tooltip/tooltip.js
 * tooltip/tooltip.dynamic.js
 * 
 * NO COPYRIGHTS OR LICENSES. DO WHAT YOU LIKE.
 * 
 * http://flowplayer.org/tools/
 * 
 */
(function(a){a.tools=a.tools||{version:"v1.2.6"},a.tools.tooltip={conf:{effect:"toggle",fadeOutSpeed:"fast",predelay:0,delay:30,opacity:1,tip:0,fadeIE:!1,position:["top","center"],offset:[0,0],relative:!1,cancelDefault:!0,events:{def:"mouseenter,mouseleave",input:"focus,blur",widget:"focus mouseenter,blur mouseleave",tooltip:"mouseenter,mouseleave"},layout:"<div/>",tipClass:"tooltip"},addEffect:function(a,c,d){b[a]=[c,d]}};var b={toggle:[function(a){var b=this.getConf(),c=this.getTip(),d=b.opacity;d<1&&c.css({opacity:d}),c.show(),a.call()},function(a){this.getTip().hide(),a.call()}],fade:[function(b){var c=this.getConf();!a.browser.msie||c.fadeIE?this.getTip().fadeTo(c.fadeInSpeed,c.opacity,b):(this.getTip().show(),b())},function(b){var c=this.getConf();!a.browser.msie||c.fadeIE?this.getTip().fadeOut(c.fadeOutSpeed,b):(this.getTip().hide(),b())}]};function c(b,c,d){var e=d.relative?b.position().top:b.offset().top,f=d.relative?b.position().left:b.offset().left,g=d.position[0];e-=c.outerHeight()-d.offset[0],f+=b.outerWidth()+d.offset[1],/iPad/i.test(navigator.userAgent)&&(e-=a(window).scrollTop());var h=c.outerHeight()+b.outerHeight();g=="center"&&(e+=h/2),g=="bottom"&&(e+=h),g=d.position[1];var i=c.outerWidth()+b.outerWidth();g=="center"&&(f-=i/2),g=="left"&&(f-=i);return{top:e,left:f}}function d(d,e){var f=this,g=d.add(f),h,i=0,j=0,k=d.attr("title"),l=d.attr("data-tooltip"),m=b[e.effect],n,o=d.is(":input"),p=o&&d.is(":checkbox, :radio, select, :button, :submit"),q=d.attr("type"),r=e.events[q]||e.events[o?p?"widget":"input":"def"];if(!m)throw"Nonexistent effect \""+e.effect+"\"";r=r.split(/,\s*/);if(r.length!=2)throw"Tooltip: bad events configuration for "+q;d.bind(r[0],function(a){clearTimeout(i),e.predelay?j=setTimeout(function(){f.show(a)},e.predelay):f.show(a)}).bind(r[1],function(a){clearTimeout(j),e.delay?i=setTimeout(function(){f.hide(a)},e.delay):f.hide(a)}),k&&e.cancelDefault&&(d.removeAttr("title"),d.data("title",k)),a.extend(f,{show:function(b){if(!h){l?h=a(l):e.tip?h=a(e.tip).eq(0):k?h=a(e.layout).addClass(e.tipClass).appendTo(document.body).hide().append(k):(h=d.next(),h.length||(h=d.parent().next()));if(!h.length)throw"Cannot find tooltip for "+d}if(f.isShown())return f;h.stop(!0,!0);var o=c(d,h,e);e.tip&&h.html(d.data("title")),b=a.Event(),b.type="onBeforeShow",g.trigger(b,[o]);if(b.isDefaultPrevented())return f;o=c(d,h,e),h.css({position:"absolute",top:o.top,left:o.left}),n=!0,m[0].call(f,function(){b.type="onShow",n="full",g.trigger(b)});var p=e.events.tooltip.split(/,\s*/);h.data("__set")||(h.unbind(p[0]).bind(p[0],function(){clearTimeout(i),clearTimeout(j)}),p[1]&&!d.is("input:not(:checkbox, :radio), textarea")&&h.unbind(p[1]).bind(p[1],function(a){a.relatedTarget!=d[0]&&d.trigger(r[1].split(" ")[0])}),e.tip||h.data("__set",!0));return f},hide:function(c){if(!h||!f.isShown())return f;c=a.Event(),c.type="onBeforeHide",g.trigger(c);if(!c.isDefaultPrevented()){n=!1,b[e.effect][1].call(f,function(){c.type="onHide",g.trigger(c)});return f}},isShown:function(a){return a?n=="full":n},getConf:function(){return e},getTip:function(){return h},getTrigger:function(){return d}}),a.each("onHide,onBeforeShow,onShow,onBeforeHide".split(","),function(b,c){a.isFunction(e[c])&&a(f).bind(c,e[c]),f[c]=function(b){b&&a(f).bind(c,b);return f}})}a.fn.tooltip=function(b){var c=this.data("tooltip");if(c)return c;b=a.extend(!0,{},a.tools.tooltip.conf,b),typeof b.position=="string"&&(b.position=b.position.split(/,?\s/)),this.each(function(){c=new d(a(this),b),a(this).data("tooltip",c)});return b.api?c:this}})(jQuery);
(function(a){var b=a.tools.tooltip;b.dynamic={conf:{classNames:"top right bottom left"}};function c(b){var c=a(window),d=c.width()+c.scrollLeft(),e=c.height()+c.scrollTop();return[b.offset().top<=c.scrollTop(),d<=b.offset().left+b.width(),e<=b.offset().top+b.height(),c.scrollLeft()>=b.offset().left]}function d(a){var b=a.length;while(b--)if(a[b])return!1;return!0}a.fn.dynamic=function(e){typeof e=="number"&&(e={speed:e}),e=a.extend({},b.dynamic.conf,e);var f=a.extend(!0,{},e),g=e.classNames.split(/\s/),h;this.each(function(){var b=a(this).tooltip().onBeforeShow(function(b,e){var i=this.getTip(),j=this.getConf();h||(h=[j.position[0],j.position[1],j.offset[0],j.offset[1],a.extend({},j)]),a.extend(j,h[4]),j.position=[h[0],h[1]],j.offset=[h[2],h[3]],i.css({visibility:"hidden",position:"absolute",top:e.top,left:e.left}).show();var k=a.extend(!0,{},f),l=c(i);if(!d(l)){l[2]&&(a.extend(j,k.top),j.position[0]="top",i.addClass(g[0])),l[3]&&(a.extend(j,k.right),j.position[1]="right",i.addClass(g[1])),l[0]&&(a.extend(j,k.bottom),j.position[0]="bottom",i.addClass(g[2])),l[1]&&(a.extend(j,k.left),j.position[1]="left",i.addClass(g[3]));if(l[0]||l[2])j.offset[0]*=-1;if(l[1]||l[3])j.offset[1]*=-1}i.css({visibility:"visible"}).hide()});b.onBeforeShow(function(){var a=this.getConf(),b=this.getTip();setTimeout(function(){a.position=[h[0],h[1]],a.offset=[h[2],h[3]]},0)}),b.onHide(function(){var a=this.getTip();a.removeClass(e.classNames)}),ret=b});return e.api?ret:this}})(jQuery);
;
jQuery.easing["jswing"]=jQuery.easing["swing"];jQuery.extend(jQuery.easing,{def:"easeOutQuad",swing:function(a,b,c,d,e){return jQuery.easing[jQuery.easing.def](a,b,c,d,e)},easeInQuad:function(a,b,c,d,e){return d*(b/=e)*b+c},easeOutQuad:function(a,b,c,d,e){return-d*(b/=e)*(b-2)+c},easeInOutQuad:function(a,b,c,d,e){if((b/=e/2)<1)return d/2*b*b+c;return-d/2*(--b*(b-2)-1)+c},easeInCubic:function(a,b,c,d,e){return d*(b/=e)*b*b+c},easeOutCubic:function(a,b,c,d,e){return d*((b=b/e-1)*b*b+1)+c},easeInOutCubic:function(a,b,c,d,e){if((b/=e/2)<1)return d/2*b*b*b+c;return d/2*((b-=2)*b*b+2)+c},easeInQuart:function(a,b,c,d,e){return d*(b/=e)*b*b*b+c},easeOutQuart:function(a,b,c,d,e){return-d*((b=b/e-1)*b*b*b-1)+c},easeInOutQuart:function(a,b,c,d,e){if((b/=e/2)<1)return d/2*b*b*b*b+c;return-d/2*((b-=2)*b*b*b-2)+c},easeInQuint:function(a,b,c,d,e){return d*(b/=e)*b*b*b*b+c},easeOutQuint:function(a,b,c,d,e){return d*((b=b/e-1)*b*b*b*b+1)+c},easeInOutQuint:function(a,b,c,d,e){if((b/=e/2)<1)return d/2*b*b*b*b*b+c;return d/2*((b-=2)*b*b*b*b+2)+c},easeInSine:function(a,b,c,d,e){return-d*Math.cos(b/e*(Math.PI/2))+d+c},easeOutSine:function(a,b,c,d,e){return d*Math.sin(b/e*(Math.PI/2))+c},easeInOutSine:function(a,b,c,d,e){return-d/2*(Math.cos(Math.PI*b/e)-1)+c},easeInExpo:function(a,b,c,d,e){return b==0?c:d*Math.pow(2,10*(b/e-1))+c},easeOutExpo:function(a,b,c,d,e){return b==e?c+d:d*(-Math.pow(2,-10*b/e)+1)+c},easeInOutExpo:function(a,b,c,d,e){if(b==0)return c;if(b==e)return c+d;if((b/=e/2)<1)return d/2*Math.pow(2,10*(b-1))+c;return d/2*(-Math.pow(2,-10*--b)+2)+c},easeInCirc:function(a,b,c,d,e){return-d*(Math.sqrt(1-(b/=e)*b)-1)+c},easeOutCirc:function(a,b,c,d,e){return d*Math.sqrt(1-(b=b/e-1)*b)+c},easeInOutCirc:function(a,b,c,d,e){if((b/=e/2)<1)return-d/2*(Math.sqrt(1-b*b)-1)+c;return d/2*(Math.sqrt(1-(b-=2)*b)+1)+c},easeInElastic:function(a,b,c,d,e){var f=1.70158;var g=0;var h=d;if(b==0)return c;if((b/=e)==1)return c+d;if(!g)g=e*.3;if(h<Math.abs(d)){h=d;var f=g/4}else var f=g/(2*Math.PI)*Math.asin(d/h);return-(h*Math.pow(2,10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g))+c},easeOutElastic:function(a,b,c,d,e){var f=1.70158;var g=0;var h=d;if(b==0)return c;if((b/=e)==1)return c+d;if(!g)g=e*.3;if(h<Math.abs(d)){h=d;var f=g/4}else var f=g/(2*Math.PI)*Math.asin(d/h);return h*Math.pow(2,-10*b)*Math.sin((b*e-f)*2*Math.PI/g)+d+c},easeInOutElastic:function(a,b,c,d,e){var f=1.70158;var g=0;var h=d;if(b==0)return c;if((b/=e/2)==2)return c+d;if(!g)g=e*.3*1.5;if(h<Math.abs(d)){h=d;var f=g/4}else var f=g/(2*Math.PI)*Math.asin(d/h);if(b<1)return-.5*h*Math.pow(2,10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g)+c;return h*Math.pow(2,-10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g)*.5+d+c},easeInBack:function(a,b,c,d,e,f){if(f==undefined)f=1.70158;return d*(b/=e)*b*((f+1)*b-f)+c},easeOutBack:function(a,b,c,d,e,f){if(f==undefined)f=1.70158;return d*((b=b/e-1)*b*((f+1)*b+f)+1)+c},easeInOutBack:function(a,b,c,d,e,f){if(f==undefined)f=1.70158;if((b/=e/2)<1)return d/2*b*b*(((f*=1.525)+1)*b-f)+c;return d/2*((b-=2)*b*(((f*=1.525)+1)*b+f)+2)+c},easeInBounce:function(a,b,c,d,e){return d-jQuery.easing.easeOutBounce(a,e-b,0,d,e)+c},easeOutBounce:function(a,b,c,d,e){if((b/=e)<1/2.75){return d*7.5625*b*b+c}else if(b<2/2.75){return d*(7.5625*(b-=1.5/2.75)*b+.75)+c}else if(b<2.5/2.75){return d*(7.5625*(b-=2.25/2.75)*b+.9375)+c}else{return d*(7.5625*(b-=2.625/2.75)*b+.984375)+c}},easeInOutBounce:function(a,b,c,d,e){if(b<e/2)return jQuery.easing.easeInBounce(a,b*2,0,d,e)*.5+c;return jQuery.easing.easeOutBounce(a,b*2-e,0,d,e)*.5+d*.5+c}});
// jScroll
(function($){$.fn.jScroll=function(e){var f=$.extend({},$.fn.jScroll.defaults,e);return this.each(function(){var a=$(this);var b=$(window);var c=new location(a);b.scroll(function(){a.stop().animate(c.getMargin(b),f.speed)})});function location(d){this.min=d.offset().top;this.originalMargin=parseInt(d.css("margin-top"),10)||0;this.getMargin=function(a){var b=d.parent().height()-d.outerHeight();var c=this.originalMargin;if(a.scrollTop()>=this.min)c=c+f.top+a.scrollTop()-this.min;if(c>b)c=b;return({"marginTop":c+'px'})}}};$.fn.jScroll.defaults={speed:"slow",top:10}})(jQuery);
;
(function(c){function p(){var d,a={height:h.innerHeight,width:h.innerWidth};if(!a.height&&((d=i.compatMode)||!c.support.boxModel))d=d==="CSS1Compat"?k:i.body,a={height:d.clientHeight,width:d.clientWidth};return a}var m={},e,a,i=document,h=window,k=i.documentElement,j=c.expando;c.event.special.inview={add:function(a){m[a.guid+"-"+this[j]]={data:a,$element:c(this)}},remove:function(a){try{delete m[a.guid+"-"+this[j]]}catch(c){}}};c(h).bind("scroll resize",function(){e=a=null});setInterval(function(){var d=
c(),j,l=0;c.each(m,function(a,b){var c=b.data.selector,e=b.$element;d=d.add(c?e.find(c):e)});if(j=d.length){e=e||p();for(a=a||{top:h.pageYOffset||k.scrollTop||i.body.scrollTop,left:h.pageXOffset||k.scrollLeft||i.body.scrollLeft};l<j;l++)if(c.contains(k,d[l])){var g=c(d[l]),f={height:g.height(),width:g.width()},b=g.offset(),n=g.data("inview"),o;if(!a||!e)break;b.top+f.height>a.top&&b.top<a.top+e.height&&b.left+f.width>a.left&&b.left<a.left+e.width?(o=a.left>b.left?"right":a.left+e.width<b.left+f.width?
"left":"both",f=a.top>b.top?"bottom":a.top+e.height<b.top+f.height?"top":"both",b=o+"-"+f,(!n||n!==b)&&g.data("inview",b).trigger("inview",[!0,o,f])):n&&g.data("inview",!1).trigger("inview",[!1])}}},250)})(jQuery);;
// remove layerX and layerY to prevent console warnings in chrome/chromium
var all = jQuery.event.props,
		len = all.length,
		res = [];
while (len--) {
	var el = all[len];
	if (el != 'layerX' && el != 'layerY') res.push(el);
}
jQuery.event.props = res;



/* *
*---- Google Maps
*
**/

function initialize_gmap() {

	// d-dorf
	if (jQuery('body').hasClass('page-node-1139') || jQuery('body').hasClass('page-node-1433') || jQuery('body').hasClass('page-node-1451') || jQuery('body').hasClass('page-node-1252')) {
    	var ewlocation = new google.maps.LatLng(51.24363, 6.716293);
	}

	// berlin
	if (jQuery('body').hasClass('page-node-1142') || jQuery('body').hasClass('page-node-1432') || jQuery('body').hasClass('page-node-1452') || jQuery('body').hasClass('page-node-1253')) {
    	var ewlocation = new google.maps.LatLng(52.511481, 13.406451);
	}

	// salzburg
	if (jQuery('body').hasClass('page-node-1140') || jQuery('body').hasClass('page-node-1434') || jQuery('body').hasClass('page-node-1456') || jQuery('body').hasClass('page-node-1254')) {
    	var ewlocation = new google.maps.LatLng(47.798216, 13.008229);
	}

	// zuerich
	if (jQuery('body').hasClass('page-node-1141') || jQuery('body').hasClass('page-node-1437') || jQuery('body').hasClass('page-node-1454') || jQuery('body').hasClass('page-node-1251')) {
    	var ewlocation = new google.maps.LatLng(47.403505, 8.550838);
	}

	// plovdiv
	if (jQuery('body').hasClass('page-node-1143') || jQuery('body').hasClass('page-node-1438') || jQuery('body').hasClass('page-node-1457') || jQuery('body').hasClass('page-node-1255')) {
    	var ewlocation = new google.maps.LatLng(42.136431, 24.753837);
	}

    var myOptions = {
      zoom: 16,
      center: ewlocation,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById('location-map'),
        myOptions);

	var marker = new google.maps.Marker({
		position: ewlocation,
		map: map,
		title:"Euroweb Internet GmbH"
	});
 }
 /* end of Google Maps */


/* *
*---- Google Analytics Tracking Event
*
**/
function recordOutboundLink(link, category, action) {
	try {

		_gaq.push(['_trackEvent', category, action ]);

		if(link.href){
			setTimeout('document.location = "' + link.href + '"', 100);
		}

		return false;

	}catch(err){ return false; }
}
 /* end of Google Analytics Tracking Event */


jQuery(document).ready(function() {
		if (jQuery('#location-map').length > 0) {
			initialize_gmap();
		}

		/* *
		*---- Mobile Stuff
		*
		**/

			var windowWidth = jQuery(window).width();
			var windowHeight = jQuery(window).height();
			//var hiddenElements = 'a[href$="login"],a[href$="faq"],a[href$="seo-glossar"],a[href$="#"],a[href$="euroweb.de"],a[href$="presse#content-footer"]';
			var toAdd = jQuery('#add').find('li');

			function viewportSnippet(event) {
				jQuery('#wrapper').append('<div id="getViewport" style="position:fixed;top:0;z-index:1000;right:0;background:white;width:150px;height:50px;">Breite '+ windowWidth+'<br />HÃ¶he '+ windowHeight +'</div>')
			}
			//viewportSnippet()
			function toggleNavi() {
				jQuery('#main').click(function(event) {
				toAdd = toAdd.addClass('newElement');
				windowWidth = jQuery(window).width();
				if (windowWidth <= 480) {
					if(!(jQuery(this).hasClass('opened'))){
						jQuery('#main').find('ul').append(toAdd);
						jQuery('#main').find('li').show(0,function() {
							jQuery('#main').addClass('opened').find('ul').slideDown(300);
						});
					}
					else  {
						jQuery(this).find('li').slideUp(150);
						jQuery(this).find('ul').slideUp(300,function() {
							jQuery('#main').removeClass('opened').find('li.newElement').remove();
							jQuery('#add').find('ul').append(toAdd).find('li:nth-child(2),li:nth-child(4)').show();
						});
					}
				}
				else if (windowWidth >= 481) return true;
				});
			}

			if(windowWidth < 991 ) {
				jQuery('#bwda,#css-design-award').click(function(event) {
					event.preventDefault();
					return false;
				});
				jQuery('#bwda,#css-design-award').mouseenter(function() {
					jQuery(this).removeAttr('title')})
				.mouseleave(function() {
					jQuery(this).attr('title',jQuery(this).text());
				});
			}

			function vidResize() {
				var toResize = jQuery('','.');
			}

			toggleNavi();
				/*if (windowWidth <= 480) {
					jQuery(hiddenElements,'#node-1045 ul > li').each(function() {
						jQuery(this).parent('li').hide();
					});
 				}*/

			jQuery(window).resize(function() {
				windowWidth = jQuery(window).width();
				if (windowWidth <= 480) {
					jQuery('#main').find('ul').hide().end().removeClass('opened');
					jQuery('#add').find('nav').find('ul').find('li').hide().end().find('li:nth-child(2),li:nth-child(4)').show();
 				}
				else if (windowWidth >= 481) {
					/*jQuery(hiddenElements,'#node-1045 ul > li').each(function() {
						jQuery(this).parent('li').slideDown(350);
					});*/
					jQuery('#main').removeClass('opened').find('li').css('display','block');
					jQuery('#main').find('ul').show();
					jQuery('#add nav ul').append(toAdd).find('li').show();
				}

				resizeHeaderSlides();
			});

		/* *
		*---- End of Mobile Stuff
		*
		**/


		/* *
		*---- ScrollToTop
		*
		**/



		if (!jQuery.browser.msie) {
			// Vars
			var f = jQuery(window);

			// TopLink
			jQuery('body').append('<a id="toplink" href="#top"><div id="arrow-box"><div id="arrow"></div></div></a>');
			jQuery('body').prepend('<a name="top" id="top"></a>');
			jQuery('body').prepend('<div id="text"></div>');

			//FadeIn
			f.scroll(function(){
				var scrollPosition = jQuery(window).scrollTop();
				if(scrollPosition>=300) {
					jQuery('#toplink').fadeIn(1000);
				}else{
					jQuery('#toplink').fadeOut(1000);
				}
			});


			//ScrollTop
			jQuery('#toplink').click(function(e){
				var offset = jQuery('html').position();
				jQuery('html,body').animate({
					scrollTop: offset.top
				},2000);
				return false;
			});
		}
		/* ---- End ScrollToTop ---- */



		/* *
		*---- Maps Animate
		*
		**/

		karte();
		//jQuery('body.logged-in').append('<div id="infoboxfooter"></div>');

		jQuery(window).scroll(function(){
			var bodyheight = jQuery('html').height();
			var windowheight = jQuery(window).height();
			var inview = bodyheight - windowheight - 100;
			var scrollTopwert = jQuery(window).scrollTop();
			//jQuery('#infoboxfooter').html('Inview:'+inview+'; ScrollTop:'+scrollTopwert);
			if(inview < scrollTopwert){
				karte();
			}
		});

		jQuery('.duesseldorf, .oesterreich, .schweiz, .bulgarien').css('opacity','0');

		function karte () {

			//animate
			jQuery('.duesseldorf').delay(2000).animate({
				//top : '+=20',
				opacity: '1.0'
			},300)

			jQuery('.oesterreich').delay(2200).animate({
				//top : '+=20',
				opacity: '1.0'
			},300)

			jQuery('.schweiz').delay(2400).animate({
				//top : '+=20',
				opacity: '1.0'
			},300)

			jQuery('.bulgarien').delay(2600).animate({
				//top : '+=20',
				opacity: '1.0'
			},300)
		}
		/* ---- End Maps Animate ---- */



		/* *
		*---- Animate contact page anchor navigation
		*
		**/
		jQuery('a[href^="#"]').click(function(e) {
				e.preventDefault();
				var $anchor = jQuery(this);


				if (jQuery('.page-kontakt').length || jQuery('.page-contact').length) {
						var $ap = jQuery(this).children('img').attr('alt');

						//jQuery('#edit-submitted-eingabefelder-ansprechpartner option:selected').removeAttr('selected');
						jQuery('#edit-submitted-eingabefelder-ansprechpartner option:contains("'+ $ap +'")').each(function() {
								jQuery(this).attr('selected', 'selected');
						});
						jQuery('#edit-submitted-eingabefelder-ansprechpartner').trigger('change');
				}

				jQuery('html, body').stop().animate({
						scrollTop: jQuery($anchor.attr('href')).offset().top
				}, 2500,'easeInOutExpo');

		});

		/* ---- End contact page ---- */


		/* *
		*---- History animation
		*
		**/
		var $historieY = jQuery('#historie-year');

		if ($historieY.length) {
				// Year scrolling animation
				jQuery('#block-views-presse-historie').prepend('<span id="historie-prev" title="ZurÃ¼ckblÃ¤ttern">Jahr vor</span><span id="historie-next" title="vorblÃ¤ttern">Jahr zurÃ¼ck</span>');

				/*jQuery('#historie-year a, #historie-month a').addClass('use-ajax').click(
						function(e) {
							e.preventDefault();

							var updatePosts = function(data) {
								jQuery('#historie').html(data.data);
								Drupal.attachBehaviors(jQuery('#historie'));
							}

							jQuery.ajax({
								type: 'POST',
								url: 'unternehmen?year=2011&month=12',
								success: updatePosts,
								dataType: 'json',
								data:'js=1'
							});
						}
				);*/

				var current = 1;

				jQuery('#historie-prev').click(function() {
						if (current < $historieY.children('li').length - 7) {
								$historieY.children('li').each(function(index) {
										jQuery(this).animate({ "left": parseInt(jQuery(this).css('left')) - jQuery(this).outerWidth() + 'px' }, 550)
										//jQuery(this).css({left: parseInt(jQuery(this).css('left')) - jQuery(this).outerWidth() + 'px'});
								});
								current++;
						}
				});

				jQuery('#historie-next').click(function() {
						if (current > 1) {
								$historieY.children('li').each(function(index) {
										jQuery(this).animate({"left": parseInt(jQuery(this).css('left')) + jQuery(this).outerWidth() + 'px'}, 550);
										//jQuery(this).css({left: parseInt(jQuery(this).css('left')) + jQuery(this).outerWidth() + 'px'});
								});
								current--
						}
				});


		}

		/* ---- End history animation ---- */



		/* *
		*---- Service infographic
		*
		**/
		function hoverHandler(e){
				switch(e.type){
					case 'mouseenter':
						var animatedElement = jQuery(this);
						jQuery(animatedElement).addClass('details').stop().fadeTo(800,1);
						if (jQuery(animatedElement).is('#Ihr-Auftrag')) {
								// call of recursive function
								animateChildren(animatedElement);
						}
						break;
					case 'mouseleave':
						jQuery(this).removeClass('details').stop().fadeTo(200,0);
						break;s
				}

		}

		function animateChildren(element){
				// if element is an event just get the parent of the binded element
				if(jQuery(element).length < 1) element = jQuery(this).parent();
				// define a null callback to abort the next animation
				var callback = (element.hasClass('details')) ? animateChildren: null;
				// animation
				element.children('img')
					.animate({ "top": "+=6px" }, 550)
					.animate({ "top": "-=6px" }, 550, 'swing', callback);
		}
		/* ---- End service infographic ---- */



		/* *
		*---- Produkte infographic
		*
		**/

		var $infobubbles = jQuery('#produkte-infographic ul li');
        var aniIndex = 0;
        var timer = setInterval(bubbleAnimation, 3000);

		$infobubbles.hover(function() {
            jQuery(this).showIconHover();
        },function() {
			jQuery(this).hideIconHover();
		});

        function bubbleAnimation() {
            var $elem = jQuery($infobubbles.get(aniIndex));
            $elem.playAnimation();

            aniIndex++;

            if (aniIndex >= $infobubbles.length) {
                clearInterval(timer);
                $infobubbles.last().hideIconHover();
            }

        }

/*
		setTimeout(step1, 3000);

		function step1() {
			var fadeInAni = jQuery('#produkte-infographic li[title=Website]');
			fadeInAni.showIconHover();
			setTimeout(step2, 2000);
		}

        function step2() {
            var fadeOutAni = jQuery('#produkte-infographic li[title=Website]');
            fadeInAni.hideIconHover();

            var fadeInAni = jQuery('#produkte-infographic li[title=Mobile]');
            fadeInAni.showIconHover();
            setTimeout(step3, 2000);
        }

		function step3() {
			var fadeOutAni = jQuery('#produkte-infographic li[title=Mobile]');
			jQuery(fadeOutAni).stop(true,true).fadeTo(500,0);
			jQuery('.caption','figcaption').stop(true,true).fadeTo(500,0);

			var fadeInAni = jQuery('#produkte-infographic li[title=SEO]');
			var captionInfo = jQuery( '#' + jQuery(fadeInAni).attr('title') );
			jQuery(captionInfo).stop(true,true).fadeTo(750,1).siblings(showCaption).stop(true,true).fadeTo(500,0);
			jQuery(fadeInAni).stop(true,true).fadeTo(750,1);
			setTimeout(step4, 2000);
		}

		function step4() {
			var fadeOutAni = jQuery('#produkte-infographic li[title=SEO]');
			jQuery(fadeOutAni).stop(true,true).fadeTo(500,0);
			jQuery('.caption','figcaption').stop(true,true).fadeTo(500,0);

			var fadeInAni = jQuery('#produkte-infographic li[title=Rundgang]');
			var captionInfo = jQuery( '#' + jQuery(fadeInAni).attr('title') );
			jQuery(captionInfo).stop(true,true).fadeTo(750,1).siblings(showCaption).stop(true,true).fadeTo(500,0);
			jQuery(fadeInAni).stop(true,true).fadeTo(750,1);
			setTimeout(step5, 2000);
		}

		function step5() {
			var fadeOutAni = jQuery('#produkte-infographic li[title=Rundgang]');
			jQuery(fadeOutAni).stop(true,true).fadeTo(500,0);
			jQuery('.caption','figcaption').stop(true,true).fadeTo(500,0);

			var fadeInAni = jQuery('#produkte-infographic li[title=Video]');
			var captionInfo = jQuery( '#' + jQuery(fadeInAni).attr('title') );
			jQuery(captionInfo).stop(true,true).fadeTo(750,1).siblings(showCaption).stop(true,true).fadeTo(500,0);
			jQuery(fadeInAni).stop(true,true).fadeTo(750,1);
			setTimeout(step6, 2000);
		}

		function step6() {
			var fadeOutAni = jQuery('#produkte-infographic li[title=Video]');
			jQuery(fadeOutAni).stop(true,true).fadeTo(500,0);
			jQuery('.caption','figcaption').stop(true,true).fadeTo(500,0);

			var fadeInAni = jQuery('#produkte-infographic li[title=Social-Media]');
			var captionInfo = jQuery( '#' + jQuery(fadeInAni).attr('title') );
			jQuery(captionInfo).stop(true,true).fadeTo(750,1).siblings(showCaption).stop(true,true).fadeTo(500,0);
			jQuery(fadeInAni).stop(true,true).fadeTo(750,1);
			setTimeout(step7, 2000);
		}

		function step7() {
			var fadeOutAni = jQuery('#produkte-infographic li[title=Social-Media]');
			jQuery(fadeOutAni).stop(true,true).fadeTo(500,0);
			jQuery('.caption','figcaption').stop(true,true).fadeTo(500,0);

			var fadeInAni = jQuery('#produkte-infographic li[title=Gaestebuch]');
			var captionInfo = jQuery( '#' + jQuery(fadeInAni).attr('title') );
			jQuery(captionInfo).stop(true,true).fadeTo(750,1).siblings(showCaption).stop(true,true).fadeTo(500,0);
			jQuery(fadeInAni).stop(true,true).fadeTo(750,1);
			setTimeout(step8, 2000);
		}

		function step8() {
			var fadeOutAni = jQuery('#produkte-infographic li[title=Gaestebuch]');
			jQuery(fadeOutAni).stop(true,true).fadeTo(500,0);
			jQuery('.caption','figcaption').stop(true,true).fadeTo(500,0);

			var fadeInAni = jQuery('#produkte-infographic li[title=Counter]');
			var captionInfo = jQuery( '#' + jQuery(fadeInAni).attr('title') );
			jQuery(captionInfo).stop(true,true).fadeTo(750,1).siblings(showCaption).stop(true,true).fadeTo(500,0);
			jQuery(fadeInAni).stop(true,true).fadeTo(750,1);
			setTimeout(step9, 2000);
		}

		function step9() {
			var fadeOutAni = jQuery('#produkte-infographic li[title=Counter]');
			jQuery(fadeOutAni).stop(true,true).fadeTo(500,0);
			jQuery('.caption','figcaption').stop(true,true).fadeTo(500,0);

			var fadeInAni = jQuery('#produkte-infographic li[title=CMS]');
			var captionInfo = jQuery( '#' + jQuery(fadeInAni).attr('title') );
			jQuery(captionInfo).stop(true,true).fadeTo(750,1).siblings(showCaption).stop(true,true).fadeTo(500,0);
			jQuery(fadeInAni).stop(true,true).fadeTo(750,1);
			setTimeout(step10, 2000);
		}

		function step10() {
			var fadeOutAni = jQuery('#produkte-infographic li[title=CMS]');
			jQuery(fadeOutAni).stop(true,true).fadeTo(500,0);
			jQuery('.caption','figcaption').stop(true,true).fadeTo(500,0);

			var fadeInAni = jQuery('#produkte-infographic li[title=Mail]');
			var captionInfo = jQuery( '#' + jQuery(fadeInAni).attr('title') );
			jQuery(captionInfo).stop(true,true).fadeTo(750,1).siblings(showCaption).stop(true,true).fadeTo(500,0);
			jQuery(fadeInAni).stop(true,true).fadeTo(750,1);
			setTimeout(step11, 2000);
		}

		function step11() {
			var fadeOutAni = jQuery('#produkte-infographic li[title=Mail]');
			jQuery(fadeOutAni).stop(true,true).fadeTo(500,0);
			jQuery('.caption','figcaption').stop(true,true).fadeTo(500,0);

			var fadeInAni = jQuery('#produkte-infographic li[title=Shop]');
			var captionInfo = jQuery( '#' + jQuery(fadeInAni).attr('title') );
			jQuery(captionInfo).stop(true,true).fadeTo(750,1).siblings(showCaption).stop(true,true).fadeTo(500,0);
			jQuery(fadeInAni).stop(true,true).fadeTo(750,1);
			setTimeout(step12, 2000);
		}

		function step12() {
			var fadeOutAni = jQuery('#produkte-infographic li[title=Shop]');
			jQuery(fadeOutAni).stop(true,true).fadeTo(500,0);
			jQuery('.caption','figcaption').stop(true,true).fadeTo(500,0);
		}*/

		/* ---- End products infographic ---- */



		/* *
		*---- Hosting infographic
		*
		**/

		jQuery('li','#animationHosting ').hover(function() {
			var captionSelector = jQuery( '#' + jQuery(this).attr('rel') );
			jQuery(captionSelector).stop().fadeTo(500,1).siblings('.captionDiv').stop().fadeTo(500,0);
			jQuery(this).stop().fadeTo(500,1);
		},function() {
			jQuery('.captionDiv','#captionContainer').stop().fadeTo(500,0);
			jQuery(this).stop().fadeTo(500,0);
	  });
		/* ---- End hosting infographic ---- */



		/* *
		*---- Video infographic
		*
		**/

		jQuery('li','#videoAnimation').hover(function() {
				var animateCaption = jQuery('#' + jQuery(this).attr('rel'));
				jQuery(this).stop(true,true).fadeTo(500,1);
				jQuery(animateCaption).stop(true,true).fadeTo(500,1).siblings('.videoSteps').stop().fadeTo(500,0);;
				},function() {
				jQuery('.videoSteps','figcaption').stop().fadeTo(500,0);
				jQuery(this).stop(true,true).fadeTo(500,0);
		});
		/* ---- End Video infographic ---- */




		/* *
		*---- Client login
		*
		**/
			jQuery('#main a[href$="login"]').click(function(e) {
				if (windowWidth >= 992) {
					e.preventDefault();
					jQuery('#block-block-18').fadeIn(2000);
					jQuery('#login').slideToggle(800).css({'display' : 'block'});
				} else {
					jQuery(this).attr('href','produkte#node-998');
					return true;
				}
			});

		/* ---- End contact page ---- */



		/* *
		*---- Screencast slideshow triggers (support pages)
		*
		**/
		if (jQuery('#video-slides').length) {
				jQuery('#video-slides').cycle({
						timeout : 0,
						fx: 'fade'
				});

				jQuery('#playlist span').each(function(index) {
						jQuery(this).click(function(e) {
								e.preventDefault();
								jQuery('#video-slides').cycle(index);
								return false;
						});
				});
		}
		/* ---- End screencast slideshow ---- */


		/* *
		*---- Sliding labels
		*
		**/
		jQuery('input[type="text"], input[type="email"], input[type="search"], input[type="password"]').each(function() {
			if(windowWidth >= 992) {
				jQuery(this).bind({
						focus: function() {
								if (jQuery(this).attr('id') == 'edit-search-block-form--2') {
										jQuery(this).css({marginLeft: '20px'});
										newWidth = jQuery(this).outerWidth() + jQuery(this).prev('label').outerWidth();

										if (jQuery.browser.msie) {
												newWidth = newWidth - 30;
										} else {
												newWidth = newWidth - 20;
										}

								} else {
										newWidth = jQuery(this).width() + jQuery(this).prev('label').outerWidth();
								}
								jQuery(this).css({width: newWidth +'px', borderRadius: '5px'});
								jQuery(this).prev('label').hide();
						},
						blur: function() {
								if (jQuery(this).attr('id') == 'edit-search-block-form--2') {
										jQuery(this).css({marginLeft: '0'});
										oldWidth = jQuery(this).outerWidth() - jQuery(this).prev('label').outerWidth();

										if (jQuery.browser.msie) {
												oldWidth = oldWidth + 30;
										} else {
												oldWidth = oldWidth + 20;
										}

								} else {
										oldWidth = jQuery(this).width() - jQuery(this).prev('label').outerWidth();
								}
								jQuery(this).css({width: oldWidth +'px', borderRadius: '0 5px 5px 0'});
								jQuery(this).prev('label').show();
						}
				});
			} else {
				return true;
			}
		});
		jQuery('#node-1271 input, #node-1272 input').unbind('focus');
		jQuery('#node-1271 input, #node-1272 input').unbind('blur');
		/* ---- End sliding labels ---- */



		// scroll faq sidebar
		var $scrollElem = jQuery("#block-views-faq-ankernavigation-block");

		jQuery('#block-views-faq-ankernavigation-block').jScroll({ top : 20, speed : 2000 });



		/* ##### Become a customer ##### */
		jQuery('#become-customer').colorbox({inline:true, width:'330px', href:'#block-webform-client-block-1271 article'});
		jQuery('.recommend-customer').colorbox({inline:true, width:'350px', href:'#block-webform-client-block-1689 article'});



		/* ---- Tooltips ---- */
		jQuery('figcaption.tooltip').prepend('<span class="arrow"></span>');
		jQuery('.tip, .page-kontakt img[title], .page-contact img[title], section.blogger img[title]').tooltip({effect: 'fade', layout: '<div><span class="arrow"></span></div>'});


		/* ##################### */
		jQuery('#service-infographic li').hover( hoverHandler, hoverHandler );

		/* ---- Find external links and open them in a new window/tab ---- */
		jQuery.expr[':'].external = function(obj){
				return !obj.href.match(/^mailto\:/) && !obj.href.match(/^javascript\:/) && (obj.hostname != location.hostname) && ('www.' + obj.hostname != location.hostname);
		};

		jQuery('a:external').attr('rel', 'external').attr('target', '_blank');
		jQuery('form.login').attr('target', '_blank');


		/* ##### Shop-Login ##### */
		jQuery.support.cors = true;

		jQuery('#shopLogin-block, #shopLogin').submit(function() {

			// check if the event is triggered by the submit button in the block version of the form
			if (jQuery(this).attr('id') == 'shopLogin-block') {
				var id = jQuery('#shop-user-block');
				var form = jQuery('#shopLogin-block');
				var pw = jQuery('#shop-pw-block');
			} else if (jQuery(this).attr('id') == 'shopLogin') {
				// not the block version
				var id = jQuery('#shop-user');
				var form = jQuery('#shopLogin');
				var pw = jQuery('#shop-pw');
			}

			jQuery.ajax({
				type: 'GET',
				url: '/checklogin/' + id.val(),
				async: false,

				headers: {'X-Requested-With': 'XMLHttpRequest'},
				success: function(data) {

					// check if we have valid (for EurowebShop 2.0 credentials)
					if ((data.error === false) && (data.shop === true)) {
						// changing form action attrib
						form.attr('action', 'https://' + data.domain + '/admin/index.php');

						// changing filed attributes
						id.attr('name', 'user');
						pw.attr('name', 'pwd');

						// Adding extra fields
						form.append('<input type="hidden" name="cl" value="ewlogin" />');
						form.append('<input type="hidden" name="fnc" value="checklogin" />');
						form.append('<input type="hidden" name="redirect_query" value="cl=admin_start" />');
						form.append('<input type="hidden" name="chlanguage" value="0" />');
						form.append('<input type="hidden" name="contactFormSubmiter" value="Anmeldung" />');
						form.append('<input type="hidden" name="nocookiecheck" value="true" />');

					} else { // end-of-check-valid-credentials-for-ewshop-2.0
						// Setting form action attr to correct one for ewshop-1.0
						form.attr('action', 'https://epages2.euro-web.net/epages/' + id.val() + '.admin/de_DE');

						// changing filed attributes
						id.attr('name', 'Login');
						pw.attr('name', 'Password');

					}
				},
				dataType: 'json'
			}); // end-of-ajax-call

			// Submit the form
			return true;
		}); // end-of-button-event


		/* ##### Immomanager-Login ##### */
		jQuery('#immoLogin, #immoLogin-block').submit(function() {

			// check if the event is triggered by the submit button in the block version of the form
			if (jQuery(this).attr('id') == 'immoLogin-block') {
				var id = jQuery('#immo-user-block');
				var form = jQuery('#immoLogin-block');
				var pw = jQuery('#immo-pw-block');
			} else if (jQuery(this).attr('id') == 'immoLogin') {
				// not the block version
				var id = jQuery('#immo-user');
				var form = jQuery('#immoLogin');
				var pw = jQuery('#immo-pw');
			}


			jQuery.ajax({
				url: '/immologin/' + id.val(),
				type: 'GET',
				async: false,
				headers: {'X-Requested-With': 'XMLHttpRequest'},
				dataType: 'json',
				success: function(data) {

					// any errors?
					if (data.error == false) {
						// modify action attribute and username field

						// Immomanager version 1 (aka "the Great Old One")
						if (data.version == '1') {

							// prepend http://www. to the domain name if missing
							if (!id.val().match(/http\:\/\/www\./)) {
								id.val('http://www.' + id.val());
							}

							form.attr('action', id.val() + '/immomanager/source/index.php');
							id.attr('name', 'url');
							pw.attr('name', 'pw');

						} else if (data.version == '2') {
							// Immomanager version 2
							form.attr('action', 'https://immomanager.euroweb.net/login.php');
							id.attr('name', 'username');
							pw.attr('name', 'password');
						}

					} // end of form modifications

				}
			}); // end of ajax call


			// finally: submit the form
			return true;


		}); // end of Immomanager-Login



		/* ##### Webmail-Login ##### */
		jQuery('#webmailLogin, #webmailLogin-block').submit(function() {
			// check if the event is triggered by the submit button in the block version of the form
			if (jQuery(this).attr('id') == 'webmailLogin-block') {
				var email = jQuery('#webmail-user-block');
				var form = jQuery('#webmailLogin-block');
			} else if (jQuery(this).attr('id') == 'webmailLogin') {
				// not the block version
				var email = jQuery('#webmail-user');
				var form = jQuery('#webmailLogin');
			}


			hostn = email.val().split('@');

			jQuery.ajax({
				url: '/webmaillogin/' + hostn[1],
				type: 'GET',
				async: false,
				headers: {'X-Requested-With': 'XMLHttpRequest'},
				dataType: 'json',
				success: function(data) {
					// any errors?
					if (data.error == false && data.domain != '') {
						// change action attribute
						if (data.host != 'www.euroweb.de') {
							form.attr('action' , 'https://' + data.host + '/imp/redirect.php');
						} else {
							form.attr('action', 'http://www.euroweb.de');
						}
					} // end of form modifications

				}
			}); // end of ajax call


			// finally: submit the form
			return true;

		}); // end of Webmail-Login




		/* ##### Historie ##### */
		jQuery('#historie-year a, #historie-quarter a').click(function(e) {
			e.preventDefault();

			// check which link fired the event
			if (jQuery(this).parents('ul').attr('id') == 'historie-year') {
				// The user clicked on a year - get current quarter from y-axis
				var year = jQuery(this).attr('title');
				var quarter = jQuery('#historie-quarter li.current a').attr('title');
			} else

			if (jQuery(this).parents('ul').attr('id') == 'historie-quarter') {
				// The user clicked on a quarter - get current year from x-axis
				var year = jQuery('#historie-year li.current a').attr('title');
				var quarter = jQuery(this).attr('title');
			}

			// move highlight class "current" to reflect the user's choice
			jQuery(this).parents('ul').children('li.current').removeClass('current');
			jQuery(this).parent('li').addClass('current');

			// set argument url and container ID for the AJAX content
			var url = year + '/' + quarter;
			var ajaxContainer = jQuery('#historie');

			jQuery.ajax({
				url: '/historie/' + url,
				type: 'GET',
				async: false,
				headers: {'X-Requested-With': 'XMLHttpRequest'},
				dataType: 'json',
				success: function(data) {
					if (!data.error && data.nodes != '') {
						ajaxContainer.fadeOut('600', 'easeInOutExpo', function() {
							jQuery(this).html(data.nodes);
							jQuery(this).fadeIn('600', 'easeInOutExpo');
						});
					}

				}
			}); // end AJAX

		}); // end of Historie



		/* *
		*---- Teaser slideshow pager
		*
		**/
		resizeHeaderSlides();

		// still (and only) used on english front-site
		jQuery('#gotoSlide01').click(function(e) {
			e.preventDefault;
			jQuery('#views_slideshow_cycle_teaser_section_startseiten_slideshow-block').cycle(0);
			return false;
		});

		jQuery('#gotoSlide02').click(function(e) {
			e.preventDefault;
			jQuery('#views_slideshow_cycle_teaser_section_startseiten_slideshow-block').cycle(1);
			return false;
		});

		jQuery('#gotoSlide03').click(function(e) {
			e.preventDefault;
			jQuery('#views_slideshow_cycle_teaser_section_startseiten_slideshow-block').cycle(2);
			return false;
		});

		jQuery('#gotoSlide04').click(function(e) {
			e.preventDefault;
			jQuery('#views_slideshow_cycle_teaser_section_startseiten_slideshow-block').cycle(3);
			return false;
		});


}); // end-of-document-ready



jQuery.fn.showIconHover = function() {
    return jQuery(this).each(function() {
        var captionInfo = jQuery( '#' + jQuery(this).attr('title') );
        jQuery(captionInfo).stop(true,true).fadeTo(750,1).siblings('.caption').stop(true,true).fadeTo(500,0);
        jQuery(this).stop(true,true).fadeTo(750,1);
    });
};

jQuery.fn.hideIconHover = function() {
    return jQuery(this).each(function() {
        jQuery(this).stop(true,true).fadeTo(500,0);
        jQuery('.caption','figcaption').stop(true,true).fadeTo(500,0);
    });
};

jQuery.fn.playAnimation = function() {
    return jQuery(this).each(function() {
        jQuery(this).prev().hideIconHover();
        jQuery(this).showIconHover();
    });
};

var isHeaderSlideHeightSet = false;
var isDone = false;

function resizeHeaderSlides() {

	if ( getMaxHeightOf('.header-slide-body') > 0 && !isHeaderSlideHeightSet ) {
		isHeaderSlideHeightSet = true;
	}

	if ( isHeaderSlideHeightSet && !isDone ) {
		// set height of header-slides to the one of the highest height
		jQuery(".header-slide-body").height(getMaxHeightOf('.header-slide-body'));
		jQuery(".header-slide hgroup").height(getMaxHeightOf('.header-slide hgroup'));

		$new_y_pos = jQuery(".header-slide").height() + parseInt(jQuery('.header-slide').css('top'), 10) - 40;

		jQuery("#intro-footer").css("top", $new_y_pos + 'px');

		isHeaderSlideHeightSet = false;
		isDone = true;
	}
}

/* ----- End Teaser slideshow pager ----- */

function getMaxHeightOf (selector /* string */) {
	return Math.max.apply(null, jQuery(selector).map(function ()
		{
			return jQuery(this).innerHeight();
		}).get());
}
;