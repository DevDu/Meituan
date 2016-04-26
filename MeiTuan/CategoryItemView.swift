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
        cateImageView.frame = CGRectMake((frame.size.width - 50)/2, 0, 45, 45)
        cateImageView.backgroundColor = UIColor.clearColor()
        addSubview(cateImageView)
        
        cateLabel.frame = CGRectMake(0, cateImageView.frame.origin.y + cateImageView.frame.size.height, frame.size.width, 20)
        cateLabel.text  = "测试"
        cateLabel.textAlignment = .Center
        cateLabel.font = UIFont.systemFontOfSize(12)
        cateLabel.backgroundColor = UIColor.clearColor()
        addSubview(cateLabel)
        
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setItemDataForUI(cateData:(cateImage:String,cateTitle:String))
    {
    
          cateImageView.image = UIImage(named: cateData.cateImage)
          cateLabel.text = cateData.cateTitle
        
    
    }
    

}
