//헤현
var titleA = new Array();
var firstimageA = new Array();
var addr1A = new Array();
var arCodeA = new Array();


function wish(t, firstimage, addr1, arCode, e) {
	if($(this).children().hasClass("wish-active")){

		$(this).removeClass("wish-active");
			titleA.slice(titleA.findIndex(t),1);
			firstimageA.slice(firstimageA.findIndex(firstimage),1);
			addr1A.slice(addr1A.findIndex(addr1),1);
			arCodeA.slice(arCodeA.findIndex(arCode),1);

			parent.saveSch(titleA, firstimageA, addr1A, arCodeA);
			

		}else{

		$(this).children().addClass("wish-active");


			titleA.push(t);
			firstimageA.push(firstimage);
			addr1A.push(addr1);
			arCodeA.push(arCode);
		
			parent.saveSch(titleA, firstimageA, addr1A, arCodeA);
	}
		
	event.stopImmediatePropagation();
	
}

