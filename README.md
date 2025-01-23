# Command-Tool

## 简介

CT(CommandTool)是一个比较简陋的数据包lib<br>
它仅仅只是作者在遇到问题时随手写的几个方便自己的函数，所以并没有多少功能和防误操作措施

此外，也推荐使用[bookshelf](https://github.com/mcbookshelf/Bookshelf)来辅助开发<br>
CT会尽量不制作和bs功能重复的工具

## 使用工具

为区分不同工具，CT将工具分类，并将有实际功能的函数定为工具的"方法"<br>
所以要使用工具，需调用对应工具的方法

工具文件层级：数据包函数目录 -> 工具类 -> 工具 -> 方法目录 -> 方法.mcfunction<br>

注：所有可以在其内执行自定义命令的方法都暂不支持嵌套其本身(但可以嵌套CT的其他方法)

## 前置需求

- mng.ds(动态结构)需要：
    - [bookshelf](https://github.com/mcbookshelf/Bookshelf)
        - `interaction`模块
    - [large_number](https://github.com/kaer-3058/large_number)
        - `large_number:uuid_list_for_hyphen/*`函数