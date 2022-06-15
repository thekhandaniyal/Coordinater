
import Foundation
import UIKit

protocol Coordinater: AnyObject {
    var navigationController: UINavigationController {get set}
}


protocol ParentCoordinater: Coordinater {
    
    var childCoordinaterTwo: [ChildCoordinater] {get set}
   // var navigationController: UINavigationController {get set}
    func configureRootViewController()
    func removeChildCoorinater(child: Coordinater)
}

protocol ChildCoordinater: Coordinater {
    
    var parentCoordinater: ParentCoordinater? {get set}
 //   var navigationController: UINavigationController {get set}
    func configureChildCoordinater()
}
