#!/bin/bash

# Start me from the folder containing the list of texture you want to generate presets for.
# it will expect the presence of files placed in the script dir named as proxy-parentpreset.slangp
# that will set parameters needed for the generated presets.


function make_presets_for() {
	parent_preset="$1"
	TARGET_DIR="presets_$parent_preset"
	rm -R "$TARGET_DIR"
	mkdir "$TARGET_DIR"

	CCSTRING='
	# // SOME RIGHTS RESERVED - RELEASED UNDER CC BY NC ND LICENSE https://creativecommons.org/licenses/by-nc-nd/4.0/deed
	# // Released with permission from original author - https://github.com/Duimon
	# // ----------------------------------------------------------------------------------------------------------------
	'

	for t in textures/*.png ; do 
		SOURCE_TEXTURE=$(basename $t)
		TARGET_PRESET="$TARGET_DIR/${SOURCE_TEXTURE%.*}.slangp"
		
		echo Making "$TARGET_PRESET"
		echo "$CCSTRING" > "$TARGET_PRESET"	
		echo "#reference \"../proxy-$parent_preset.slangp\"" >> $TARGET_PRESET
		echo "bg_over = \"../textures/$SOURCE_TEXTURE\"" >> $TARGET_PRESET
	done
}


make_presets_for "Monitor-Ambilight-immersive"
make_presets_for "monitor-slotmask-bloom-bezel"
make_presets_for "tv-aperturegrille-bloom-bezel"
make_presets_for "tv-slotmask-bloom-bezel"