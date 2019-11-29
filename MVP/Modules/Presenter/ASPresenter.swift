//
//  ASPresenter.swift
//  MVP
//
//  Created by DMR on 2019/11/29.
//  Copyright © 2019 Alistar. All rights reserved.
//

import Foundation


class ASPresenter: NSObject, ASViewDelegate {
    
    var model: ASModel? = nil
    var view: ASView? = nil
    
    
    func usageLogic() {
        view?.show(content: model?.content ?? "")
        view?.delegate = self
    }
    func actionButtonCallBack() {
        let randomNum = arc4random_uniform(20)
        model?.content = "\(randomNum)"
        view?.show(content: model?.content ?? "")
        
    }
    
    
    
    
}
