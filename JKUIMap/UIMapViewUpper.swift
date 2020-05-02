//
//  JKMapView.swift
//  JKMap
//
//  Created by 김종권 on 2020/04/29.
//  Copyright © 2020 mustang. All rights reserved.
//

import UIKit

open class UIMapViewUpper: UIControl {
    public var sideBtn: UIButton!
    public var menuBtn: UIButton!
    public var segFlow: UISegmentedControl!
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    init() {
        super.init(frame: CGRect.zero)
        self.setup()
    }
    
    private func setup() {
        let interval: CGFloat = 25
        
        sideBtn = UIButton()
        sideBtn.setImage(.actions, for: .normal)
        addSubview(sideBtn)
        sideBtn.anchor(top: topAnchor, right: nil, bottom: nil, left: leftAnchor,
                       padding: .init(top: interval, left: interval, bottom: 0, right: 0),
                       size: .init(width: 20, height: 20))
        
        menuBtn = UIButton()
        menuBtn.setImage(.add, for: .normal)
        addSubview(menuBtn)
        menuBtn.anchor(top: sideBtn.topAnchor, right: rightAnchor, bottom: nil, left: nil,
                       padding: .init(top: 0, left: 0, bottom: 0, right: interval),
                       size: .init(width: 20, height: 20))
        
        segFlow = UISegmentedControl(items: ["start", "stop"])
        segFlow.selectedSegmentIndex = 0
        addSubview(segFlow)
        
        segFlow.translatesAutoresizingMaskIntoConstraints = false
        segFlow.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        segFlow.topAnchor.constraint(equalTo: sideBtn.topAnchor).isActive = true
        segFlow.widthAnchor.constraint(equalToConstant: 150).isActive = true
        segFlow.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }

}


extension UIControl {
    func anchor(top: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -padding.right).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: padding.left).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
            
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        
        
    }
}
