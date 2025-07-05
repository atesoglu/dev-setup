# Optional: wait for Kibana to become available
Write-Host "⌛ Waiting for Kibana..."
Start-Sleep -Seconds 15

# Create index pattern
Invoke-RestMethod -Method Post -Uri "http://localhost:5601/api/saved_objects/index-pattern/local-logs" `
  -Headers @{ "kbn-xsrf" = "true" } `
  -Body (@{
    attributes = @{
      title = "local-logs-*"
      timeFieldName = "@timestamp"
    }
  } | ConvertTo-Json -Depth 10) -ContentType "application/json"

# Set default index pattern
Invoke-RestMethod -Method Post -Uri "http://localhost:5601/api/kibana/settings/defaultIndex" `
  -Headers @{ "kbn-xsrf" = "true" } `
  -Body '{"value": "local-logs"}' -ContentType "application/json"

Write-Host "✅ Kibana index pattern created and set as default"
