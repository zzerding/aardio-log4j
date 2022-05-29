log4j.tar.gz: *.aardio  clean
	/bin/rm -rf /tmp/log4j
	mkdir /tmp/log4j
	find . \( -name \*.aardio -or -name \*.md \)  -exec cp -R {} /tmp/log4j/ \;
	cd /tmp && tar czf log4j.tar.gz log4j && cd -
	mv /tmp/log4j.tar.gz ./dist/
clean:
	- /bin/rm -f log4j.tar.gz

.PHONY : clean
