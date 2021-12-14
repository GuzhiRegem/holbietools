SHELL := /bin/bash
.PHONY: all setvim setalias
SCRIPT_DIR=$(shell pwd)
A_GIT=alias gitu=$(SCRIPT_DIR)/gitupload

all: setvim setalias
setvim:
	echo '' > $(HOME)/.vimrc
	cat ./vimoptions >> $(HOME)/.vimrc
	echo ":autocmd BufNewFile  *.js	0r $(SCRIPT_DIR)/templates/file.js" >> $(HOME)/.vimrc
	echo ":autocmd BufNewFile  *.py	0r $(SCRIPT_DIR)/templates/file.py" >> $(HOME)/.vimrc

setalias:
	echo "$(A_GIT)" >> $(HOME)/.bash_aliases
	source $(HOME)/.bash_aliases