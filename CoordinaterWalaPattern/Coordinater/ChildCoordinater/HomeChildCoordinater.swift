//
//  HomeChildCoordinater.swift
//  CoordinaterWalaPattern
//
//  Created by Admin on 5/28/22.
//

import Foundation
import UIKit

class HomeChildCoordinater: ChildCoordinater
{
    var parentCoordinater: ParentCoordinater?
    
    func configureChildCoordinater() {
        let homeVc = HomeVC.instansiateWithStoryboard()
        navigationController.pushViewController(homeVc, animated: true)
    }
    
//    var childCoordinater: [Coordinater] = [Coordinater]() // -2
    
    var navigationController: UINavigationController
    
    
    init(_navigationCoordinater: UINavigationController) {
        self.navigationController = _navigationCoordinater
    }
    
//    func configureRootViewcontroller() {   // -2
//
//        let homeVc = HomeVC.instansiateWithStoryboard()
//        self.navigationController.pushViewController(homeVc, animated: true)
//
//    }
    

}
