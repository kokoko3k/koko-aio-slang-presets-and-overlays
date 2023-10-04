#!/bin/bash

# Start me from the directory containing "textures" subdir.

presets_reference_dir='Presets-ng\/'
#presets="monitor-slotmask-bloom-bezel tv-aperturegrille-bloom-bezel"
presets="Monitor-Ambilight-immersive"

preset_prefix="preset"

for preset in $presets ; do
	mkdir "$preset_prefix"_"$preset"
	for f in textures/*.png ; do 
		texturename=$(basename $f)
		echo $preset/$texturename
		
		
		cat 20-template_preset.txt | \
			sed "s/replacemetexture/textures\/$texturename/" | \
			sed "s/replacemeslangp/$presets_reference_dir$preset.slangp/" \
				> "$preset_prefix"_"$preset"/"${texturename%.*}".slangp 

	done
done
