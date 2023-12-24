# koko-aio-slang-overlays
Collection of extra or third-party presets and overlays not included in main koko-aio repo

estefan3112 Has his own koko-aio fork with additional bezels you may be interested in:<br>
https://github.com/estefan3112/koko-aio-slang

Starman99x runs his own repo with additional bezel and presets here:
https://github.com/Starman99x/koko-aio-presets-and-overlays
		
**Installation:**<br>
	Pick a top level directory named as the user who submitted it<br>
	and place it in the same directory containing official koko-aio presets.<br>
	This will work for koko-aio downloaded from the main repo or<br>
	for the one shipped with retroarch.<br>
	<br>
	Example, for Duimon, presets, the final structure will look like this: <br>
		
		Duimon_additional_presets/
		Presets-4.1/
		Presets-ng/
		[..]
		

**How to contribute, Repository Structure guidelines:**<br>
	The following is just a guideline, the main requisite is that the<br>
	installation method performed by the final user remain the same (see above).
	--
	Every user who want to submit their overlay presets will have his<br>
	own folder in the main directory.<br>
	Under each directory user there will be other subdirectories, one per preset.<br>
	Finally, the preset directory will contain the preset file, textures (screenshots)<br>
	needed by it, eg: if the users where Peter,Egon and Ray:<br>

	PeterVenkman_additional_presets/
		zool/
			peter-preset.slangp
			ecto1.png
			slimer.png
			screenshot.png
		vigo/
			user2-preset.slangp
			ecto2.png
			gozer.png
			screenshot.jpg
	EgonSpengler_additional_presets/
		preset1/
			user2-preset.slangp
			texture1.png
			texture2.png
	RayStantz_additional_presets/
		preset1/
			user2-preset.slangp
			texture1.png
			texture2.png

The slangp preset will reference a parent preset 2 level up, eg:<br>
```#reference "../../Presers-4.1/monitor-bloom-bezel.slangp"```<br>
or<br>
```#reference "../../Presers-ng/other-preset.slangp"```<br>
