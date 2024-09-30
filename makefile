build: # Retrieve the note from obsidian 
	cp Obsidian/Obsidian/combat-sports,\ hobby,\ personal,\ project,\ tips.md index.md

update: # update obsidian to have latest judo note
	git submodule update --remote # Git knows what to update thanks to the .gitmodules file
	git add .
	git commit -m "Automatically update submodule to latest versions"
	git push

.PHONY: build update
