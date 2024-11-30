 	function imgValidate( ) {
		 let img = document.getElementById("img");
		 let errMsg = document.getElementById("errMsg");
		 let err = document.getElementById("err");
		 let fname = img.value;
		 let dot = fname.lastIndexOf(".")+1;
		 let ext = fname.substr(dot,fname.length).toLowerCase();
		 
		 if(ext=="jpg" || ext=="png" || ext=="jpeg") {

		 }else {
		 	 img.value="";
		 	 err.style.display = "unset";
		 }
	}
	function strValidate(event, errId, txtId) {
    	let txt = document.getElementById(txtId);
    	let txtVal = txt.value ;
       	let errMsg = document.getElementById(errId);

     	if(/^[a-zA-Z]+$/.test(txtVal.trim())) {
     		errMsg.style.display = "none";
     	}else {
     		txt.value="";
     		errMsg.style.display = "unset";
     	}
	}
	function intValidate() {
		let txt = document.getElementById("txt-3");
		let txtVal = txt.value;
		let errMsg = document.getElementById("err-3");
		let checkInt = Number.isInteger(Number(txtVal));//check that the entered number is integer or not ?

		if(checkInt === false) {
			txt.value = "";
			errMsg.style.display= "unset";
		} else {
			errMsg.style.display= "none";
		}

	}