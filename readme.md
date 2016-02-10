## Examples
* create project in current dir: ~/development/docker/cocos2dx-docker/cocos new MyGame -p com.MyCompany.MyGame -l cpp -d /source/MyCompany
* compile project in current dir:
  * ~/development/docker/cocos2dx-docker/cocos compile -s /source -p linux
  * todo better fix: put libGLEW.so.1.13 and libglfw.so.3 in a directory (they can be found inside the container...)
  * add that directory to LD_LIBRARY_PATH
  * run the binary you created (probably called MyGame)
