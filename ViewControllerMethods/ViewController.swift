//
//  ViewController.swift
//  CircleButton
//
//  Created by Lawrence F MacFadyen on 2015-09-02.
//  Copyright © 2015 LawrenceM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var editButton: UIButton!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        let alert = UIAlertController(title: "Circular Button", message: "You clicked the button.", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //configureButton() // NOT HERE
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //configureButton() // NOT HERE
    }
    
    override func viewDidLayoutSubviews() {
        configureButton() // HERE AFTER BUTTON BOUNDS ARE KNOWN
    }
    
    func configureButton()
    {
        editButton.layer.cornerRadius = 0.5 * editButton.bounds.size.width
        editButton.layer.borderColor = UIColor(red:0.0/255.0, green:122.0/255.0, blue:255.0/255.0, alpha:1).CGColor as CGColorRef
        editButton.layer.borderWidth = 2.0
        editButton.clipsToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

