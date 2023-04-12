/// @description Deal with music and more

// Play music based on room
switch room {
	case rm_gameMain: {
		audio_play_sound(_28_Rare_Blocks,1,1);
	}; break;
}

// Mark Sequences layer
if (layer_exists("Cutscenes")) {
	curSeqLayer = "Cutscenes";	
}
else {
	curSeqLayer = "Instances";
}