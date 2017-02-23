/**
 * loupe - an image magnifier for jQuery
 * (C) 2010 jdbartlett, MIT license
 * http://github.com/jdbartlett/loupe
 */
(function ($) {
	$.fn.loupe = function (arg) {
		var options = $.extend({
			loupe: 'loupe',
			width: 350,
			height: 350,
		}, arg || {});

		return this.length ? this.each(function () {
			var $this = $(this), $big, $loupe,
				$small = $this.is('img') ? $this : $this.find('img:first'),
				move, hide = function () { $loupe.hide(); },
				time;


			if ($this.data('loupe') != null) {
				return $this.data('loupe', arg);
			}


			test_cord = function (e){
				 var os = $small.offset(),
				 	sW = $small.outerWidth(),
				 	sH = $small.outerHeight();
				// 	oW = options.width / 2,
				// 	oH = options.height / 2;
                //
				// if (!$this.data('loupe') ||
				// 	e.pageX > sW + os.left + 10 || e.pageX < os.left - 10 ||
				// 	e.pageY > sH + os.top + 10 || e.pageY < os.top - 10) {
				// 	return hide();
				// }
				//console.log('['+e.pageX+'] ['+e.pageY+']'+' __ '+options.width+' _ '+os.top);
				if(e.pageX < os.left ||  e.pageX > os.left+options.width || e.pageY < os.top || e.pageY > os.top+options.height ){
						return hide('fade');
				}
			};

			move = function (e) {
				//console.log($loupe)
				if($small.context.src !== $big.src){
				   	$('.loupe img').attr('src',$(".thumbnail_tmp").attr('href'));
					$big.src = $small.context.src;
				}


				var os = $small.offset(),
					sW = $small.outerWidth(),
					sH = $small.outerHeight(),
					oW = options.width / 2,
					oH = options.height / 2;

				if (!$this.data('loupe') ||
					e.pageX > sW + os.left + 10 || e.pageX < os.left - 10 ||
					e.pageY > sH + os.top + 10 || e.pageY < os.top - 10) {
					return hide();
				}

				clearTimeout(time);
				time = setTimeout(test_cord, 1000,e);

				$loupe.show().css({
					left: e.pageX - oW,
					top: e.pageY - oH
				});

				$big.css({
					left: -(((e.pageX - os.left) / sW) * $big.width() - oW)|0,
					top: -(((e.pageY - os.top) / sH) * $big.height() - oH)|0
				});

			};

			$loupe = $('<div />')
				.addClass(options.loupe)
				.css({
					width: options.width,
					height: options.height,
					position: 'absolute',
					overflow: 'hidden',
					background: 'white'
				})
				.append($big = $('<img />').attr('src', $this.attr($this.is('img') ? 'src' : 'href')).css('position', 'absolute'))
				.mousemove(move)
				.hide()
				.appendTo('body');
			$('.loupe img').click(function(){
				$( ".loupe_img_tmp" ).trigger( "click" );
			});

			$this.data('loupe', true)
				.mouseenter(move)
				.mouseout(function () {
					time = setTimeout(hide, 10);
				});
		}) : this;
	};
}(jQuery));
