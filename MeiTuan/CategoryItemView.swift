//
//  CategoryItemView.swift
//  MeiTuan
//
//  Created by apple on 16/4/25.
//  Copyright © 2016年 Duxuechao. All rights reserved.
//

import UIKit

class CategoryItemView: UIView {
    
    var cateImageView : UIImageView = UIImageView()
    var cateLabel     : UILabel     = UILabel()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        cateImageView.frame = CGRectMake(0, 0, 50, 50)
        cateImageView.backgroundColor = UIColor.redColor()
        addSubview(cateImageView)
        
        cateLabel.frame = CGRectMake(0, cateImageView.frame.origin.y + cateImageView.frame.size.height, 50, 20)
        cateLabel.text  = "测试"
        cateLabel.backgroundColor = UIColor.magentaColor()
        addSubview(cateLabel)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
