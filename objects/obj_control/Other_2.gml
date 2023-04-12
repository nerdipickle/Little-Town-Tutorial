/// @description Game variables

// Game variables
global.playerControl = true;
global.gameOver = false;
global.gameStart = false;

// Player States
enum playerState {
	idle,
	walking,
	pickingUp,
	carrying,
	carryIdle,
	puttingDown,
}

// Item states
enum itemState {
	idle,
	taken,
	used,
	puttingBack,
}

// Sequence states
enum seqState {
	notPlaying,
	waiting,
	playing,
	finished,
}
// Sequence variables
sequenceState = seqState.notPlaying;
curSeqLayer = noone;
curSeq = noone;

// MPC states
enum npcState {
	normal,
	done,
}