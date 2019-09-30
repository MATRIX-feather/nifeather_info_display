# NiFeather 信息显示

## 基本信息
版本 : 1.0.0

游戏版本 : 1.14.4

## 简介
这是一个方便玩家查看当前坐标信息,着火时间与服务器所有玩家总血量(需额外配置)的组件

## 如何使用
### 服务器
1. 拥有多世界:
    * 将源码克隆至服务器主存档目录中的`datapack`目录下,然后在控制台或游戏中输入指令 `minecraft:reload` 或 `reload`
2. 无多世界
    * 将源码克隆至服务器存档目录中的`datapack`目录下,然后在控制台或游戏中输入指令 `minecraft:reload` 或 `reload`

* 如果不知道自己服务器的主存档,在`server.properties`的`level-name`处可以看到

### 客户端
* 将源码克隆至存档目录的`datapack`下.
    *   若此时已进入存档,则输入/reload
    *   若此时未进入存档,进入即可

## 添加血量显示
* 输入指令 `bossbar add nife:p-h-max p-h-max` 即可