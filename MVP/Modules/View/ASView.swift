//
//  ASView.swift
//  MVP
//
//  Created by DMR on 2019/11/28.
//  Copyright © 2019 Alistar. All rights reserved.
//

import UIKit


@objc protocol ASViewDelegate {
    func actionButtonCallBack()
}

class ASView: UIView {
    
    weak var delegate: ASViewDelegate?
    
    
    lazy var titleLbl: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 40))
        lbl.textAlignment = .center
        lbl.text = "我是标题,又TM卡了吧"
        lbl.textColor = UIColor.systemIndigo
        
        return lbl;
    }()
    
    lazy var actionBtn: UIButton = {
        let btn = UIButton(type: .system)
        let x: CGFloat = 20
        btn.frame = CGRect(x: x, y: 400, width: UIScreen.main.bounds.width - 2 * x, height: 44)
        btn.setTitle("我是按钮", for: .normal)
        btn.backgroundColor = UIColor.systemTeal
        btn.setTitleColor(.red, for: .normal)
        btn.addTarget(self, action: #selector(onActionButton), for: .touchUpInside)
        return btn
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.purple
        addSubview(titleLbl)
        addSubview(actionBtn)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    func show(content: String) {
        titleLbl.text = content
    }
    
    @objc func onActionButton() {
        delegate?.actionButtonCallBack()
    }
    
}
