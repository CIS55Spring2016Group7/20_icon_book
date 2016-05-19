//
//  ViewController_002.swift
//  20 Icon Reduced
//
//  Created by Lee Blevins on 5/9/16.
//  Copyright © 2016 DeAnza. All rights reserved.
//

import UIKit

class ViewController_002: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      let page_two = UIImageView()
      page_two.image = UIImage(named: "Page_002")
      page_two.frame = CGRect(x: 0.0, y: 0.0, width: 500.00, height: 200.0)
      self.view.addSubview(page_two)

//      let button   = UIButton(type: UIButtonType.System) as UIButton
//      button.frame = CGRectMake(100, 100, 100, 50)
//      button.backgroundColor = UIColor.greenColor()
//      button.setTitle("Test Button", forState: UIControlState.Normal)
//      button.addTarget(self, action: #selector(ViewController_002.buttonAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
//
//      self.view.addSubview(button)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//   func buttonAction(sender:UIButton!)
//   {
//      print("Button tapped")
//      let vc : AnyObject! = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController_002")
//      self.showViewController(vc as! UIViewController, sender: vc)
//   }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
