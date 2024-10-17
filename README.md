## 介绍

CT(Command Tool)是一个 Minecraft 数据包<br>
它提供了一些很方便的工具，可以让mcfunction开发者快速实现一些效果

关于详细信息请见[文档](docs/所有工具.md "点击打开")<br>
[旧网页文档](https://docs.qq.com/aio/DV3hyV09kUFpuWnVP "点击打开")已不再使用，只会在那发开发日志

问题和闲聊，[qR 的MCJE交流群](https://qm.qq.com/q/m7YZB2gzPq "点击加群")

### Q&A

Q: 为什么已经有一些数据包 lib 了还要再建一个项目<br>
A: 我(qR) 是懒狗，自己写的用起来舒服点(也推荐你使用其他 lib，例如[Gunivers 的 Bookshelf](https://github.com/Gunivers/Bookshelf/))，但这并不代表我(qR)会复刻其他 lib 的功能，我(qR)在 CT 内写的工具多数是我实际遇到过的问题的解决方案

## 使用CT
qR创建CT的目的之一是整合很多杂七杂八的"api数据包"<br>
并将其定义具体化，同时尽量保证所有工具没有重复功能且泛用性高

CT有很多模块，其中给使用者使用的称为"工具"，<br>
为了防止不同类型的工具混在一起，CT将绝大多数工具分类<br>
这些分类称之为"工具类"或"类"

工具类和工具在函数目录下的文件结构：
```
function/
└ 工具类/
    ├ 工具/
    │   ├ meth/
    │   │   └ 方法.mcfunction
    │   └ ...
    └ 工具.mcfunction
```
要使用工具需调用工具的方法<br>
tip: 在使用前，最好先看看[docs/工具页面格式.md](docs/工具页面格式.md)

在工具类下的`工具.mcfunction`为工具的tick函数，<br>
`工具/`目录下为工具的其他内容，但是工具的功能可能是任何，所以不一定会有哪些函数