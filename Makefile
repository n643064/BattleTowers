default: clean datapack

VERSION := 1.3.0

clean:
	rm -f *.zip

datapack:
	zip -r battle_towers-$(VERSION).zip data pack.*
