$path = "jdk-21\bin","Git-x64\bin","Git-x64\usr\bin","mingw64\bin","miniconda3","miniconda3\Scripts","texlive\2023\bin\windows","Gnu-x32\bin","nodejs","nodejs\node_global","nodejs\node_global\node_modules","dotnet","ffmpeg\bin"
foreach ($i in $path) {
    $env:path = ''+$pwd+$i+";"+$env:path
}
$env:java_home = ''+$pwd+"jdk-21"
$env:node_path = ''+$pwd+"nodejs\node_global\node_modules"
$env:homepath = ''+$pwd+"home"
$env:home = ''+$pwd+"home"
clear