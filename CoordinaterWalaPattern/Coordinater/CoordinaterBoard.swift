
import Foundation
import UIKit


protocol CoordinaterBoard {
    static func instansiateWithStoryboard() -> Self
}

extension CoordinaterBoard {
    static func instansiateWithStoryboard() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let id = String(describing: self)
        let vc = storyboard.instantiateViewController(withIdentifier: id) as! Self
        return vc
    }
}
