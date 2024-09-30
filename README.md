# PZXShortCutDemo
iOS SiriKit 快捷指令 使用的Demo
# iOS App SiriKit 快捷方式 功能

## 演示效果
![copy_907191FF-E04C-40A5-AA15-3B73C45A4287.GIF](https://upload-images.jianshu.io/upload_images/19409325-59a95e8b7812ca0c.GIF?imageMogr2/auto-orient/strip)



## 开发步骤

### 1.创建Intents Extension

![image-20231122131257679.png](https://upload-images.jianshu.io/upload_images/19409325-cf59a8254e2dcb5b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

按照上图步骤进行创建

### 2.创建CUSTOM INTENTS

![image-20231122131422977.png](https://upload-images.jianshu.io/upload_images/19409325-a70cfe35af4f5122.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


按照上图创建一个CUSTOM INTENTS，每个CUSTOM INTENTS都是一个快捷指令，在iOS系统的快捷指令App内能找到它

旁边的Title 和 Descripition 分别是显示在快捷指令的标题和描述


![image-20231122131544846.png](https://upload-images.jianshu.io/upload_images/19409325-d2bd624e0cb4eebc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

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


![image-20231122131957130.png](https://upload-images.jianshu.io/upload_images/19409325-1c2cc56286a92fe3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


### 5.快捷创建此快捷指令

![image-20231122132051029.png](https://upload-images.jianshu.io/upload_images/19409325-ee4ce976a07b2272.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
在手机内的快捷指令创建好指令后，通过共享 - 复制icloud地址后得到共享地址

然后再App中用OpenUrl打开即可



### 相关资料



通过URL创建快捷指令 
https://support.apple.com/zh-cn/guide/shortcuts/apda283236d7/ios

共享快捷指令:
https://support.apple.com/zh-cn/guide/shortcuts/apdf01f8c054/ios

iOS16AppIntent:

https://developer.apple.com/videos/play/wwdc2022/10170/

https://blog.csdn.net/qq_43441647/article/details/133017285



### Demo地址
https://github.com/PZXforXcode/PZXShortCutDemo
