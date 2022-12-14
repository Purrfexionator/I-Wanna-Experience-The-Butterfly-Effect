// Transition Modes
enum transitionmode {
	none,
	fadeout,
	fadein,
	travelout1,
	travelout2,
	travelin,
	staticout
}

//Setup Transition
mode = transitionmode.none
destination = -1
alpha = 0;
color = c_black;
counter = 0;

//Transition
function transition(tmode, tdestination) {
	counter = 0;
	alpha = 0;
	destination = tdestination
	switch tmode {
		default: 
			mode = transitionmode.fadeout;
			break;
		case 1:
			mode = transitionmode.travelout1;
			oCameraSmooth.stopshake = false;
			break;
		case 2: 
			mode = transitionmode.travelout2;
			break;
		case 3:
			bgm_stop_music();
			sfx_stop_all();
			sfx_play_sound(sndStatic);
			mode = transitionmode.staticout;
			break;
	}
}