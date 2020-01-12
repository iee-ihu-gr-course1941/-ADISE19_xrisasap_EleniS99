 var me={};
var game_status={};

$(function () {
	draw_empty_board();
	fill_board();
	
	$('#kseri_login').click( login_to_game);
	$('#kseri_reset').click( reset_board);
	
	$('#move_div').hide();
	game_status_update();
});


function draw_empty_board() {
	var t='<table id="kseri_table">';
	for(var i=5;i>0;i--) {
		t += '<tr>';
		for(var j=1;j<7;j++) {
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
		var id = '#square_'+ o.x +'_' + o.y;
		var c = (o.filla!=null)?o.color + o.filla:'';
		var im = (o.filla!=null)?'<img class="filla" src="model/'+c+'.png">':'';
		$(id).addClass(o.b_color+'_square').html(im);
		
	}
}
