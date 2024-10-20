# VS Code Portable
将VSCode程序便携式安装在U盘上，并配置代码编译器路径（C/C++、Python、Java、TypesScript、Latex）。

## Soft

### VSCode
[下载VSCode](https://code.visualstudio.com/#alt-downloads)`.zip`版并[便携式安装](https://code.visualstudio.com/docs/editor/portable)

安装插件：
 - Chinese (Simplified) (简体中文) Language Pack for Visual Studio Code
 - Prettier - Code formatter
 - C/C++ Extension Pack
 - Python
 - Jupyter
 - autopep8
 - Extension Pack for Java
 - Live Server
 - LaTeX Workshop
 - Project Manager
 - SynthWave '84
 - background
 - Code Runner

*settings.json*
```json
{
    "redhat.telemetry.enabled": true,
    "python.defaultInterpreterPath": "${execPath}/../../miniconda3",
    "java.jdt.ls.java.home": "${execPath}/../../jdk-21",
    "C_Cpp.default.compilerPath": "${execPath}/../../mingw64/bin/g++.exe",
    "C_Cpp.default.includePath": [
        "${workspaceFolder}/**",
        "${execPath}/../../mingw64/x86_64-w64-mingw32/include/**"
    ],
    "git.path": "${execPath}/../../Git-x64/bin/git.exe",
    "terminal.integrated.env.windows": {
        "Path": "${execPath}/../../jdk-21/bin;${execPath}/../../Git-x64/bin;${execPath}/../../Git-x64/usr/bin;${execPath}/../../mingw64/bin;${execPath}/../../miniconda3;${execPath}/../../miniconda3/Scripts;${execPath}/../../texlive/2023/bin/windows;${execPath}/../../Gnu-x32/bin;${execPath}/../../nodejs;${execPath}/../../nodejs/node_global;${execPath}/../../nodejs/node_global/node_modules;${execPath}/../../dotnet;${execPath}/../../ffmpeg/bin",
        "JAVA_HOME": "${execPath}/../../jdk-21",
        "NODE_PATH": "${execPath}/../../nodejs/node_global/node_modules",
        "HomePath": "${execPath}/../../home",
        "Home": "${execPath}/../../home"
    },
    "workbench.colorTheme": "SynthWave '84",
    "synthwave84.brightness": 0.5,
    "background.fullscreen": {
        "images": [
            "https://pic4.zhimg.com/v2-445c04e697de450ff21b7e50a005b0bf_r.jpg"
        ],
        "opacity": 0.8,
        "size": "cover",
        "position": "center",
        "interval": 0
    },
    "latex-workshop.latex.tools": [
        {
            "name": "XeLaTeXmk",
            "command": "latexmk",
            "args": [
                "-xelatex",
                "-synctex=1",
                "-shell-escape",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOC%"
            ],
            "env": {
                "PATH": "${execPath}/../../texlive/2023/bin/windows"
            }
        }
    ],
    "latex-workshop.latex.recipes": [
        {
            "name": "latexmk-xe",
            "tools": [
                "XeLaTeXmk"
            ]
        }
    ],
    "latex-workshop.latex.clean.fileTypes": [
        "*.aux",
        "*.bbl",
        "*.blg",
        "*.idx",
        "*.ind",
        "*.lof",
        "*.lot",
        "*.out",
        "*.toc",
        "*.acn",
        "*.acr",
        "*.alg",
        "*.glg",
        "*.glo",
        "*.gls",
        "*.ist",
        "*.fls",
        "*.log",
        "*.fdb_latexmk"
    ],
    "latex-workshop.view.pdf.viewer": "tab",
    "latex-workshop.latex.autoBuild.run": "never",
    "latex-workshop.showContextMenu": true,
    "latex-workshop.message.error.show": true,
    "latex-workshop.message.warning.show": true,
    "latex-workshop.intellisense.package.enabled": true,
    "latex-workshop.latex.autoClean.run": "never",
    "latex-workshop.latex.recipe.default": "lastUsed",
    "latex-workshop.view.pdf.internal.synctex.keybinding": "double-click",
    "update.enableWindowsBackgroundUpdates": false,
    "extensions.autoCheckUpdates": false
}
```
*projects.json*
```json
[
	{
		"name": "code",
		"rootPath": "${execPath}\\..\\..\\home\\work.code-workspace",
		"paths": [],
		"tags": [],
		"enabled": true
	},
	{
		"name": "project",
		"rootPath": "${execPath}\\..\\..\\code\\project",
		"paths": [],
		"tags": [],
		"enabled": true
	}
]
```
### MinGW
 - [MinGW-w64 (官网)](https://www.mingw-w64.org) 
 - [MinGW-W64-builds (GitHub)](https://github.com/niXman/mingw-builds-binaries/releases)
### Python
 - [Python官网](https://www.python.org/)
 - [anaconda (清华大学开源软件镜像站)](https://mirrors.tuna.tsinghua.edu.cn/help/anaconda/)
### Java
 - [Oracle](https://www.oracle.com/cn/java/technologies/downloads/)
### NodeJs
 - [node.js官网](https://nodejs.org/zh-cn)
 - [*nvm](https://github.com/coreybutler/nvm-windows/releases)
### TexLive
 - [texlive官网](https://tug.org/texlive/)
 - [清华大学开源软件镜像站](https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/Images/)
### Git
 - [Git官网](https://git-scm.com/)
 - [git (2.35.1)](https://github.com/git-for-windows/git/releases/tag/v2.35.1.windows.2)
### Make
 - [GNU Make](https://www.gnu.org/software/make/)
### Ffmpeg
 - [ffmpeg官网](https://ffmpeg.org/)

## Path
 - (root)
   - home
   - code
   - VSCode-x64
   - mingw64
   - miniconda3
   - jdk-21
   - nodejs
   - texlive
   - Git-x64
   - Gnu-x32
   - ffmpeg