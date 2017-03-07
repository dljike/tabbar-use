//
//  TwoViewController.swift
//  MySwifTest
//
//  Created by mac on 16/11/15.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit
// 代理1
protocol getdataDelegate:NSObjectProtocol {
   func getdata()
}
// block 1
typealias swiftBlock = (_ str:String) ->Void


class TwoViewController: UIViewController {
    var count:String = ""
    // 声明代理
    var deletage:getdataDelegate?
    // 声明block
    var getdatBck:swiftBlock?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        self.view.backgroundColor = UIColor.red
        let button = UIButton(frame:CGRect(x:10, y:150, width:100, height:30))
        button.addTarget(self, action: #selector(TwoViewController.delegateAction), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
        button.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
    }

    
    func delegateAction() -> Void {
        // 代理2
        if (deletage != nil) {
            deletage?.getdata()
        }
        
        
        // block2
        self.getdatBck!("aaa")
        
        
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
