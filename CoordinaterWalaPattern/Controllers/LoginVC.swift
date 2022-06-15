
import UIKit

class LoginVC: UIViewController, CoordinaterBoard {

    private var loginViewModel : LoginViewModel? = nil
    weak var loginChildCoordinater: LoginChildCoordinater?

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginViewModel = LoginViewModel()
        title = "Login"
        
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapResetPassword(_ sender: Any) {
        loginChildCoordinater?.navigateToResetPassword()
    }

    @IBAction func didTapSignUp(_ sender: Any) {
        loginChildCoordinater?.navigateToSignupVc()
    }

    @IBAction func didTapLogin(_ sender: Any) {
        loginChildCoordinater?.navigateToHomeVc()
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
