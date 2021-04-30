//
//  ViewController.swift
//  Phraze
//
//  Created by riddhi gupta on 01/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var getSTart: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "Landing-Illust"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        getSTart.layer.cornerRadius = 12.89
        getSTart.clipsToBounds = true
        // Do any additional setup after loading the view.
    }

    @IBAction func getStarted(_ sender: Any) {
        performSegue(withIdentifier: "start", sender: self)
    }
    
}

