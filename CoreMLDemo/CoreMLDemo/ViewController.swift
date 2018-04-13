//
//  ViewController.swift
//  CoreMLDemo
//
//  Created by Nasir Ahmed Momin on 13/04/18.
//  Copyright © 2018 Nasir Ahmed Momin. All rights reserved.
//

import UIKit
import AVFoundation
import Vision

//  https://blog.cmgresearch.com/2017/06/22/vision-kit-and-coreml.html

class ViewController: UIViewController {

    @IBOutlet weak var previewView : UIView!
    
    let session = AVCaptureSession()
    
    let captureQueue = DispatchQueue(label: "com.nasir.coreml")
    
    var previewLayer : AVCaptureVideoPreviewLayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let camera = AVCaptureDevice.default(for: .video) else {
            fatalError("No Camera availalbe")
            return;
        }
        
        session.sessionPreset = .high
        
        previewLayer = AVCaptureVideoPreviewLayer(session: session)
        previewView.layer.addSublayer(previewLayer)
        
        let cameraInput = try AVCaptureDeviceInput(device: camera)
    
    }

}

