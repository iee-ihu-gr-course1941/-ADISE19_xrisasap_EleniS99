 var me={token:null,piece_color:null};
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
	$.ajax({url: "test_show_board.php", 
		headers: {"X-Token": me.token},
		success: fill_board_by_data });
	
}
function reset_board() {
	$.ajax({url: "kseri.php/board/",headers: {"X-Token": me.token}, method: 'POST',  success: fill_board_by_data });
	$('#move_div').hide();
	$('#game_initializer').show(2000);
}

function fill_board_by_data(data) {
	for(var i=0;i<data.length;i++) {
		var o = data[i];
		var id = '#square_'+ o.x +'_' + o.y;
		var c = (o.filla!=null)?o.color + o.filla:'';
		
		$(id).addClass(o.color+'_square').html(c);
		
	}
}

function login_to_game() {
	if($('#username').val()=='') {
		alert('You have to set a username');
		return;
	}
	var Paiktis = $('#paiktis').val();
	draw_empty_board(Paiktis);
	fill_board();
	
	$.ajax({url: "kseri.php/players/"+Paiktis, 
			method: 'PUT',
			dataType: "json",
		        headers: {"X-Token": me.token},
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
	$.ajax({url: "kseri.php/status/", success: update_status, headers: {"X-Token": me.token} });
}

function update_status(data) {
	var game_stat_old = game_status;
	game_status=data[0];
	update_info();
	if(game_status.p_turn==me.paiktis &&  me.paiktis!=null) {
		x=0;
		// do play
		if(game_stat_old.p_turn!=me.paiktis) {
			fill_board();
		}
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
