build: # Retrieve the note from obsidian 
	tail -n +2 Obsidian/Obsidian/combat-sports,\ hobby,\ personal,\ project,\ tips.md >> obsidian-html/index.md # When appending omit the first line of tags
	cp -R Obsidian/Obsidian/.obsidian obsidian-html
	cd obsidian-html && python3 -m obsidianhtml convert -i config.yml
	obsidian-html/output/md/index.md >> index.md


update: # update obsidian to have latest judo note
	git submodule update --remote # Git knows what to update thanks to the .gitmodules file
	git add .
	git commit -m "Automatically update submodule to latest versions"
	git push

.PHONY: build update
