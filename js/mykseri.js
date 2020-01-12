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
	if(p!='2') {p='1';}
	var draw_init = {
		'1': {i1:6,i2:0,istep:-1,j1:1,j2:6,jstep:1},
		'2': {i1:1,i2:6,istep:1, j1:6,j2:0,jstep:-1}
	};
	var t='<table id="kseri_table">';
	for(var i=6;i>0;i--) {
		t += '<tr>';
		for(var j=1;j<6;j++) {
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
		$(id).addClass(o.table_color+'_square').html(im);
		
	}
}
