//
//  FirstSceneViewController.swift
//  DemoVIP
//
//  Created by Phạm Hoàng on 21/07/2021.
//

import Foundation
import UIKit

protocol FirstViewPresentationLogic: AnyObject {
    func changeButtonBackgroundCollor(button: UIButton)
}

final class FirstSceneViewController: UIViewController {
    var interactor: FirstSceneInteratorLogic!
    var router: FirstSceneRoutingLogic!
    // MARK: Outlet
    @IBOutlet weak var clickButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction
    @IBAction func clickAction(_ sender: Any) {
        changeButtonBackgroundCollor(button: clickButton)
    }
    @IBAction func nextAction(_ sender: Any) {
        showSecondScene()
    }
}

extension FirstSceneViewController: FirstViewPresentationLogic {
    func changeButtonBackgroundCollor(button: UIButton) {
        interactor.changeButtonBackgroundCollor(button: button)
    }
    
    func showSecondScene() {
        router.showSecondScene()
    }
    
    
}


