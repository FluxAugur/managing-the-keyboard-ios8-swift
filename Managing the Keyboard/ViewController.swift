//
//  ViewController.swift
//  Managing the Keyboard
//
//  Created by Nathanial L. McConnell on 9/19/14.
//  Copyright (c) 2014 Nathanial L. McConnell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var textEntered: UITextField!

  @IBAction func buttonPressed(sender: AnyObject) {
    label.text = textEntered.text
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    self.view.endEditing(true)
  }

  func textEnteredShouldReturn(textEntered: UITextField!) -> Bool {
    textEntered.resignFirstResponder()
    return true
  }
}

