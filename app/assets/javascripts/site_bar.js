/****************************************
*                                                         *
*       Header Position                         *
*                                                         *
****************************************/
window.onload = function()
  {
    moveHeader()
  };
function moveHeader(){
  var header = document.getElementById("sticky");
  var top = window.getComputedStyle(header ).getPropertyValue("top");
  var offset = window.getComputedStyle(document.getElementById("site_bar")).getPropertyValue("height");
  header.style.top = offset;
  headerMovementSet();
}

function headerMovementSet(){
    var offset = window.getComputedStyle(document.getElementById("site_bar")).getPropertyValue("height");
    var offsetPos = offset.replace(/\D/g,'');
    if (offsetPos > 0){
        //float until top
        window.addEventListener("scroll", scrollFunctions);
    }
    else{
      setHeadtopPos("0px");
      alert("did this");
    }
}

function setHeadtopPos(position){
  var header = document.getElementById("sticky");
  header.style.top = position;
}

var scrollFunctions = function(evt){
    //get offset of refinery bar
    var offset = document.getElementById("site_bar");
    var top = 0;
    while(offset != null) {
      var top = 47 + offset.offsetTop - offset.scrollTop;
      offset = offset.offsetParent;
    }
   if(top > 0)
   {
    top = top + "px";
    setHeadtopPos(top);
   }
   else{
     setHeadtopPos("0px");
   }
}

