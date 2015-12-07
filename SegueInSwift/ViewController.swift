//
//  ViewController.swift
//  SegueInSwift
//
//  Created by keisuke on 12/6/15.
//  Copyright © 2015 keisuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private struct Greeting {
        static let Morning = "Show Morning Greeting"
        static let Lunch = "Show Lunchtime Greeting"
        static let Evening = "Show Evening Greeting"
    }
    
    //MARK: - PrepareForSegue method
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let svc = segue.destinationViewController as? SegueViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case Greeting.Morning:
                        svc.greeting = "Good Morning!"
                    case Greeting.Lunch:
                        svc.greeting = "Hello!"
                    case Greeting.Evening:
                        svc.greeting = "Good Evening!"
                    default: break
                }
            }
        }
    }


}

