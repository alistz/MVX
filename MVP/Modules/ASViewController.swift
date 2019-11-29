//
//  ASViewController.swift
//  MVP
//
//  Created by DMR on 2019/11/29.
//  Copyright © 2019 Alistar. All rights reserved.
//

import UIKit

class ASViewController: UIViewController {
    
    
    lazy var sampleView: ASView = {
        let v = ASView(frame: view.bounds)
        view.addSubview(v)
        return v
    }()
    
    lazy var model: ASModel = {
        let m = ASModel()
        return m
    }()
    
    lazy var presenter = ASPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        model.content = "我可能是一个标题，哈哈哈"
        presenter.view = sampleView
        presenter.model = model
        presenter.usageLogic()
        
        
    }
    


}
