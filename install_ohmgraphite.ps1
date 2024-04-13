$repo = "nickbabcock/OhmGraphite"
$api = "https://api.github.com/repos/$repo/releases"
$tag = (Invoke-WebRequest $api | ConvertFrom-Json)[0].tag_name
$version = [regex]::Replace($tag, "^v", "")
$file = "OhmGraphite-$version.zip"
$zipUrl = "https://github.com/$repo/releases/download/$tag/$file"

$downloadDath = "D:\OhmGraphite.zip"
Invoke-WebRequest -Uri $zipUrl -OutFile $downloadPath

$extractPath = "C:\OhmGraphite_"
Expand-Archive -Path $downloadDath -DestinationPath $extractPath

$executablePath = "C:\OhmGraphite\OhmGraphite.exe"
& $executablePath install
Remove-Item -Path $downloadPath
