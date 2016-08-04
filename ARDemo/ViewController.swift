//
//  ViewController.swift
//  ARDemo
//
//  Created by Mohammad Azam on 8/4/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePickerViewController :UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imagePickerViewController = UIImagePickerController()
        self.imagePickerViewController.delegate = self
        self.imagePickerViewController.sourceType = .Camera
        
        let imgView = UIImageView(image: UIImage(named: "pokeman.jpg"))
        imgView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        self.imagePickerViewController.cameraOverlayView = imgView
    
    }
    
    @IBAction func launchARButtonPressed() {
        
          self.presentViewController(self.imagePickerViewController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

