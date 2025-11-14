site_install:
	pip install -r requirements.txt

site_link:
	ln -sf $(CURDIR)/README.md $(CURDIR)/docs/index.md

site_preview: site_link
	mkdocs serve

site_build: site_link
	mkdocs build

site_deploy: site_link
	mkdocs gh-deploy --clean

PAYROLL_PORT ?= 8000

payroll_app:
	cd docs && python3 -m http.server $(PAYROLL_PORT)
