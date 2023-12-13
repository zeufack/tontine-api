SHELL := /bin/bash
PYTHON = /usr/bin/python3.9
PIP = /usr/local/bin/pip3.9

# .PHONY: venv/bin/activate
# venv/bin/activate: requirements.txt
# 	$(PYTHON) -m venv venv
# 	chmod +x venv/bin/activate
# 	. ./venv/bin/activate
# 	pip install -r requirements.txt

.PHONY: venv
venv: 
	source ./venv/bin/activate


.PHONY: save-dep
save-dep:
	@echo "Save all deps"
	pip freeze > ./requirements.txt

clean: 
	rm -rf venv