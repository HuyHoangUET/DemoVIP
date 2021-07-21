//
//  FirstSceneInteracter.swift
//  DemoVIP
//
//  Created by Phạm Hoàng on 21/07/2021.
//

import Foundation
import UIKit

protocol FirstSceneInteratorLogic {
    func changeButtonBackgroundCollor(button: UIButton)
}

final class FirtSceneInteractor {
    weak var presenter: FirstViewPresentationLogic!
    weak var router: FirstSceneRoutingLogic!
    private var woker: FirstSceneWorkerLogic!
    
    required init(withWoker woker: FirstSceneWorkerLogic) {
        self.woker = woker
    }
}

extension FirtSceneInteractor: FirstSceneInteratorLogic {
    func changeButtonBackgroundCollor(button: UIButton) {
        button.backgroundColor = (button.backgroundColor == UIColor.red) ? UIColor.blue : UIColor.red
    }
    
    
}
