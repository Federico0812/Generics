//
//  CustomRenderer.swift
//  GenericSample
//
//  Created by Federico Bustos Fierro on 09/05/2019.
//  Copyright © 2019 Federico Bustos Fierro. All rights reserved.
//

import UIKit

class PXErrorRenderer : GenericRenderer<SpecificComponent, SpecificView> {
    override func setUpSubviews() {
        // use elements of px component to set up your pxview
        let label = UILabel()
        label.text = "CUSTOM"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 30)
        label.textColor = .white
        self.view.addSubview(label)
    }

    override func getBackgroundColor() -> UIColor {
        return .red
    }
}

class SpecificComponent : PXComponentizable {

}

class SpecificView : PXComponentView {

}
