Simple bash scrip to initialize projects for different languages.  
This includes creating the right folders for the projects (like src, include, etc), creating a makefile (in the case of C/C++)  
To use this script anywhere on your computer, just type:  
  
```cmd
sudo cp initTool.sh /usr/local/bin/initTool
```

Then simply type:

```cmd
./initTool.sh --clang
```

```cmd
./initTool.sh --cplusplus
```

```cmd
./initTool.sh --python
```
