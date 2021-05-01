//
//  ResultViewController.swift
//  Phraze
//
//  Created by riddhi gupta on 01/05/21.
//

import UIKit

class ResultViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var display: UIView!
    @IBOutlet weak var pickedImage: UIImageView!
    @IBOutlet weak var againButton: UIButton!
    
    @IBOutlet weak var resultTV: UITableView!
    var Image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.clipsToBounds = true
        againButton.clipsToBounds = true
        display.layer.cornerRadius = 35
        againButton.layer.cornerRadius = 12.89
        resultTV.delegate = self
        resultTV.dataSource = self
        
        pickedImage.image = Image

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ResultTableViewCell
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 63
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popToViewController((self.navigationController?.viewControllers.first(where: {$0 is WelcomeViewController}))!, animated: true)
    }
    
    
}
