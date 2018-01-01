
//  功能一：banner广告轮播
$(()=>{ 
	var LIWIDTH=window.screen.width,//屏幕宽——》document.body.scrollWidth
			timer=null, 
			moved=0, 
			duration=500, 
			wait=2500;
//			console.log(LIWIDTH);							
	$.ajax({
		type:"get",  
		url:"data/index/getCarousel.php"   
	}).then(data=>{
//		console.log(data);
		var html="";
		for(var p of data){
//	   console.log(p);
			html+=
			`<li><a href="${p.href}" title="${p.title}">
					<img src="${p.img}">
			</a></li>`;
		}
		var p0=data[0];   // 把第一张图片拼接在最后
		html+=
		`<li><a href="${p0.href}" title="${p0.title}">
				<img src="${p0.img}">
		</a></li>`;
		var $ul=$("[data-load=bannerImgs]")
		$ul.html(html).css("width",LIWIDTH*(data.length+1));  // 最后多拼接了一张图片
    var $ids=$(".paganation");
  $ids.html("<li></li>".repeat(data.length))
    .children().first().addClass("selected");

// 图片移动函数
 function move(dir=1){
    moved+=dir;
    $ul.animate({
      left:-LIWIDTH*moved
    },duration,()=>{
      if(moved==data.length){   // 移动到
        $ul.css("left",0);   // -(moved+1)*LIWIDTH
        moved=0;
      }
      $ids.children(":eq("+moved+")")  //移到哪一张就给哪一张增加selected属性
        .addClass("selected")
        .siblings().removeClass("selected")
    })
  }
  var timer=setInterval(move,wait);

  $("#wrap").hover(
    ()=>{ clearInterval(timer); timer=null; },
    ()=>{ timer=setInterval(move,wait); }
  );
  
  //  为导航圆点添加鼠标悬停事件 
  $ids.on("mouseover","li",function(){
    var $li=$(this);     // this ——》 指向所点击的小圆点
    var i=$li.index();   // 小圆点的下标
    moved=i;
    $ul.stop(true).animate({
      left:-LIWIDTH*moved    // left为正，第一张图片向右移动；但想要的效果是第一张图片向左移动，所以left为负。
    },duration,()=>{
      $ids.children(":eq("+i+")")      
        .addClass("selected")
        .siblings().removeClass("selected");
    })
  });  

	});
});


// 功能二：carousel_a 广告轮播
$(()=>{ 
	var LIWIDTH=1200,  // 图片固定宽为1200px
			timer=null, 
			moved=0, 
			duration=500, 
			wait=2500;
//			console.log(LIWIDTH);							
	$.ajax({
		type:"get",  
		url:"data/index/carousel_a.php"   
	}).then(data=>{
//		console.log(data);
		var html="";
		for(var p of data){
//	   console.log(p);
			html+=
			`<li>
					<a href="${p.href}" title="${p.title}">
						<img src="${p.img}">
					</a>
			 </li>
			 `;
		}
		var p0=data[0];   // 把第一张图片拼接在最后
		html+=
		`<li><a href="${p0.href}" title="${p0.title}">
				<img src="${p0.img}">
		</a></li>`;
		var $ul=$("#carousel-a")
		$ul.html(html).css("width",LIWIDTH*(data.length+1));  // 最后多拼接了一张图片
    var $ids=$(".carIndex");
  $ids.html("<li></li>".repeat(data.length))
    .children().first().addClass("current");

// 图片移动函数
 function move(dir=1){
    moved+=dir;
    $ul.animate({
      left:-LIWIDTH*moved
    },duration,()=>{
      if(moved==data.length){   // 移动到
        $ul.css("left",0);   // -(moved+1)*LIWIDTH
        moved=0;
      }
      $ids.children(":eq("+moved+")")  //移到哪一张就给哪一张增加current属性
        .addClass("current")
        .siblings().removeClass("current")
    })
  }
  var timer=setInterval(move,wait);

// 图片区域悬浮暂停
  $(".banner-slideshow").hover(
    ()=>{ clearInterval(timer); timer=null; },  // 鼠标触摸暂停，
    ()=>{ timer=setInterval(move,wait); }   // 鼠标移走又重新轮播
  );
  
  //  为导航圆点添加鼠标悬停事件 
  $ids.on("mouseover","li",function(){
    var $li=$(this);     // this ——》 指向所点击的小圆点
    var i=$li.index();   // 小圆点的下标
    moved=i;  
    $ul.stop(true).animate({   // 不加stop(true)不行！
      left:-LIWIDTH*moved    // left为正，第一张图片向右移动；但想要的效果是第一张图片向左移动，所以left为负。
    },duration,()=>{
      $ids.children(":eq("+i+")")      
        .addClass("current")
        .siblings().removeClass("current");
    })
  });  

	});
});

// 功能三：公告轮播
$(()=>{ 
	var LIHEIGHT=48, 
			timer=null, 
			moved=0, 
			duration=500, 
			wait=2500;						
		var html="";
			html+=
			`	<li>
					<a href="#">华为·春节不打烊</a>
				</li>
				<li>
					<a href="#">荣耀年货节</a>
				</li>
				<li>
					<a href="#">新年应有礼-礼品包装晒单赢好礼</a>
				</li>
				<li>
					<a href="#">HUWEI Matebook系列产品晒单有礼活动中奖名单</a>
				</li>
				<li>
					<a href="#">荣耀年货 送礼选我活动中奖名单公布</a>
				</li>
				<li>
					<a href="#">华为·春节不打烊</a>
				</li>
			 `;

		var $ul=$(".notice-list")
		$ul.html(html).css("HEIGHT",LIHEIGHT*6);// data.lemgth 最后多拼接了一张文字公告   
		
// 文字移动函数
 function move(dir=1){
    moved+=dir;
    $ul.animate({
      top:-LIHEIGHT*moved
    },duration,()=>{
      if(moved==5){   // 移动到倒数第二个，就要跳到第一个
        $ul.css("top",0);   // -(moved+1)*LIWIDTH
        moved=0;
      }
    })
  }
  var timer=setInterval(move,wait);
  
 //  文字区域悬浮暂停
$(".notice-content").hover(
    ()=>{ clearInterval(timer); timer=null; },  
    ()=>{ timer=setInterval(move,wait); }   
);
  
});



//  功能四：精品推荐轮播
$(()=>{ 
	var LIWIDTH=217,WIDTH=1200;						
	$.ajax({
		type:"get",  
		url:"data/index/index_carProduct1.php"   
	}).then(data=>{
		console.log(data);
		var html="";
		for(var p of data){
	   console.log(p);
			html+=
			`<li class="swiper-items">
              		<a href="#">
              			<img src="${p.pic}" class="swiper-img" alt="" />
							<p class="swiper-title">${p.title}</p>
							<p class="swiper-desc">${p.details}</p>
							<p class="swiper-price">￥${p.price}</p>
							<img src="${p.smallPic}" alt="" class="swiper-tips" />
              		</a>              		
              	</li>  `;
		}
		var $ul=$(".swiper-list")
		$ul.html(html).css("width",LIWIDTH*(data.length));  
		
//  为箭头添加鼠标点击事件 
// var i=0;
// var total=Math.ceil(LIWIDTH*(data.length)/WIDTH); 
// $(".swiper-btn-next").onclick=function(){
//  i++;
//  $ul.html(html).css("left",-WIDTH*i);
//  if(i<total){
//  	$(".swiper-btn-prev").removeClass("disabled");
//  }
//  if(i==total){
//  	$(".swiper-btn-next").addClass("disabled");
//  	break;
//  }    
// };  
//$(".swiper-btn-prev").onclick=function(){
//  i++;
//  $ul.html(html).css("left",-LIWIDTH*(data.length)+WIDTH*i);
//  if(i<total){
//  	$(".swiper-btn-next").removeClass("disabled");
//  }
//  if(i==total){
//  	$(".swiper-btn-prev").addClass("disabled");
//  	break;
//  }     
// };  


	});
});

