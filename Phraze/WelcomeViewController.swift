//
//  WelcomeViewController.swift
//  Phraze
//
//  Created by riddhi gupta on 01/05/21.
//

import UIKit

class WelcomeViewController: UIViewController, ImagePickerDelegate {
    
    @IBOutlet weak var bg: UIView!
    @IBOutlet weak var takePic: UIButton!
    @IBOutlet weak var uploadPic: UIButton!
    @IBOutlet weak var heading: UILabel!
    
    
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
        let imageName = "X - 4"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        bg.layer.cornerRadius = 35
        bg.clipsToBounds = true
        uploadPic.layer.cornerRadius = 12.89
        takePic.layer.cornerRadius = 12.89
        uploadPic.clipsToBounds = true
        takePic.clipsToBounds = true
        uploadPic.layer.borderWidth = 2
        uploadPic.layer.borderColor = UIColor(red: 0.372, green: 0.181, blue: 0.917, alpha: 1).cgColor
        
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func takePicture(_ sender: Any) {
        let sender = sender as! UIButton
        self.imagePicker.present(from: sender, for: .camera)
    }
    
    @IBAction func uplaod(_ sender: Any) {
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


