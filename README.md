# koko-aio-slang-overlays
Collection of extra or third-party overlays not included in main koko-aio repo

		
**Installation**
Pick a top level directory named as the user who submitted it
and place it in the same directory containing official koko-aio presets.
This will work for koko-aio downloaded from the main repo or
for the one shipped with retroarch.


**How to contribute, Repository Structure**
Every user who want to submit their overlay presets will have his
own folder in the main directory.
Under each directory user there will be other subdirectories, one per preset.
Finally, the preset directory will contain the preset file and the textures
needed by it, eg: if the users where Peter,Egon and Ray:

PeterVenkman/
	zool/
		peter-preset.slangp
		ecto1.png
		slimer.png
	vigo/
		user2-preset.slangp
		ecto2.png
		gozer.png
EgonSpengler/
	preset1/
		user2-preset.slangp
		texture1.png
		texture2.png
RayStantz/
	preset1/
		user2-preset.slangp
		texture1.png
		texture2.png

The slangp preset will reference a parent preset 2 level up, eg:
	#reference "../../monitor-bloom-bezel.slangp"
