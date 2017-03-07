//
//  ViewController.swift
//  MySwifTest
//
//  Created by mac on 16/11/15.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,getdataDelegate {
    var lab: UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()

      self.view.backgroundColor = UIColor.white
    
        
//        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.changeLanguage), name: NSNotification.Name(rawValue: "LanguageChanged"), object: nil)
//        
//        
//        
//      let button = UIButton(frame:CGRect(x:10, y:150, width:50, height:50))
//      button.addTarget(self, action: #selector(ViewController.changelangage2), for: UIControlEvents.touchUpInside)
//        
//        self.view.addSubview(button)
//        button.backgroundColor = UIColor.red
//        
//        
//        
//        let button2 = UIButton(frame:CGRect(x:100, y:150, width:100, height:30))
//        button2.addTarget(self, action: #selector(ViewController.changelangage), for: UIControlEvents.touchUpInside)
//        
//        self.view.addSubview(button2)
//        button2.backgroundColor = UIColor.green
//  
//        
//        
//         lab = UILabel.init(frame: .init(x: 10, y: 100, width: 300, height: 20))
//        self.view.addSubview(lab!)
//        
////        lab.text = NSLocalizedString("GOOD_MORNING",comment:"default")
//        lab?.text = LanguageHelper.getString(key: "GOOD_MORNING")
        
    }
    
    
    

    func changeLanguage() -> Void {
        lab?.text = LanguageHelper.getString(key: "GOOD_MORNING")

    }
    func changelangage() -> Void {
        LanguageHelper.shareInstance.setLanguage(langeuage: "en")
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "LanguageChanged"), object: nil)
    }
    func changelangage2() -> Void {
        LanguageHelper.shareInstance.setLanguage(langeuage: "zh-Hans")
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "LanguageChanged"), object: nil)
    }

    
    
    
    
    func dubo() -> Void {
        let two = ThreeViewController()
        two.startData = {
            () -> Void in
            
        }
        
        
//        // 代理3
//        two.deletage = self
//        // block 3
//        two.getdatBck = { str in
//            print(str)
//        }
        
        self.navigationController?.pushViewController(two, animated: true)
    }
    // 代理4
    func getdata() {
        
    }
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

