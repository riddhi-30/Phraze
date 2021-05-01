//
//  SignUpViewController.swift
//  Phraze
//
//  Created by riddhi gupta on 01/05/21.
//

import UIKit
import MaterialComponents.MaterialTextControls_OutlinedTextAreas
import MaterialComponents.MaterialTextControls_OutlinedTextFields

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "Form Illustration"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        
        let estimatedFrameee = CGRect(x: 21, y: 278, width: 333, height: 55)
        let nametextField = MDCOutlinedTextField(frame: estimatedFrameee)
        nametextField.label.text = "Name"
        nametextField.placeholder = "John George"
        nametextField.sizeToFit()
        view.addSubview(nametextField)
        
        let estimatedFrame = CGRect(x: 21, y: 358, width: 333, height: 55)
        let textField = MDCOutlinedTextField(frame: estimatedFrame)
        textField.label.text = "Email-id"
        textField.placeholder = "example@xyz.com"
        textField.sizeToFit()
        view.addSubview(textField)
        
        let estimatedFramee = CGRect(x: 21, y: 438, width: 333, height: 55)
        let passtextField = MDCOutlinedTextField(frame: estimatedFramee)
        passtextField.label.text = "Password"
        passtextField.placeholder = "Must contain 8 characters"
        passtextField.sizeToFit()
        view.addSubview(passtextField)

        // Do any additional setup after loading the view.
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
