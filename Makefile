.DEFAULT_GOAL = dev

ZOLA ?= zola
VALE ?= vale

serve:
	$(ZOLA) serve

dev:
	$(ZOLA) serve --drafts

check:
	$(ZOLA) check --skip-external-links # TODO: find a good method to still use this
	$(VALE) content

.PHONY: serve dev check
