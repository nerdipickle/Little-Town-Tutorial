/// @description Deal with sequences by state

// Control sequences
switch sequenceState {
	case seqState.playing: {
		global.playerControl = false;	
		}; break;
	case seqState.finished: {
		// Remove Sequence
		if (layer_sequence_exists(curSeqLayer,curSeq)) {
			layer_sequence_destroy(curSeq);
		}
		// Restore control to player, reset
		global.playerControl = true;
		sequenceState = seqState.notPlaying;
		curSeq = noone;
		
		// Check if NPCs are "done"
		if (global.gameOver == false) {
			if (instance_exists(obj_npc_baker) && instance_exists(obj_npc_teacher) && instance_exists(obj_npc_grocer)) {
				if (obj_npc_baker.myState == npcState.done && obj_npc_teacher.myState == npcState.done && obj_npc_grocer.myState == npcState.done) {
					// Queue up "game over" sequence
					global.playerControl = false;
					alarm[0] = 60;
					// Mark game as won
					global.gameOver = true;
				}
			}
		}
	}; break;
}