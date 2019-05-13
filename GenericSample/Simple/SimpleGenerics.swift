//
//  SimpleGenerics.swift
//  GenericSample
//
//  Created by Federico Bustos Fierro on 09/05/2019.
//  Copyright © 2019 Federico Bustos Fierro. All rights reserved.
//

import UIKit

class SimpleGenerics {

    //sample
    class func addUnderline<T:UIView>(to view: T) -> T {
        let initialSize = view.frame.size
        let underlineFrame =  CGRect(x: 0,
                                     y: initialSize.height - 30,
                                     width: initialSize.width,
                                     height: 30)
        let underlineView = UIView(frame:underlineFrame)
        underlineView.backgroundColor = .black
        view.addSubview(underlineView)
        return view
    }
}

class SimpleViewController <View: UIView> : UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = .white
        let initialSize = view.frame.size
        let subViewFrame =  CGRect(x: 100,
                                 y: 200,
                                 width: initialSize.width - 200,
                                 height: initialSize.height - 400)
        let subview = View(frame: subViewFrame)
        self.view.addSubview(subview)
    }

}

// example of type asignation
class SwitchViewController: SimpleViewController<UISwitch> {

}
