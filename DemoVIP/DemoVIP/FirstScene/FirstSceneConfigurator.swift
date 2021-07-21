//
//  FirstSceneConfigurator.swift
//  DemoVIP
//
//  Created by Phạm Hoàng on 21/07/2021.
//

import Foundation

final class FirstSceneConfigurator {
    class func viewcontroller(viewController: FirstSceneViewController) -> FirstSceneViewController {
        let interactor = FirtSceneInteractor(withWoker: FirstSceneWorker())
        let router = FirstSceneRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        
        interactor.presenter = viewController
        interactor.router = router
        
        router.viewcontroller = viewController
        
        return viewController
    }
}
