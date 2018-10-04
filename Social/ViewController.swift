//
//  ViewController.swift
//  Social
//
//  Created by Trevor Anderson on 9/13/18.
//  Copyright © 2018 Trevor Anderson. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class ViewController: UIViewController {
    
    @IBOutlet weak var userImgView: UIImageView!
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    let ref = Database.database().reference()
    var imagePicker: UIImagePickerController!
    var selectedImage: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let _ = KeychainWrapper.standard.object(forKey: "uid") {
            self.performSegue(withIdentifier: "toFeed", sender: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func storeUserData(userId: String) {
        // Upload the file to the path "images/rivers.jpg"
        let downloadURL: String!
        let uploadTask = riversRef.putData(data, metadata: nil) { (metadata, error) in
            guard let metadata = metadata else {
                // Uh-oh, an error occurred!
                return
            }
            // Metadata contains file metadata such as size, content-type.
            let downloadURL = metadata.downloardURL
            
                }
        
    
        
       self.ref.child("users").child(userId).setValue([
        "username": usernameField.text,
        "userImg": downloadURL])
        
    }
    @IBAction func signInPressed(_ sender: Any) {
        if let email = emailField.text, let password = passwordField.text
        {
            
            Auth.auth().signIn(withEmail: email, password: password) { (user, error)
                in
                if error != nil && !(self.usernameField.text?.isEmpty)! &&
                    self.userImgView.image != nil {
                    Auth.auth().createUser(withEmail: email, password: password)
                    {
                        (authResult, error) in
              //          self.storeUserData(userId: (user?.user.uid)!)
                        KeychainWrapper.standard.set((user?.user.uid)!, forKey: "uid")
                        self.performSegue(withIdentifier: "toFeed", sender: nil)
                            
                        
                    }
                } else {
                    if let userId = user?.user.uid {
                        KeychainWrapper.standard.set((user?.user.uid)!, forKey: "uid")
                        self.performSegue(withIdentifier: "toFeed", sender: nil)
                    }
                }
            }
        }
    }
}

extension ViewController: UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [String : Any]) {
    if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
    selectedImage = image
    }
        imagePicker.dismiss(animated: true, completion: nil)
}
    
}

