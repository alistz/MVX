//
//  ASView.swift
//  MVC
//
//  Created by DMR on 2019/12/1.
//  Copyright © 2019 Alistar. All rights reserved.
//

import UIKit


@objc protocol ASViewDelegate {
    func actionButtonClicked()
}

class ASView: UIView {
    
    weak var delegate: ASViewDelegate?
    
    
    lazy var titleLbl: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 40))
        lbl.textColor = UIColor.systemTeal
        lbl.textAlignment = .center
        return lbl
    }()
    
    lazy var actionBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("我是按钮🔘", for: .normal)
        btn.setTitleColor(.darkGray, for: .normal)
        btn.frame = CGRect(x: 15, y: 300, width: UIScreen.main.bounds.width - 2 * 15, height: 44)
        btn.addTarget(self, action: #selector(onActionButton), for: .touchUpInside)
        btn.backgroundColor = UIColor.systemGreen
        return btn
    }()
    
    
    func show(model: ASModel) {
        
        titleLbl.text = model.content
        print("在view中需要显示的内容:\(model.content ?? "")")
    }


    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.systemIndigo
        addSubview(titleLbl)
        addSubview(actionBtn)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    @objc private func onActionButton() {
        delegate?.actionButtonClicked()
    }
}
