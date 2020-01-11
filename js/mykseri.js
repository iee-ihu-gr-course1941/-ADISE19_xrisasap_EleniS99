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


function draw_empty_board(p) {
	
	if(p!='1') {p='2';}
	var draw_init = {
		'1': {i1:7,i2:0,istep:-1,j1:1,j2:5,jstep:1},
		'2': {i1:1,i2:5,istep:1, j1:7,j2:0,jstep:-1}
	};
	var s=draw_init[p];
	var t='<table id="kseri_table">';
	for(var i=s.i1;i!=s.i2;i+=s.istep) {
		t += '<tr>';
		for(var j=s.j1;j!=s.j2;j+=s.jstep) {
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

function reset_board() {
	$.ajax({url: "chess.php/board/", method: 'POST',  success: fill_board_by_data });
	$('#move_div').hide();
	$('#game_initializer').show(2000);
}

function fill_board_by_data(data) {
	for(var i=0;i<data.length;i++) {
		var o = data[i];
		var id = '#square_'+ o.x +'_' + o.y;
		var c = (o.filla!=null)?o.color + o.filla:'';
		var im = (o.filla!=null)?'<img class="filla" src="model/'+c+'.png">':'';
		$(id).addClass(o.color+'_square').html(im);		
	}
}

function login_to_game() {
	if($('#username').val()=='') {
		alert('You have to set a username');
		return;
	}
	var Paiktis = $('#Paiktis').val();
	draw_empty_board(Paiktis);
	fill_board();
	
	$.ajax({url: "kseri.php/players/"+Paiktis, 
			method: 'PUT',
			dataType: "json",
			contentType: 'application/json',
			data: JSON.stringify( {username: $('#username').val(), paiktis: Paiktis}),
			success: login_result,
			error: login_error});
}

function login_result(data) {
	me = data[0];
	$('#game_initializer').hide();
	update_info();
	game_status_update();
}

function login_error(data,y,z,c) {
	var x = data.responseJSON;
	alert(x.errormesg);
}

function game_status_update() {
	$.ajax({url: "kseri.php/status/", success: update_status });
}

function update_status(data) {
	game_status=data[0];
	update_info();
	if(game_status.p_turn==me.paiktis &&  me.paiktis!=null) {
		x=0;
		// do play
		$('#move_div').show(1000);
		setTimeout(function() { game_status_update();}, 15000);
	} else {
		// must wait for something
		$('#move_div').hide(1000);
		setTimeout(function() { game_status_update();}, 4000);
	}	
} 
function update_info(){
	$('#game_info').html("I am Player: "+me.paiktis+", my name is "+me.username +'<br>Token='+me.token+'<br>Game state: '+game_status.status+', '+ game_status.p_turn+' must play now.');	
}

