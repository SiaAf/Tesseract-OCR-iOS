//
//  ViewController.swift
//  TextRecognition3
//
//  Created by Siavash Aflaki on 30/11/2017.
//  Copyright © 2017 Siavash Aflaki. All rights reserved.
//

import UIKit
import TesseractOCR

class ViewController: UIViewController,G8TesseractDelegate {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let tessarect = G8Tesseract(language:"eng") {
            tessarect.delegate = self
            tessarect.image = UIImage(named:"saskia-1")?.g8_blackAndWhite()
            tessarect.recognize()
            textView.text = tessarect.recognizedText
        }
        
    }
    func progressImageRecognition(for tesseract: G8Tesseract!) {
        print("Recognition Progress \(tesseract.progress)%")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

