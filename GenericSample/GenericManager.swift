//
//  GenericManager.swift
//  GenericSample
//
//  Created by Federico Bustos Fierro on 08/05/2019.
//  Copyright © 2019 Federico Bustos Fierro. All rights reserved.
//

import UIKit

class GenericManager {

    // simple generics in functions
    func createTextview() -> UITextView {
        let frame = CGRect(x:0,y:0,width:100,height:200)
        let textView = UITextView(frame: frame)
        let newTV = SimpleGenerics.addUnderline(to: textView)
        return newTV
    }

    // simple generics in class
    func createViewController() -> UIViewController {
        let vc = SimpleViewController<UISlider>()
        return vc
    }

    // service call
    func createService() -> CustomService {
        let service = CustomService { model in
            print("my value is: \(model.key)")
        }
        return service
    }

    // view model auto loading behaviour
    func createViewModelWithVC() -> CustomViewController {
        let vc = CustomViewController()
        return vc
    }

    // view model custom loading behaviour
    func createViewModelWithView() -> CustomView {
        let view = CustomView()
        return view
    }

    //renderer example
    func createRenderer() -> PXComponentView {
        let component = SpecificComponent()
        let view = PXErrorRenderer(component: component).render()
        return view
    }
}

//MARK: Generic Service



