//
//  FirstSceneRouter.swift
//  DemoVIP
//
//  Created by Phạm Hoàng on 21/07/2021.
//

import Foundation
import UIKit

protocol FirstSceneRoutingLogic: AnyObject {
    func showSecondScene()
}

final class FirstSceneRouter: FirstSceneRoutingLogic {
    weak var viewcontroller: FirstSceneViewController!
    
    func showSecondScene() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let secondScene = storyBoard.instantiateViewController(withIdentifier: "SecondSceneViewController")
        viewcontroller.present(secondScene, animated: true, completion: nil)
    }
}
