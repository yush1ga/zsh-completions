GOPATH = $(PWD)/go
PATH = $(GOPATH)/bin:$(shell printenv PATH)
ZGENCOMP_OWNER = github.com/b4b4r07
ZGENCOMP = zgencomp

deps:
	- pip install --upgrade git+https://github.com/yush1ga/yzcomp.git

compile: deps
	for file in $(shell ls yaml); do\
	  yzcomp yaml/$$file > zsh/_$${file%.*};\
	done
