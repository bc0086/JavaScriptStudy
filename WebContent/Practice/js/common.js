(function(win, $){
	var $html = $("html");
	var deviceSize = {
		// 반응형 웹의 중간점에 사용할 값을 객체 속성으로 등록
		pc:1009,
		tablet:801,
		mobile:800
	};

	function scrollShowHide(status){
		// 매개변수에 전달된 값이 "scroll"이면 스크롤바가 생성되고 너빗값을 반환
		$html.css({"overflow-y":status});
		return $html.width();
	}

	var sc_w1 = scrollShowHide("hidden"),
		sc_w2 = scrollShowHide("scroll"),
		sc_w3 = sc_w1 - sc_w2;

	if(sc_w3 > 0){
		deviceSize.pc = deviceSize.pc - sc_w3;
		deviceSize.tablet = deviceSize.tablet - sc_w3;
		deviceSize.mobile = deviceSize.mobile - sc_w3;
	}
	console.log(deviceSize.pc);

	// 브라우저의 창 너비가 변하면 창의 너비를 w_size에 저장
	$(win).on("resize", function(){
		var w_size = $(win).width();
			
			// 브라우저의 창 너비가 데스크톱의 너비보다 크거나 같으면 실행
			if(w_size >= deviceSize.pc && !$("html").hasClass("pc")) {
				$html.removeClass("mobile tablet").addClass("pc");
				scrollShowHide("scroll");
			
			// 테블릿 사이즈인 경우 실행
			} else if (w_size < deviceSize.pc && w_size >= deviceSize.tablet && !$("html").hasClass("tablet")){
				$html.removeClass("mobile pc").addClass("tablet");
				scrollShowHide("scroll");
			
			// 모바일 사이즈인 경우 실행
			} else if(w_size <= deviceSize.mobile && !$html.hasClass("mobile")){
				$html.removeClass("pc tablet").addClass("mobile");
				var menu_pos = parseInt($(".mobile-menu-wrap").css("left"));
				if(menu_pos >= 0) {
					scrollShowHide("hidden");
				}
			}
	
	});

	$(function(){
		$(win).trigger("resize");
			// 문서가 로딩될 떄 resize 이벤트가 발생함. 이떄 설정한 중단점에 맞는 class값을 생성
		$(document).on("mouseover focus", ".pc #gnb>ul>li>a, tablet #gnb>ul>li>a", gnbPlay);
			// 데스크톱, 테블릿은 마우스 포인터를 상위 메뉴에 올리면 gnbPlay를 호출
		$(document).on("click", ".mobile #gnb>ul>li:not(.no-sub)>a", gnbPlay);
			// 모바일은 상위 메뉴를 터치하면 gnbPlay를 호출
		
		function gnbPlay(){
			var $ts = $(this);
			if($("html").hasClass("mobile")) {
				$(".mobile #gnb>ul>li>a").removeClass("on");
				$("#gnb ul ul:visible").slideUp(300);
				if($ts.next().is(":hidden")) {
					$ts.addClass("on");
					$ts.next().stop(true, true).slideDown(300);
				}
			} else {
				$("#gnb ul ul:visible").slideUp(300);
				$ts.next().stop(true, true).slideDown(300);
			}
		}
		
		$(document).on("mouseleave", ".pc #gnb, .tablet #gnb", gnbleave);
			function gnbleave() {
				$("#gnb ul ul:visible").slideUp(300);
				$("#gnb>ul>li>a").removeClass("on");
			}

		$(".mobile-menu-open button").on("click", function(){
			$(".mobile-menu-wrap").animate({"left":0}, 200);
			scrollShowHide("hidden");
		});

		$(".mobile-menu-close button").on("click", function(){
			$(".mobile-menu-wrap").animate({"left":"-1000px"}, 200);
				scrollShowHide("scroll");
				gnbleave();
		});
	});
	
}(window, jQuery));
