

lastState = world.gameState;
world.gameState = "options";

cursor = 0;


audio_master_gain(.3);

resetTime = 0;

creditScroll = 0;

creditString = "Study And Relax by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/5764-study-and-relax License: http://creativecommons.org/licenses/by/4.0/";
creditString += "Night In Venice by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/5763-night-in-venice License: http://creativecommons.org/licenses/by/4.0/";
creditString += "Circus Of Freaks by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/5740-circus-of-freaks License: http://creativecommons.org/licenses/by/4.0/";
creditString += "Limit 70 by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/5710-limit-70 License: http://creativecommons.org/licenses/by/4.0/";
creditString += "Wholesome by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/5050-wholesome License: http://creativecommons.org/licenses/by/4.0/";
creditString += "Hep Cats by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/3867-hep-cats License: http://creativecommons.org/licenses/by/4.0/";
creditString += "Netherworld Shanty by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/4119-netherworld-shanty License: http://creativecommons.org/licenses/by/4.0/";
creditString += "Plain Loafer by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/4223-plain-loafer License: http://creativecommons.org/licenses/by/4.0/";
creditString += "The Descent by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/4490-the-descent License: http://creativecommons.org/licenses/by/4.0/";
creditString += "Aquarium by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/5738-aquarium License: http://creativecommons.org/licenses/by/4.0/";
creditString += "Crossing the Chasm by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/3562-crossing-the-chasm License: http://creativecommons.org/licenses/by/4.0/";
creditString += "Thief in the Night by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/4521-thief-in-the-night License: http://creativecommons.org/licenses/by/4.0/";

creditSize = string_length(creditString);
