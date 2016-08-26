//jQuery time
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches

$(".next").click(function(){
	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({'transform': 'scale('+scale+')'});
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

$(".previous").click(function(){
	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();
	
	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	
	//show the previous fieldset
	previous_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

$(".submit").click(function(){
	return false;
})

function load() {
   
    

}
window.count=1;

/*fuctions to add number of columns and rows*/
function addRow() {
    
    var table = document.getElementById("myTableData");

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    row.insertCell(0).innerHTML= window.count;
	row.insertCell(1).innerHTML= '<input type="text">';
	row.insertCell(2).innerHTML= '<input type="text">';
    row.insertCell(3).innerHTML= '<input type="text">';
	row.insertCell(4).innerHTML= '<input type="text">';
	window.count++;

}

window.count=1;
function addRow2() {
    
    var table = document.getElementById("myTableData2");

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    row.insertCell(0).innerHTML= window.count;
	row.insertCell(1).innerHTML= '<input type="text">';
	row.insertCell(2).innerHTML= '<input type="text">';
    row.insertCell(3).innerHTML= '<input type="text">';
	row.insertCell(4).innerHTML= '<input type="text">';
	row.insertCell(5).innerHTML= '<input type="text">';
	row.insertCell(6).innerHTML= '<input type="text">';
	window.count++;

}
function addRow3() {
    
    var table = document.getElementById("myTableData3");

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    row.insertCell(0).innerHTML= window.count;
	row.insertCell(1).innerHTML= '<input type="text">';
	row.insertCell(2).innerHTML= '<input type="text">';
    row.insertCell(3).innerHTML= '<input type="text">';
    window.count++;
}
function addRow4() {
    
    var table = document.getElementById("myTableData4");

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    row.insertCell(0).innerHTML= window.count;
	row.insertCell(1).innerHTML= '<input type="text">';
	row.insertCell(2).innerHTML= '<input type="text">';
    row.insertCell(3).innerHTML= '<input type="text">';
	row.insertCell(4).innerHTML= '<input type="text">';
    window.count++;
}
function addRow5() {
    
    var table = document.getElementById("myTableData5");

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    row.insertCell(0).innerHTML= window.count;
	row.insertCell(1).innerHTML= '<input type="text">';
	row.insertCell(2).innerHTML= '<input type="text">';
    row.insertCell(3).innerHTML= '<input type="text">';
    window.count++;
}
function addRow6() {
    
    var table = document.getElementById("myTableData6");

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    row.insertCell(0).innerHTML= window.count;
	row.insertCell(1).innerHTML= '<input type="text">';
	row.insertCell(2).innerHTML= '<input type="text">';
    row.insertCell(3).innerHTML= '<input type="text">';
	row.insertCell(4).innerHTML= '<input type="text">';
	row.insertCell(5).innerHTML= '<input type="text">';
	row.insertCell(6).innerHTML= '<input type="text">';
    window.count++;
}
function addRow7() {
    
    var table = document.getElementById("myTableData7");

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    row.insertCell(0).innerHTML= window.count;
	row.insertCell(1).innerHTML= '<input type="text">';
	row.insertCell(2).innerHTML= '<input type="text">';
    row.insertCell(3).innerHTML= '<input type="text">';
	row.insertCell(4).innerHTML= '<input type="text">';
	row.insertCell(5).innerHTML= '<input type="text">';
	row.insertCell(6).innerHTML= '<input type="text">';
	row.insertCell(7).innerHTML= '<input type="text">';
	row.insertCell(8).innerHTML= '<input type="text">';
	row.insertCell(9).innerHTML= '<input type="text">';
	row.insertCell(10).innerHTML= '<input type="text">';
	row.insertCell(11).innerHTML= '<input type="text">';
    window.count++;
}
