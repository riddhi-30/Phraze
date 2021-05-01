//
//  ConvertViewController.swift
//  Phraze
//
//  Created by riddhi gupta on 01/05/21.
//

import UIKit

class ConvertViewController: UIViewController, ImagePickerDelegate {

    @IBOutlet weak var takePic: UIButton!
    @IBOutlet weak var uploadPic: UIButton!
    
    var imagePicker: ImagePicker!
    
    var pickedImage = UIImage(){
        didSet{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
                self.performSegue(withIdentifier: "results", sender: self)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "Home Illustration"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        
        uploadPic.layer.cornerRadius = 12.89
        takePic.layer.cornerRadius = 12.89
        uploadPic.clipsToBounds = true
        takePic.clipsToBounds = true
        uploadPic.layer.borderWidth = 2
        uploadPic.layer.borderColor = UIColor(red: 0.372, green: 0.181, blue: 0.917, alpha: 1).cgColor
        
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func camera(_ sender: Any) {
        let sender = sender as! UIButton
        self.imagePicker.present(from: sender, for: .camera)
    }
    
    @IBAction func gallery(_ sender: Any) {
        let sender = sender as! UIButton
        self.imagePicker.present(from: sender, for: .photoLibrary)
    }
    
    func didSelect(image: UIImage?) {
        if let image = image{
            let imgV = UIImageView()
            imgV.image = image
            self.pickedImage = imgV.image!
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "results"{
            let vc = segue.destination as! ResultViewController
            vc.Image = pickedImage
        }
    }

    

}
