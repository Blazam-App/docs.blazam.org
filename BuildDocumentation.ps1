param([string]$ProjectDir, [string]$ProjectPath);
Set-Location $ProjectDir
mkdocs build

<<<<<<< HEAD
copy CNAME docs/CNAME
=======
Copy-Item -Path "CNAME" -Destination "docs/CNAME"
>>>>>>> 63d2e0afaca7ea00244d1b7176237a2482099934
