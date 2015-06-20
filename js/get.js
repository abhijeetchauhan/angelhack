function getText(e){
	console.log(e);
	if(e.keyCode==13 || e.which==1){
		var text=document.getElementById("speech").value;
		alert(text);
	}

}
