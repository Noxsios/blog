.DEFAULT_GOAL = dev

serve:
	zola serve

dev:
	zola serve --drafts

.PHONY: serve dev
