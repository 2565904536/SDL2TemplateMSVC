# SDL2TemplateMSVC

使用方法：

1. 打开Visual studio 2022，选择克隆存储库，存储库位置填`https://github.com/2565904536/SDL2TemplateMSVC.git`，路径自行修改。
2. 上方工具栏选择工具，命令行，开发者PowerShell。输入`vcpkg integrate install`，然后回车执行。
3. 输入`vcpkg install`，然后回车执行。如果由于网络问题安装失败，可以重新输入此命令再次执行。
4. 关掉Visual studio 2022，打开项目文件夹内的`SDL2TemplateMSVC.sln`文件。
5. 上方工具栏选择项目，属性，在左侧寻找配置属性，VC++目录，在右侧常规，包含目录里把`F:\Han iLan\Documents\2024shortSemester\SDL2TemplateMSVC\SDL2TemplateMSVC\include`改成实际的`\SDL2TemplateMSVC\include`。
6. 同理，在右侧常规，源目录里把`F:\Han iLan\Documents\2024shortSemester\SDL2TemplateMSVC\SDL2TemplateMSVC\src`改成实际的`\SDL2TemplateMSVC\src`。
7. 注意事项：用户名不能为中文，项目所在的路径不能含有中文。