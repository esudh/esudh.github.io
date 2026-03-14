# 1. Check for the folder ONCE at the start
$workshopDir = "_workshops"
if (!(Test-Path $workshopDir)) {
    New-Item -ItemType Directory -Path $workshopDir
    Write-Host "Created $workshopDir directory." -ForegroundColor Cyan
}

# 2. Read the master YAML
$yamlContent = Get-Content "_data/workshops.yml" -Raw
$workshopMatches = [regex]::Matches($yamlContent, '(?m)^- id:\s*(.*)')

# Track IDs found in YAML to compare with existing files later
$foundIds = @()

foreach ($match in $workshopMatches) {
    $id = $match.Groups[1].Value.Trim()
    $foundIds += $id
    $filePath = Join-Path $workshopDir "$id.md"
    
    if (!(Test-Path $filePath)) {
        $content = @"
---
layout: workshop-detail
workshop_id: $id
---
"@
        Set-Content -Path $filePath -Value $content
        Write-Host "Created hook: $id.md" -ForegroundColor Green
    }
}

# 3. Optional: Cleanup files in _workshops that are no longer in the YAML
$existingFiles = Get-ChildItem $workshopDir -Filter "*.md"
foreach ($file in $existingFiles) {
    $nameOnly = $file.BaseName
    if ($foundIds -notcontains $nameOnly) {
        Write-Host "Note: $nameOnly.md exists but is not in your YAML. (Manual deletion recommended if obsolete)" -ForegroundColor Yellow
    }
}