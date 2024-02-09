param([string]$ProjectDir, [string]$ProjectPath);
Set-Location $ProjectDir
mkdocs build

Copy-Item -Path "CNAME" -Destination "docs/CNAME"