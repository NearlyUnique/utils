# Utils

## Batch files

### tag.cmd
tags your current directory with a name and get back to it later e.g.;
```
c:\> tag root
c:\> cd fruit\local\apples
c:\fruit\local\apples> tag apples
c:\fruit\local\apples> cd \other
c:\other> tag list
Available Tags

   #apples
   #root
c:\other> #apples
c:\fruit\local\apples> tag del apples
Available Tags

   #root
```
Use tags uses pushd to switch directries so you can use `popd` after . Currently expects to be in `c:\utils` this needs fixing.

### git-proxy.cmd
quickly switch the git proxy on and off to clone remote from github from behind a corporate proxy

### edit.cmd
fire up sublime or your favourite editor to edit a file

### env.cmd
`exp` fires up windows explorer in the current folder

### console.cmd
`console` is the link used in my console2 tab creation map to get a command prompt with Visual Studio environment

## Config settings

### Console2
xml settings to be stored in `%USERPROFILE%\AppData\Roaming\Console` (or next to `console2.exe`) though I've moved on to conemu

this file is edited using http://markable.in/editor/ because it makes it easy