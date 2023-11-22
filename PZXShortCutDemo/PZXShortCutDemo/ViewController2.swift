//
//  ViewController2.swift
//  PZXShortCutDemo
//
//  Created by 彭祖鑫 on 2023/11/21.
//

import UIKit

class ViewController2: UIViewController {

    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setSubviews()

    }
    //MARK: – UI
    // subviews
    func setSubviews(){
        
        self.view.backgroundColor = .yellow
        
        let label = UILabel.init(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.size.width, height: 60))
        label.textColor = .red
        label.textAlignment = .center
        label.text = "我爱你，我们在一起吧！"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        
        self.view.addSubview(label)

        
    }
    
    //MARK: – request
    // 获取服务数据
    
    
    //MARK: – 填充数据
    // 填充数据
    
    
    //MARK: – 点击事件
    
    
    //MARK: – Public Method
    // 公有方法
    
    
    //MARK: – Private Method
    // 私有方法

}
