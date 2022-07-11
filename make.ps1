$excludes = Get-Content exclude.list
$files = Get-ChildItem -Path . -Exclude $excludes
Remove-Item 'com.matta.exs24.xrnx', 'com.matta.exs24.zip' -ErrorAction SilentlyContinue
Compress-Archive -Path $files -DestinationPath com.matta.exs24.zip
Rename-Item com.matta.exs24.zip com.matta.exs24.xrnx