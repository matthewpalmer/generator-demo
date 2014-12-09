//
//  ViewController.swift
//  GeneratorDemo
//
//  Created by Matthew Palmer on 9/12/2014.
//  Copyright (c) 2014 Matthew Palmer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var view3: UIView!
    @IBOutlet var view4: UIView!
    @IBOutlet var view5: UIView!
    @IBOutlet var view6: UIView!
    @IBOutlet var view7: UIView!
    @IBOutlet var view8: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let listOfViews = [view1, view2, view3, view4, view5, view6, view7, view8]
        let colorGenerator = ColorGenerator(hue: 0.0, saturation: 0.8, brightness: 0.9, alpha: 1.0, increment: 0.04)
        
        listOfViews.map({
            $0.backgroundColor = colorGenerator.next()!
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
