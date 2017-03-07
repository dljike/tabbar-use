//
//  ThreeViewController.swift
//  MySwifTest
//
//  Created by 杜博 on 2016/12/21.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {

    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // There is a bug in iOS 7.x (fixed in iOS 8) which causes the
        // topLayoutGuide to not be properly resized if the prompt is set before
        // -viewDidAppear: is called. This may result in the navigation bar
        // improperly overlapping your content.  For this reason, you should
        // avoid configuring the prompt in your storyboard and instead configure
        // it programmatically in -viewDidAppear: if your application deploys
        // to iOS 7.
        navigationItem.prompt = "Navigation prompts appear at the top."
    }

    
    
    var  startData:(()->Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.view.backgroundColor = UIColor.white
        
//
//        let lab = UILabel(frame: .init(x: 10, y: 100, width: 200, height: 20))
//        self.view.addSubview(lab)
//        lab.text = LanguageHelper.getString(key: "GOOD_MORNING")
        
        
        
        
    
    }
    
    func buttonAction() -> Void{
        
        
//        self.startData!()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
