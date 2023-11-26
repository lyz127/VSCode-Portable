# VS Code Portable
安装在U盘上的便携式VSCode程序及环境配置
## 目录
- (root)
   - Soft
      - VSCode-win32-x64-1.84.2
         - data
      - mingw64
      - Python311
      - nodejs
      - texlive
         - 2023
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

setings.json
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
  "C_Cpp.default.compilerPath": "/Soft/mingw64/bin/gcc.exe",
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
### Python
[Python官网](https://www.python.org/) > [Download](https://www.python.org/downloads/)
### NodeJs
[node.js官网](https://nodejs.org/en) > Recommended For Most Users
### TexLive
 - [texlive官网](https://tug.org/texlive/)
 - [清华大学开源软件镜像站](https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/Images/)
## Code
### C
tasks.json
```json
{
  "tasks": [
    {
      "type": "cppbuild",
      "label": "C/C++: gcc.exe 生成活动文件",
      "command": "/Soft/mingw64/bin/gcc.exe",
      "args": [
        "-fdiagnostics-color=always",
        "-g",
        "${file}",
        "-o",
        "${fileDirname}\\${fileBasenameNoExtension}.exe"
      ],
      "options": {
        "cwd": "${fileDirname}"
      },
      "problemMatcher": ["$gcc"],
      "group": {
        "kind": "build",
        "isDefault": true
      },
      "detail": "调试器生成的任务(C)。"
    }
  ],
  "version": "2.0.0"
}
```

launch.json
```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "(gdb) Windows 上的 Bash 启动",
      "type": "cppdbg",
      "request": "launch",
      "program": "${fileDirname}\\${fileBasenameNoExtension}.exe",
      "args": [],
      "stopAtEntry": false,
      "cwd": "${fileDirname}",
      "environment": [],
      "externalConsole": false,
      "pipeTransport": {
        "debuggerPath": "/Soft/mingw64/bin/gdb.exe",
        "pipeProgram": "${env:windir}\\system32\\bash.exe",
        "pipeArgs": ["-c"],
        "pipeCwd": ""
      },
      "setupCommands": [
        {
          "description": "为 gdb 启用整齐打印",
          "text": "-enable-pretty-printing",
          "ignoreFailures": true
        },
        {
          "description": "将反汇编风格设置为 Intel",
          "text": "-gdb-set disassembly-flavor intel",
          "ignoreFailures": true
        }
      ]
    }
  ]
}
```

c_cpp_properties.json
```json
{
  "configurations": [
    {
      "name": "Win32",
      "includePath": [
        "${workspaceFolder}/**",
        "/Soft/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/**"
      ],
      "defines": ["_DEBUG", "UNICODE", "_UNICODE"]
    }
  ],
  "version": 4
}
```
### C++
tasks.json
```json
{
  "tasks": [
    {
      "type": "cppbuild",
      "label": "C/C++: g++.exe 生成活动文件",
      "command": "/Soft/mingw64/bin/g++.exe",
      "args": [
        "-fdiagnostics-color=always",
        "-g",
        "${file}",
        "-o",
        "${fileDirname}\\${fileBasenameNoExtension}.exe"
      ],
      "options": {
        "cwd": "${fileDirname}"
      },
      "problemMatcher": ["$gcc"],
      "group": {
        "kind": "build",
        "isDefault": true
      },
      "detail": "调试器生成的任务(C++)。"
    }
  ],
  "version": "2.0.0"
}
```

launch.json
```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "(gdb) Windows 上的 Bash 启动",
      "type": "cppdbg",
      "request": "launch",
      "program": "${fileDirname}\\${fileBasenameNoExtension}.exe",
      "args": [],
      "stopAtEntry": false,
      "cwd": "${fileDirname}",
      "environment": [],
      "externalConsole": false,
      "pipeTransport": {
        "debuggerPath": "/Soft/mingw64/bin/gdb.exe",
        "pipeProgram": "${env:windir}\\system32\\bash.exe",
        "pipeArgs": ["-c"],
        "pipeCwd": ""
      },
      "setupCommands": [
        {
          "description": "为 gdb 启用整齐打印",
          "text": "-enable-pretty-printing",
          "ignoreFailures": true
        },
        {
          "description": "将反汇编风格设置为 Intel",
          "text": "-gdb-set disassembly-flavor intel",
          "ignoreFailures": true
        }
      ]
    }
  ]
}
```

c_cpp_properties.json
```json
{
  "configurations": [
    {
      "name": "Win32",
      "includePath": ["${workspaceFolder}/**"],
      "defines": ["_DEBUG", "UNICODE", "_UNICODE"],
      "compilerPath": "/Soft/mingw64/bin/gcc.exe"
    }
  ],
  "version": 4
}
```
### Python
tasks.json
```json
{
  "tasks": [
    {
      "label": "python: 运行程序",
      "type": "shell",
      "command": "\"\\Soft\\Python311\\python.exe\"",
      "args": ["${file}"],
      "options": {
        "cwd": "${fileDirname}"
      },
      "group": {
        "kind": "build",
        "isDefault": true
      },
      "detail": "运行Python程序。"
    },
    {
      "label": "python: 生成exe程序",
      "type": "shell",
      "command": "\"\\Soft\\Python311\\Scripts\\pyinstaller.exe\"",
      "args": ["-F", "${file}"],
      "options": {
        "cwd": "${fileDirname}"
      },
      "group": {
        "kind": "build",
        "isDefault": true
      },
      "detail": "Python脚本打包成exe程序。"
    }
  ],
  "version": "2.0.0"
}
```

launch.json
```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "(Python) 启动",
      "type": "python",
      "request": "launch",
      "program": "${file}",
      "console": "integratedTerminal",
      "justMyCode": true
    }
  ]
}
```
### Web
tasks.json
```json
{
  "tasks": [
    {
      "label": "node: 运行程序",
      "type": "shell",
      "command": "\"\\Soft\\nodejs\\node.exe\"",
      "args": ["${file}"],
      "options": {
        "cwd": "${fileDirname}"
      },
      "group": {
        "kind": "build",
        "isDefault": true
      },
      "detail": "运行JavaScript或TypeScript。"
    }
  ],
  "version": "2.0.0"
}
```

launch.json
```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "node",
      "request": "launch",
      "name": "(node) 启动",
      "skipFiles": ["<node_internals>/**"],
      "program": "${file}",
      "runtimeExecutable": "\\Soft\\nodejs\\node.exe"
    }
  ]
}
```
