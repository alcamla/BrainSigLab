//
//  ViewController.swift
//  BrainSigLab
//
//  Created by camacholaverde on 3/27/15.
//  Copyright (c) 2015 gibicgroup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signalsImageButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        signalsImageButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("didTapSignalsImageButton:")))

    }
    
    func didTapSignalsImageButton(tap:UITapGestureRecognizer){
        
        
        //Present the signalsViewController
        let signalsViewController = self.storyboard!.instantiateViewControllerWithIdentifier("signalsViewController") as! GBCSignalsViewController
        
        presentViewController(signalsViewController, animated: true, completion: nil)
        
        
    }


}


extension ViewController: UIViewControllerTransitioningDelegate{
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
}
