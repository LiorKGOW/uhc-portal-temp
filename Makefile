.PHONY: openapi

openapi:
	yarn run openapi-typescript https://api.stage.openshift.com/api/clusters_mgmt/v1/openapi \
		-o src/types/clusters_mgmt.v1/index.ts \
		--root-types \
		--enum
	yarn run openapi-typescript https://api.stage.openshift.com/api/accounts_mgmt/v1/openapi \
		-o src/types/accounts_mgmt.v1/index.ts \
		--root-types \
		--enum
	yarn run openapi-typescript https://console.redhat.com/api/cost-management/v1/openapi.json \
		-o src/types/cost-management.v1/index.ts \
		--root-types \
		--enum
	yarn run openapi-typescript https://api.stage.openshift.com/api/access_transparency/v1/openapi \
		-o src/types/access_transparency.v1/index.ts \
		--root-types \
		--enum
	yarn run openapi-typescript https://console.redhat.com/api/insights-results-aggregator/v1/openapi.json \
		-o src/types/insights-results-aggregator.v1/index.ts \
		--root-types \
		--enum
	yarn run openapi-typescript https://console.redhat.com/api/insights-results-aggregator/v2/openapi.json \
		-o src/types/insights-results-aggregator.v2/index.ts \
		--root-types \
		--enum
	yarn run openapi-typescript https://api.stage.openshift.com/api/service_logs/v1/openapi \
		-o src/types/service_logs.v1/index.ts \
		--root-types \
		--enum
	yarn run openapi-typescript https://api.stage.openshift.com/api/upgrades_info/v1/openapi \
		-o src/types/upgrades_info.v1/index.ts \
		--root-types \
		--enum
	yarn prettier:fix
