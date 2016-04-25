//
//  HomeViewController.swift
//  MeiTuan
//
//  Created by apple on 16/4/13.
//  Copyright © 2016年 Duxuechao. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.edgesForExtendedLayout = .None;
//        self.edgesForExtendedLayout = .None
        self.view.backgroundColor = UIColor.darkGrayColor()
        
        let cateheaderFrame : CGRect =  CGRectMake(0, 0, CScreenWidth, 200)
        let cateHeader:CategoryHeader = CategoryHeader(frame: cateheaderFrame)
        self.view.addSubview(cateHeader)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    */

}
