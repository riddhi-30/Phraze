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
    
    var caption = ["Dog":"Noun","Drinking":"Verb","Water":"Noun"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.clipsToBounds = true
        againButton.clipsToBounds = true
        display.layer.cornerRadius = 35
        againButton.layer.cornerRadius = 12.89
        resultTV.delegate = self
        resultTV.dataSource = self
        
        pickedImage.image = Image
        pickedImage.clipsToBounds = true
        pickedImage.layer.cornerRadius = 50

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return caption.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ResultTableViewCell
        cell.setData(forWord: Array(caption.keys)[indexPath.row] , ofType: Array(caption.values)[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 63
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let word = Array(caption.keys)[indexPath.row]
        if UIReferenceLibraryViewController.dictionaryHasDefinition(forTerm: word) {
            let ref: UIReferenceLibraryViewController = UIReferenceLibraryViewController(term: word)
            self.present(ref, animated: true, completion: nil)
        }
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popToViewController((self.navigationController?.viewControllers.first(where: {$0 is WelcomeViewController}))!, animated: true)
    }
    
    
}
