# PZXShortCutDemo
iOS SiriKit 快捷指令 使用的Demo
# iOS App SiriKit 快捷方式 功能

## 演示视频


<video src="/Users/pengzuxin/Library/Containers/com.tencent.xinWeChat/Data/Library/Application Support/com.tencent.xinWeChat/2.0b4.0.9/f3e73100913883b82d980cd3d489d028/Message/MessageTemp/700b3589e8bd36a004d201dd3d2b7c27/Video/3b3aee3caa72b8816ccf6f815a293a0f_0_1700624614.mp4"></video>

## 开发步骤

### 1.创建Intents Extension

![image-20231122131257679](/Users/pengzuxin/Library/Application Support/typora-user-images/image-20231122131257679.png)

按照上图步骤进行创建

### 2.创建CUSTOM INTENTS

![image-20231122131422977](/Users/pengzuxin/Library/Application Support/typora-user-images/image-20231122131422977.png)

按照上图创建一个CUSTOM INTENTS，每个CUSTOM INTENTS都是一个快捷指令，在iOS系统的快捷指令App内能找到它

旁边的Title 和 Descripition 分别是显示在快捷指令的标题和描述

![image-20231122131544846](/Users/pengzuxin/Library/Application Support/typora-user-images/image-20231122131544846.png)

Response部分，可以设置需要的参数，以及成功和失败的文字

### 3.设置IntentHandler

在IntentHandler 文件里

导入相应的Handling

例如

![image-20231122131708270](https://p.ipic.vip/g54okh.png)



实现handle方法

continueInApp 是进入App处理相关逻辑

success则会弹出一个弹窗

其他的可以看源码

![image-20231122131748114](https://p.ipic.vip/668aoq.png)

### 4.在AppDelegate或者SceneDelegate

处理回调逻辑

##### 如果用的AppDelegate

![image-20231122131935717](https://p.ipic.vip/wf9f4x.png)

##### 如果用的SceneDelegate

<img src="/Users/pengzuxin/Library/Application Support/typora-user-images/image-20231122131957130.png" alt="image-20231122131957130" style="zoom:50%;" />

### 5.快捷创建此快捷指令

<img src="/Users/pengzuxin/Library/Application Support/typora-user-images/image-20231122132051029.png" alt="image-20231122132051029" style="zoom:50%;" />在手机内的快捷指令创建好指令后，通过共享 - 复制icloud地址后得到共享地址

然后再App中用OpenUrl打开即可



### 相关资料



通过URL创建快捷指令 
https://support.apple.com/zh-cn/guide/shortcuts/apda283236d7/ios

共享快捷指令:
https://support.apple.com/zh-cn/guide/shortcuts/apdf01f8c054/ios

iOS16AppIntent:

https://developer.apple.com/videos/play/wwdc2022/10170/



### Demo地址

