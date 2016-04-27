//
//  UIViewHelper.swift
//  MeiTuan
//
//  Created by apple on 16/4/27.
//  Copyright © 2016年 Duxuechao. All rights reserved.
//

import UIKit

class UIViewHelper: UIView {
    
    static func drawALine(y:CGFloat)->UIView
    {
    
        let line = UIView()
        line.frame = CGRectMake(0, y, CScreenWidth, 0.5)
        line.backgroundColor = UIColor.lightGrayColor()
        
        return line
    }

}
