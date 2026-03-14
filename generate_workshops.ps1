# 1. Setup and Folder Check
$workshopDir = "_workshops"
$yamlPath = "_data/workshops.yml"

if (!(Test-Path $workshopDir)) {
    New-Item -ItemType Directory -Path $workshopDir
    Write-Host "Created $workshopDir directory." -ForegroundColor Cyan
}

if (!(Test-Path $yamlPath)) {
    Write-Host "Error: Could not find $yamlPath" -ForegroundColor Red
    return
}

# 2. Read the master YAML
$yamlContent = Get-Content $yamlPath -Raw

# Split the YAML into blocks (one per workshop entry)
$blocks = [regex]::Split($yamlContent, '(?m)^- ') | Where-Object { $_ -match 'id:\s*(\S+)' }

# Track IDs found in YAML to compare with existing files later
$foundIds = @()

foreach ($block in $blocks) {
    if ($block -match 'id:\s*(\S+)') {
        $id = $matches[1].Trim()
        $foundIds += $id
        $filePath = Join-Path $workshopDir "$id.md"
        
        # DEFAULT: Public (published: true)
        # ONLY if 'hidden: true' is found, we set it to false.
        $isPublished = $true
        if ($block -match 'hidden:\s*true') {
            $isPublished = $false
        }

        $publishedValue = if ($isPublished) { "true" } else { "false" }

        # Generate the file content
        $content = @"
---
layout: workshop-detail
workshop_id: $id
published: $publishedValue
---
"@
        
        # We overwrite every time to ensure the 'published' status stays synced with YAML
        Set-Content -Path $filePath -Value $content
        
        if ($isPublished) {
            Write-Host "Syncing: $id.md (Status: Public)" -ForegroundColor Green
        } else {
            Write-Host "Syncing: $id.md (Status: HIDDEN)" -ForegroundColor Yellow
        }
    }
}

# 3. Cleanup Check: Find files in _workshops that are no longer in the YAML
Write-Host "`n--- Cleanup Check ---" -ForegroundColor Cyan
$existingFiles = Get-ChildItem $workshopDir -Filter "*.md"
$orphanCount = 0

foreach ($file in $existingFiles) {
    $nameOnly = $file.BaseName
    if ($foundIds -notcontains $nameOnly) {
        Write-Host "Note: $nameOnly.md exists in folder but is missing from YAML! (Consider deleting)" -ForegroundColor Red
        $orphanCount++
    }
}

if ($orphanCount -eq 0) {
    Write-Host "No orphaned files found. Folder is clean." -ForegroundColor Green
}

Write-Host "`nDone! Your workshop hooks are synced." -ForegroundColor Cyan