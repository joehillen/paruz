VERSION := $(shell cat VERSION)
ARCHIVE := paruz-$(VERSION).tar.gz
.PHONY: all install clean release

all: clean README.md VERSION PKGBUILD
	sed -i -e "s/^PARUZ_VERSION=.*/PARUZ_VERSION=$(VERSION)/" paruz
	sed -i -e "s/^pkgver=.*/pkgver=$(VERSION)/" PKGBUILD

release: all
	git commit -am 'Release $(VERSION)'
	git tag $(VERSION)
	git push origin $(VERSION)
	git archive --format=tar.gz -o $(ARCHIVE) --prefix paruz-$(VERSION)/ HEAD
	sed -i -e "s/^sha256sums=.*/sha256sums=('`sha256sum $(ARCHIVE) | cut -d' ' -f1`')/" PKGBUILD
	makepkg
	git commit -am 'Update PKGBUILD'
	git push origin master
	cp PKGBUILD ~/src/aur/paruz/PKGBUILD
	cd ~/src/aur/paruz/
	makepkg -ci
	git commit -am "Release $(VERSION)"
	git push origin master


clean:
	/bin/rm -f README.md

README.md: README.sh paruz VERSION
	./README.sh

install:
	install -m755 paruz /usr/local/bin/
