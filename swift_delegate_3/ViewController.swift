//
//  ViewController.swift
//  swift_delegate_3
//
//  Created by Felix 05 on 30/12/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UpdateLabelTextDelegate {
    
    
    @IBOutlet weak var label: UILabel!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as! NextViewController
        next.delegate = self
    }
    func updateLabelText(withText text: String)  {
        label.text = text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

