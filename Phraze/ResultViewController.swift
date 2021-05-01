//
//  ResultViewController.swift
//  Phraze
//
//  Created by riddhi gupta on 01/05/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var display: UIView!
    @IBOutlet weak var pickedImage: UIImageView!
    @IBOutlet weak var againButton: UIButton!
    
    var Image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.clipsToBounds = true
        againButton.clipsToBounds = true
        display.layer.cornerRadius = 35
        againButton.layer.cornerRadius = 12.89
        
        pickedImage.image = Image

    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popToViewController((self.navigationController?.viewControllers.first(where: {$0 is WelcomeViewController}))!, animated: true)
    }
    
    
}
