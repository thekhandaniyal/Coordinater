//
//  LoginChildCoordinater.swift
//  CoordinaterWalaPattern
//
//  Created by Admin on 5/28/22.
//

import Foundation
import UIKit

class LoginChildCoordinater: ChildCoordinater {
   weak var parentCoordinater: ParentCoordinater?
    
    func configureChildCoordinater() {
        let loginVC = LoginVC.instansiateWithStoryboard()
        loginVC.loginChildCoordinater = self
        self.navigationController.pushViewController(loginVC, animated: true)
    }
    
    
//    weak var mainCoordinater: MainCoordinater?  //remove for coordinater -3
//    var childCoordinater: [Coordinater] = [Coordinater]() //remove for coordinater -3
    var navigationController: UINavigationController
    
    init(_navigationController: UINavigationController) {
        self.navigationController = _navigationController
    }
    
//    func configureRootViewcontroller() {    //remove for coordinater -3
//        let loginVc = LoginVC.instansiateWithStoryboard()
//        loginVc.loginChildCoordinater = self
//        self.navigationController.pushViewController(loginVc, animated: true)
//    }
    
    
    func navigateToResetPassword() {
        let resetPasswordVc = ResetPasswordVC.instansiateWithStoryboard()
     //   mainCoordinater?.removeFromChildCoordinater(child: self) // not use for this
        self.navigationController.pushViewController(resetPasswordVc, animated: true)
    }
    
    func navigateToSignupVc() {
        let signupVc = SignUpVC.instansiateWithStoryboard()
         //  mainCoordinater?.removeFromChildCoordinater(child: self) // not use for this
        self.navigationController.pushViewController(signupVc, animated: true)
    }
    
    func navigateToHomeVc() {
        let homeVc = HomeChildCoordinater(_navigationCoordinater: navigationController)
        //-3
    
        
        
        // work for -2
//        mainCoordinater?.childCoordinater.append(homeVc)
//        mainCoordinater?.removeFromChildCoordinater(child: self)
        parentCoordinater?.childCoordinaterTwo.append(homeVc)
        parentCoordinater?.removeChildCoorinater(child: self)
        homeVc.configureChildCoordinater()
    }
    
    
}
