/// @description Variables and setup

// Textbox variables
textToShow = "whatever whatever whatever whatever whatever whatever";
textWidth = 450;
lineHeight = 28;
fadeMe = 0;
fadeSpeed = 0.1;
image_alpha = 0;
sequenceToShow = noone;

global.playerControl = false;

// Play UI sound
audio_play_sound(SFX_FreeSound_8_bit_bounce,1,0);

// Dismiss any visible prompts
scr_dismissPrompt(obj_prompt,0);