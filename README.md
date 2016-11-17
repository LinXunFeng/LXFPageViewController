# LXFPageViewController
LXFPageViewController 方便管理多个控制器

## 使用

###初始化
1.创建LXFPageViewController

2.设置代理

3.将创建的LXFPageViewController视图添加到当前控制器视图中

```
let pageVc = LXFPageViewController(superController: self, controllers: self.controllers)
pageVc.delegate = self
self.view.addSubview(pageVc.view)
```

###代理方法

```
// MARK: 获取当前子控制器的角标
func lxfPageCurrentSubControllerIndex( index: NSInteger, pageViewController: LXFPageViewController)
```

###对外提供的方法
```
// MARK: 指定当前显示的子控制器
func setCurrentSubControllerWith(index: NSInteger)
```


效果图

![image](https://github.com/LinXunFeng/LXFPageViewController/raw/master/Screenshots/1.gif)
