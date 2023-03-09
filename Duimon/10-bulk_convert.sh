#!/bin/bash

presets="monitor-slotmask-bloom-bezel tv-aperturegrille-bloom-bezel"

preset_prefix="preset"

for preset in $presets ; do
	mkdir "$preset_prefix"_"$preset"
	for f in textures/*.png ; do 
		texturename=$(basename $f)
		echo $preset/$texturename
		
		cat 20-template_preset.txt | \
			sed "s/replacemetexture/textures\/$texturename/" | \
			sed "s/replacemeslangp/$preset.slangp/" \
				> "$preset_prefix"_"$preset"/"${texturename%.*}".slangp 

	done
done
