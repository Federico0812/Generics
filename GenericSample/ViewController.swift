//
//  ViewController.swift
//  GenericSample
//
//  Created by Federico Bustos Fierro on 08/05/2019.
//  Copyright © 2019 Federico Bustos Fierro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoadingProtocol {

    let manager = GenericManager()

    @IBAction func action1(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            let vc = manager.createViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let textView = manager.createTextview()
            self.view.addSubview(textView)
        case 2:
            let service = manager.createService()
        case 3:
            let vc = manager.createViewModelWithVC()
            self.navigationController?.pushViewController(vc, animated: true)
        case 4:
            let frame = CGRect(x:250,y:0,width:100,height:200)
            let view = manager.createViewModelWithView()
            view.frame = frame
            self.view.addSubview(view)
            view.viewModel?.fetchData()
        case 5:
            let frame = CGRect(x:250,y:300,width:100,height:200)
            let view = manager.createRenderer()
            view.frame = frame
            self.view.addSubview(view)
        default:
            break
        }
    }

}

