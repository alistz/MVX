//
//  ASViewModel.swift
//  MVVMDemo
//
//  Created by DMR on 2019/11/28.
//  Copyright © 2019 Alistar. All rights reserved.
//

import UIKit

class ASViewModel: NSObject {
    
    
    @objc dynamic var msg: String?
    var model: ASModel!
    
    public func setModel(_ model: ASModel) {
        self.model = model;
        msg    = model.content
        
    }
    public func viewModelButtonClicked() {
        let randomNum = arc4random_uniform(20)
        model.content = "\(randomNum)"
        msg = model.content
    }
}
