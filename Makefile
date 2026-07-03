.DEFAULT_GOAL = dev

ZOLA ?= zola

serve:
	$(ZOLA) serve

dev:
	$(ZOLA) serve --drafts

check:
	$(ZOLA) check

.PHONY: serve dev check
