//
//  BaseRenderer.swift
//  GenericSample
//
//  Created by Federico Bustos Fierro on 09/05/2019.
//  Copyright © 2019 Federico Bustos Fierro. All rights reserved.
//

import UIKit

class GenericRenderer<CustomComponent: PXComponentizable, CustomView: PXComponentView> {

    private var component : CustomComponent
    var view : CustomView

    init(component: CustomComponent) {
        self.component = component
        self.view = CustomView()
    }

    func render() -> CustomView {
        self.view = CustomView()
        self.view.backgroundColor = getBackgroundColor()
        setUpSubviews()
        return view
    }

    func getBackgroundColor() -> UIColor {
        return .gray
    }

    func setUpSubviews() {
        //must be overriden
    }
}

protocol PXComponentizable {

}

class PXComponentView : UIView {

}
