//
//  ViewController.swift
//  RevealingSplashViewSample
//
//  Created by Chris Jimenez on 2/25/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit
import RevealingSplashView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "twitterLogo")!,iconInitialSize: CGSizeMake(70, 70), backgroundColor: UIColor(rgba:"#1D8FF1"))
        
        self.view.addSubview(revealingSplashView)
        
        revealingSplashView.duration = 0.9
        
        revealingSplashView.animationType = SplashAnimationType.SwingAndZoomOut
    
        revealingSplashView.startAnimation(){
            
            print("Completed")
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

