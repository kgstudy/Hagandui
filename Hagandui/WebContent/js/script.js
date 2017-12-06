// 메인 아이템 호버
function itemIn(num){
	$("#itemTxt"+num).stop().animate({
		"height" : "100%"
	}, 500);
	$("#itemPlace"+num).stop().animate({
		"top" : "80px"
	}, 500);
	$("#itemTitle"+num).stop().animate({
		"top" : "95px"
	}, 500);
	$("#itemExplain"+num).stop().animate({
		"top" : "110px"
	}, 500);
	$("#revBtn"+num).stop().animate({
		"opacity" : "1"
	}, 1000);
}
function itemOut(num){
	$("#itemTxt"+num).stop().animate({
		"height" : "49px"
	}, 500);
	$("#itemPlace"+num).stop().animate({
		"top" : "0"
	}, 500);
	$("#itemTitle"+num).stop().animate({
		"top" : "15px"
	}, 500);
	$("#itemExplain"+num).stop().animate({
		"top" : "30px"
	}, 500);
	$("#revBtn"+num).stop().animate({
		"opacity" : "0"
	}, 500);
}

// 메인 아이템 슬라이드
$(document).ready(function(){
	var slide_length = $(".item_slide .item").length;
	var width = $(".item")[0].clientWidth;
	
	$(".item_slide").width( (width+5)*(slide_length+4) );
	
	$first = $("#item1").clone();
	$second = $("#item2").clone();
	$third = $("#item3").clone();
	$firth = $("#item4").clone();
    
    $(".item_slide").append($first);
    $(".item_slide").append($second);
    $(".item_slide").append($third);
    $(".item_slide").append($firth);
    
    var mainItemTimer = setInterval(main_item_right, 1500);
    
    $(".item_slide").hover(
		function(){
			clearInterval(mainItemTimer);
		},
		function(){
			mainItemTimer = setInterval(main_item_right, 1500);
		}
	);
	
	var slide_num = 0;
	function main_item_right(){
		slide_num++;
		$(".item_slide").stop().animate({
            left: -(width+5) * slide_num
        }, function(){
            if ( slide_num == 8 ) {
                slide_num = 0;
                $(".item_slide").css("left", -(width+5) * slide_num );
            }
        });
	}
});

// 메인 슬라이드
$(document).ready(function(){
	var mainSlideTimer = setInterval(main_slide_change, 3000);
    
    $(".slide_wrap").hover(
		function(){
			clearInterval(mainSlideTimer);
		},
		function(){
			mainSlideTimer = setInterval(main_slide_change, 3000);
		}
	);
	
	var sn = 1;
	function main_slide_change(){
		sn++;
		for(var i=1; i<4; i++){
			$("#slide"+i).stop().animate({
				"opacity" : 0
			}, 500);
			$("#slide"+sn).stop().animate({
				"opacity" : 1
			}, 500);
		}
		if(sn == 3)
			sn = 0;
	}
});