//
//  SegueViewController.swift
//  SegueInSwift
//
//  Created by keisuke on 12/6/15.
//  Copyright © 2015 keisuke. All rights reserved.
//

import UIKit

class SegueViewController: UIViewController
{
    
    //MARK: - Outlets
    @IBOutlet weak var greetingLabel: UILabel!
    
    // MARK: - Properties
    var greeting: String? {
        didSet {
            greetingLabel.text = greeting
        }
    }

    // MARK: - SegueViewController lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
