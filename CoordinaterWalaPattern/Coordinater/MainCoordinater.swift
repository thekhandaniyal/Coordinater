
import Foundation
import UIKit

class MainCoordinater: ParentCoordinater {
    
    var childCoordinaterTwo: [ChildCoordinater] = []
    
    func configureRootViewController() {
        let loginVC = LoginChildCoordinater(_navigationController: navigationController)
        childCoordinaterTwo.append(loginVC)
        loginVC.parentCoordinater = self
        loginVC.configureChildCoordinater()
    }
    
    func removeChildCoorinater(child: Coordinater) {
        for (index, coordinater) in childCoordinaterTwo.enumerated() {
            print(coordinater === child)
            if (coordinater === child) {
                childCoordinaterTwo.remove(at: index)
                break
            }
        }
    }
    
    
//    var childCoordinater: [Coordinater] = [Coordinater]() //for coordinater -2
    var navigationController: UINavigationController
    
    
    init(_navigation: UINavigationController) {
        self.navigationController = _navigation
    
    }
    
//
//    func configureRootViewcontroller() {   //remove for coordinater -3
//
//        let loginChildVc = LoginChildCoordinater(_navigationController: navigationController)
//
//        childCoordinater.append(loginChildVc)
//        loginChildVc.mainCoordinater = self
//        loginChildVc.configureRootViewcontroller()
//
//        //dif
////        let loginVc = LoginVC.instansiateWithStoryboard()
////        loginVc.mainCoordinater = self
////        loginVc.navigationController?.hidesBarsOnTap = false
////        loginVc.view.backgroundColor = UIColor.blue
////        self.navigationController.pushViewController(loginVc, animated: true)
//    }
    
//    func removeFromChildCoordinater(child: Coordinater) {  // work for coordinater -2
//        for (index, coordinater) in childCoordinater.enumerated() {
//            print(coordinater === child)
//            if (coordinater === child) {
//                childCoordinater.remove(at: index)
//                break
//            }
//        }
//    }
    
//
//    func navigateToResetpassword() { // work for coordinater -1
//        let resetPasswordvc = ResetPasswordVC.instansiateWithStoryboard()
//        self.navigationController.pushViewController(resetPasswordvc, animated: true)
//    }
//
//    func navigateToSignUpVc() {
//        let signUpVc = SignUpVC.instansiateWithStoryboard()
//        self.navigationController.pushViewController(signUpVc, animated: true)
//    }
//
//    func navigateToHomeVc() {
//        let homeVc = HomeVC.instansiateWithStoryboard()
//        self.navigationController.pushViewController(homeVc, animated: true)
//    }
    
}
