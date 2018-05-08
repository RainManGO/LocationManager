//
//  ViewController.swift
//  ZYLocationManager
//
//  Created by Nvr on 2018/5/8.
//  Copyright © 2018年 ZY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        LocationManager.shareManager.creatLocationManager().startLocation { (location, adress, error) in
            print("经度 \(location?.coordinate.longitude ?? 0.0)")
            print("纬度 \(location?.coordinate.latitude ?? 0.0)")
            print("地址\(adress ?? "")")
            print("error\(error ?? "没有错误")")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

