//
//  ViewController.swift
//  SlideUpImagePicker
//
//  Created by Leonardo Edelman Wajnsztok on 09/07/15.
//  Copyright (c) 2015 Leonardo Edelman Wajnsztok. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FlatImagePickerViewControllerDelegate {

    var image: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.image = UIImageView(frame: self.view.frame)
        
        var gesture = UITapGestureRecognizer(target: self, action: Selector("flatPicker"))
        self.view.addGestureRecognizer(gesture)
        
        self.view.addSubview(self.image!)
        
    }
    
    func flatPicker() {

        println("1")
        
        var flat = FlatImagePickerViewController(shouldSaveImage: false)
        flat.delegate = self
        self.presentViewController(flat, animated: false, completion: nil)
        
    }

    func FlatimagePickerViewController(imagePicker: FlatImagePickerViewController, didSelectImage image: UIImage) {
        self.image?.image = image
    }
    
}

