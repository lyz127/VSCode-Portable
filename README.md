# VS Code Portable
安装在U盘上的便携式VSCode程序及环境配置
## 目录
- (root)
   - Soft
      - VSCode
      - MinGW
      - Python
      - NodeJs
      - TexLive
   - Code
      - C
      - C++
      - Python
      - Web
      - Latex
## Soft
### VSCode
[下载VSCode](https://code.visualstudio.com/#alt-downloads)`.zip`版并[便携式安装](https://code.visualstudio.com/docs/editor/portable)

安装插件：
 - Chinese (Simplified) (简体中文) Language Pack for Visual Studio Code
 - Prettier - Code formatter
 - Code Runner
 - C/C++ Extension Pack
 - Python
 - autopep8
 - JavaScript (ES6) code snippets
 - Live Server
 - LaTeX Workshop

setings.json配置：
```json
{
  "python.defaultInterpreterPath": "\\Soft\\Python311",
  "cmake.options.statusBarVisibility": "icon",
  "cmake.configureOnOpen": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[c]": {
    "editor.defaultFormatter": "ms-vscode.cpptools"
  },
  "[cpp]": {
    "editor.defaultFormatter": "ms-vscode.cpptools"
  },
  "[python]": {
    "editor.defaultFormatter": "ms-python.autopep8"
  },
  "[latex]": {
    "editor.defaultFormatter": "James-Yu.latex-workshop"
  },
  "C_Cpp.default.compilerPath": "..\\..\\Soft\\mingw64\\bin\\gcc.exe",
  "code-runner.executorMap": {
    "javascript": "\"\\Soft\\nodejs\\node.exe\"",
    "python": "set PYTHONIOENCODING=utf8 && \"\\Soft\\Python311\\python.exe\"",
    "c": "cd $dir && \"\\Soft\\mingw64\\bin\\gcc.exe\" $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
    "cpp": "cd $dir && \"\\Soft\\mingw64\\bin\\g++.exe\" -std=c++11 $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt"
  },
  "latex-workshop.latex.tools": [
    {
      "name": "pdflatex",
      "command": "pdflatex",
      "args": [
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error",
        "%DOCFILE%"
      ],
      "env": {
        "PATH": "\\Soft\\texlive\\2023\\bin\\windows"
      }
    },
    {
      "name": "xelatex",
      "command": "xelatex",
      "args": [
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error",
        "%DOCFILE%"
      ],
      "env": {
        "PATH": "\\Soft\\texlive\\2023\\bin\\windows"
      }
    },
    {
      "name": "bibtex",
      "command": "bibtex",
      "args": ["%DOCFILE%"],
      "env": {
        "PATH": "\\Soft\\texlive\\2023\\bin\\windows"
      }
    }
  ],
  "latex-workshop.latex.recipes": [
    {
      "name": "xelatex",
      "tools": ["xelatex"]
    },
    {
      "name": "pdflatex",
      "tools": ["pdflatex"]
    },
    {
      "name": "xelatex->bibtex->xelatex*2",
      "tools": ["xelatex", "bibtex", "xelatex", "xelatex"]
    },
    {
      "name": "pdflatex->bibtex->pdflatex*2",
      "tools": ["pdflatex", "bibtex", "pdflatex", "pdflatex"]
    }
  ],
  "latex-workshop.latex.clean.fileTypes": [
    //"*.aux",
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
  "latex-workshop.view.pdf.internal.synctex.keybinding": "double-click"
}
```
### MinGW
[MinGW-w64](https://www.mingw-w64.org/downloads/) > [MinGW-w64 - for 32 and 64 bit Windows Files](https://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/) > [x86_64-win32-seh](https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Personal%20Builds/mingw-builds/8.1.0/threads-win32/seh/x86_64-8.1.0-release-win32-seh-rt_v6-rev0.7z)
