$(function () {
	draw_empty_board();
	fill_board();
});


function draw_empty_board() {
	var t='<table id="kseri_table">';
	for(var i=5;i>0;i--) {
		t += '<tr>';
		for(var j=1;j<8;j++) {
			t += '<td class="kseri_square" id="square_'+j+'_'+i+'">' + j +','+i+'</td>'; 
		}
		t+='</tr>';
	}
	t+='</table>';
	
	$('#kseri_board').html(t);
}

function fill_board() {
	$.ajax({url: "kseri.php/board/", success: fill_board_by_data });
	
}

function fill_board_by_data(data) {
	for(var i=0;i<data.length;i++) {
		var o = data[i];
		var id = '#square_'+ o.xeri1 +'_' + o.xeri2+'_'+o.katw+'_'+o.mirarma
		
		var im = (o.filla!=null)?'<img class="filla" src="images/'+piso+'.png">':'';
				
	}
}
