Simple bash scrip to initialize projects for different languages.  
This includes creating the right folders for the projects (like src, include, etc), creating a makefile (in the case of C/C++)  
To use this script anywhere on your computer, just type:  
  
```cmd
sudo cp initTool.sh /usr/local/bin/initTool
```

Then simply type:  

To start a new C project: 
```cmd
./initTool.sh --clang
```

To start a new C++ project:   
```cmd
./initTool.sh --cplusplus
```

To start a new python project:   
```cmd
./initTool.sh --python
```
