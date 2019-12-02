//
//  ASView.swift
//  MVVMDemo
//
//  Created by DMR on 2019/11/28.
//  Copyright © 2019 Alistar. All rights reserved.
//

import UIKit

class ASView: UIView {

    lazy var contentLbl: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 0, y: 300, width: UIScreen.main.bounds.width, height: 30))
        lbl.textAlignment = .center
        lbl.textColor = UIColor.black
        lbl.text = "我是来打酱油的吗～～～"
        return lbl
    }()
    
    lazy var printBtn: UIButton = {
        let btn = UIButton(frame: CGRect(x: 15, y: 400, width: UIScreen.main.bounds.width - 30, height: 44))
        btn.setTitle("我是🔘按钮", for: .normal)
        btn.backgroundColor = UIColor.lightGray
        btn.addTarget(self, action: #selector(onButtonAction), for: .touchUpInside)
        return btn
    }()
    
    var vm: ASViewModel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.systemPink
        addSubview(printBtn)
        addSubview(contentLbl)
    
    }

    
    open func show(_ vm: ASViewModel) {
        self.vm = vm
        // 添加观察者
        vm.addObserver(self, forKeyPath: "msg", options: [.initial, .new], context: nil)
        
    }

    @objc private func onButtonAction() {
        vm.viewModelButtonClicked()
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "msg" {
            guard let change = change else {
                return
            }
            self.contentLbl.text = change[.newKey] as? String
        }
    }
    


}
