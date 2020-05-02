//
//  JKMapView.swift
//  JKMap
//
//  Created by 김종권 on 2020/04/29.
//  Copyright © 2020 mustang. All rights reserved.
//

import UIKit

open class UIMapViewBottom: UIControl {
    public var segMap: UISegmentedControl!
    
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
        
        segMap = UISegmentedControl(items: ["standard", "satellite"])
        segMap.selectedSegmentIndex = 0
        addSubview(segMap)
        segMap.translatesAutoresizingMaskIntoConstraints = false
        
        segMap.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        segMap.topAnchor.constraint(equalTo: topAnchor).isActive = true
        segMap.widthAnchor.constraint(equalToConstant: 150).isActive = true
        segMap.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}

