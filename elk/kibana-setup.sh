#!/bin/bash

echo "⌛ Waiting for Kibana to be ready..."
sleep 15

curl -X POST "http://localhost:5601/api/saved_objects/index-pattern/local-logs" \
  -H "kbn-xsrf: true" \
  -H "Content-Type: application/json" \
  -d '{
    "attributes": {
      "title": "local-logs-*",
      "timeFieldName": "@timestamp"
    }
  }'

curl -X POST "http://localhost:5601/api/kibana/settings/defaultIndex" \
  -H "kbn-xsrf: true" \
  -H "Content-Type: application/json" \
  -d '{"value": "local-logs"}'

echo "✅ Kibana index pattern created and set as default"
