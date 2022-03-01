.PHONY: build

build:
	sam build

deploy-infra:
	sam build && aws-vault exec roshan-sam --no-session -- sam deploy

deploy-site:
	aws-vault exec roshan-sam --no-session -- aws s3 sync . s3://resume-amasa
