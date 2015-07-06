window.gmap = {isloaded:false,center:null,map:null,mrk:null,wind:null,
	init:function(){
		if(window.gmap.isloaded==false){
			var s = document.createElement("script");s.async = true;s.defer = true;s.type = "text/javascript";
	        s.src = "https://maps.googleapis.com/maps/api/js?language=pl&callback=window.gmap.inited";
	        document.getElementsByTagName("head")[0].appendChild(s);
       }
	},
	inited:function(){
		//console.log('[G].inited');
		window.gmap.isloaded = true;
		window.gmap.draw();
	},
    draw:function() {

    	if(window.gmap.isloaded==true && document.location.hash == '#/contact'){
    		//console.log('[G].draw isloaded:',window.gmap.isloaded,document.location.hash);
	    	if(window.gmap.center==null){window.gmap.center = new google.maps.LatLng(52.293366,21.034872);}
	    	if(window.gmap.map==null){
	    		var mapOptions = {zoom:15,center:window.gmap.center,mapTypeId:google.maps.MapTypeId.ROADMAP,backgroundColor:"#000",scrollwheel:false,disableDefaultUI:true,disableDoubleClickZoom:true,styles:[<?php echo file_get_contents("src/pages/contact/gmap.style.json");?>],}
				window.gmap.map = new google.maps.Map(document.getElementById('gmap'), mapOptions);
			}
			if(window.gmap.mrk==null){
				window.gmap.mrk = new google.maps.Marker({map:window.gmap.map,title:"Taniedrukowanie.pl",position:window.gmap.center,clickable: true});//,icon: "img/ico/location-32.png"
				google.maps.event.addListener(window.gmap.mrk, "click", window.gmap.open);//mrk.setAnimation(google.maps.Animation.BOUNCE);
			}
			window.gmap.onresize();
	        var b = document.getElementById('gmap-show-but');
	        if(b.onclick==null){b.onclick=function(){window.gmap.onresize();window.gmap.open();}};
       }
    },
    close: function() {if(window.gmap.wind != null){window.gmap.wind.close();}},
    open: function() {
      if(window.gmap.wind == null){
      	window.gmap.wind = new google.maps.InfoWindow({position:window.gmap.center,anchor:window.gmap.mrk,pixelOffset:new google.maps.Size(0,-30),disableAutoPan:false});
       	window.gmap.wind.setContent('<div id="gmap-wind"><img src="src/pages/contact/gmap.jpg" width="330" height="136" >'+document.getElementById('gmap-cont').innerHTML+'</div>');
       	google.maps.event.addListener(window.gmap.wind, "closeclick", window.gmap.onresize);//mrk.setAnimation(google.maps.Animation.BOUNCE);
      };
      window.gmap.wind.open(window.gmap.map);
    },
	onresize: function() {if(window.gmap.map!=null){window.gmap.map.setCenter(window.gmap.center);if(window.w>410){window.gmap.map.panBy( (-Math.min(180,(window.w>>1>>1))) ,0);};};}
}