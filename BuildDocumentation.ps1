param([string]$ProjectDir, [string]$ProjectPath);
Set-Location $ProjectDir
mkdocs build

copy CNAME docs/CNAME