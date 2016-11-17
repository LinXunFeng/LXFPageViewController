//
//  ViewController.swift
//  LXFPageViewControllerDemo
//
//  Created by LXF on 2016/11/17.
//  Copyright © 2016年 LXF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// 子控制器
    var controllers:[UIViewController] = {
        // 创建5个子控制器
        var cons:[UIViewController] = [UIViewController]()
        for _ in 0..<5 {
            
            // 创建随机颜色
            let red = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
            let green = CGFloat( arc4random_uniform(255))/CGFloat(255.0)
            let blue = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
            let colorRun = UIColor.init(red:red, green:green, blue:blue , alpha: 1)
            
            let subController = UIViewController()
            subController.view.backgroundColor = colorRun
            cons.append(subController)
        }
        return cons
    }()
    
    /// 控制多个子控制器
    lazy var lxfPageVc: LXFPageViewController = {
        let pageVc = LXFPageViewController(superController: self, controllers: self.controllers)
        pageVc.delegate = self
        self.view.addSubview(pageVc.view)
        return pageVc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lxfPageVc.view.frame = self.view.frame
    }
    
}

// MARK:- 代理方法
extension ViewController: LXFPageViewControllerDelegate {
    func lxfPageCurrentSubControllerIndex(index: NSInteger, pageViewController: LXFPageViewController) {
        print("第\(index)个子控制器")
    }
}



