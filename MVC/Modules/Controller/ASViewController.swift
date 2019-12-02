//
//  ASViewController.swift
//  MVC
//
//  Created by DMR on 2019/12/1.
//  Copyright © 2019 Alistar. All rights reserved.
//

import UIKit

class ASViewController: UIViewController, ASViewDelegate {
    func actionButtonClicked() {
        let randomNum = arc4random_uniform(100)
        model.content = "改变之后的数据: \(randomNum + 1)"
        sampleView.show(model: model)
    }
    
    
    lazy var sampleView: ASView =  {
        let v =  ASView(frame: self.view.bounds)
        self.view.addSubview(v)
        v.delegate = self
        return v
    }()
    lazy var model = ASModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        model.content = "MVC内容模式"
    
        sampleView.show(model: model)
        
    }
    
    
    
    
    

}
