# CJJRouter
CJJRouter实现了一句代码跳转任意控制器（可传参数），不需要再引用头文件，减少耦合和依赖，觉得好用的话给个star哦

### CJJRouter Introduction
CJJRouter是一个单例类，导入到.pch文件中即可全局使用

### How To Use ?

- 手动管理
```
直接把文件夹CJJRouter拖进工程即可
```

- CocoaPod管理
```
pod 'CJJRouter', '~> 1.0.0'
```

### Demo Introduction

![](https://github.com/JimmyCJJ/CJJRouter/blob/master/CJJRouterDemo/CJJRouterDemo/Modules/Resource/MainVCImg.png)

### 一句话跳转（不带参数）
```
[self.navigationController pushViewController:CJJRouterCreatNormalVC(@"ViewControllerOne") animated:YES];
```

### 一句话跳转（带参数，固定普通方法）
```
[self.navigationController pushViewController:CJJRouterCreatNormalParamsVC(@"ViewControllerTwo", @{@"name":@"我是一个带参数的控制器（Fix NormalMethod）"}) animated:YES];
```

### 一句话跳转（带参数，固定初始化方法）
```
[self.navigationController pushViewController:CJJRouterCreatInitParamsVC(@"ViewControllerThree", @{@"name":@"我是一个带参数的控制器（Fix InitMethod）"}) animated:YES];
```

### 一句话跳转（带参数，自定义普通方法）
```
[self.navigationController pushViewController:CJJRouterCreatParamsVC(@"ViewControllerFour", @{@"name":@"我是一个带参数的控制器（Custom NormalMethod）"}, @"receiveWithCustomParams:", NO) animated:YES];
```

### 一句话跳转（带参数，自定义初始化方法）
```
[self.navigationController pushViewController:CJJRouterCreatParamsVC(@"ViewControllerFive", @{@"name":@"我是一个带参数的控制器（Custom InitMethod）"}, @"initWithCustomParams:", YES) animated:YES];
```
