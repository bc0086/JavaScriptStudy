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

	
	});


}(window, jQuery));
