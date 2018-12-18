//
//  ViewController.swift
//  实验6-3
//
//  Created by student on 2018/10/25.
//  Copyright © 2018年 2016110428 All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        创建三个视图
        let redview = UIView()
        redview.backgroundColor = UIColor.red
        let greenview = UIView()
        greenview.backgroundColor = UIColor.green
        let blueview = UIView()
        blueview.backgroundColor = UIColor.blue
//     将三个视图组合
        let stackview = UIStackView(arrangedSubviews: [redview,greenview,blueview])
//     控制视图显示
        stackview.axis = .vertical//组合视图垂直排列
        stackview.alignment = .fill//组合视图排列成直线
        stackview.distribution = .fillEqually//视图等比例分配，完全填充
        stackview.spacing = 20//视图之间的间距
        
        stackview.frame = CGRect(x:20,y:20,width:200,height:200)
        view.addSubview(stackview)
//      为视图添加约束
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant:20).isActive = true
        stackview.trailingAnchor.constraint(equalTo:view.trailingAnchor,constant:-20).isActive = true
        stackview.topAnchor.constraint(equalTo:view.topAnchor,constant:20).isActive = true
        stackview.bottomAnchor.constraint(equalTo:view.bottomAnchor,constant:-20).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

