//
//  ASViewController.swift
//  MVVMDemo
//
//  Created by DMR on 2019/11/28.
//  Copyright © 2019 Alistar. All rights reserved.
//

import UIKit

class ASViewController: UIViewController {
    
    
    lazy var sampleView: ASView = {
        let v = ASView(frame:view.bounds)
        self.view.addSubview(v)
        return v
    }()
    lazy var viewModel  = ASViewModel()
    
    lazy var model: ASModel = {
        let m = ASModel()
        return m
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.content = "MVVM架构"
        viewModel.setModel(model)
        sampleView.show(viewModel)

        
    }
    
}
