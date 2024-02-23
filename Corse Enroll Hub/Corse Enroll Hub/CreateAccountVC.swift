//
//  CreateAccountVC.swift
//  Corse Enroll Hub
//
//  Created by Varshitha Nalluri on 2/23/24.
//

import UIKit

class CreateAccountVC: UIViewController {

    
    @IBOutlet weak var CreateemailTF: UITextField!
    
    @IBOutlet weak var CreatepasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func CreateAccountBTN(_ sender: UIButton) {
        updateCreateAccountButtonState()
    }
    func updateCreateAccountButtonState() {
           if let emailText = CreateemailTF.text, let passwordText = CreatepasswordTF.text {
                    if let button = view.subviews.first(where: { $0 is UIButton }) as? UIButton {
                        button.isEnabled = !emailText.isEmpty && !passwordText.isEmpty
                    }
                }
        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}