#!/bin/bash

curl -o ./resources/fingerprint-server-api.yaml https://fingerprintjs.github.io/fingerprint-pro-server-api-openapi/schemas/fingerprint-server-api.yaml

examplesList=(
  'visits_limit_1.json'
  'webhook.json'
  'get_event.json'
  'get_event_all_errors.json'
  'get_event_extra_fields.json'
  'get_event_403_error.json'
  'get_event_404_error.json'
)

for example in ${examplesList[*]}; do
  curl -o ./tests/mocked-responses-tests/mocked-responses-data/external/"$example" https://fingerprintjs.github.io/fingerprint-pro-server-api-openapi/examples/"$example"
done
