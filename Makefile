default: clean datapack

VERSION := 1.1.1-1.21

clean:
	rm -f *.zip

datapack:
	zip -r battle_towers-$(VERSION).zip data pack.*
