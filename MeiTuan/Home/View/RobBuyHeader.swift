//
//  RobBuyHeader.swift
//  MeiTuan
//
//  Created by apple on 16/4/27.
//  Copyright © 2016年 Duxuechao. All rights reserved.
// 

import UIKit

class RobBuyHeader: UIView
{

    private var robBuyItem : RobBuyHeaderItem? = nil
    
    
    override init(frame: CGRect)
    {
       super.init(frame: frame)
       self.backgroundColor = UIColor.purpleColor()
        
        let line_count:Int = 2  //一行几个
        let line_num  :Int = 3  //一共几行
        
        let item_w     = (CScreenWidth)/2
        let item_y:CGFloat = 60.0
        let edge_x:CGFloat = 0.0
        let edge_y:CGFloat = 10.0
        let space_x:CGFloat = 0.0
        var i :Int = 0
        for i = 0; i < line_count * line_num; i++
        {
            let buttonNum :CGFloat = CGFloat(i % line_count);
            let fromx =  edge_x + (item_w  + space_x) * buttonNum;
            let fromy =  edge_y + (item_y + space_x) * CGFloat((i / line_count));
            let robheaderFrame : CGRect =  CGRectMake(fromx, fromy, item_w, item_y)
            robBuyItem  = RobBuyHeaderItem(frame: robheaderFrame)
            robBuyItem?.isHiddenRightLine
            if buttonNum == 1
            {
              robBuyItem?.isHiddenRightLine = true
            }
            addSubview(robBuyItem!)
        }
       
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class RobBuyHeaderItem: UIView
{
    
    private  var titleLabel    : UILabel = UILabel()
    private  var subTitleLabel : UILabel = UILabel()
    private  var robbugImageLabel : UIImageView = UIImageView()
    private  var bottomlineView : UIView = UIView()
    private  var rightlineView  : UIView = UIView()
    //
    private  var isHiddenRightLine : Bool = true
    {
       didSet{
          rightlineView.hidden = isHiddenRightLine
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.whiteColor()
        
        titleLabel.frame = CGRectMake(5, 5, 120, 25)
        titleLabel.text = "天天特价"
        titleLabel.backgroundColor = UIColor.clearColor()
        addSubview(titleLabel)
        
        subTitleLabel.frame = CGRectMake(5, FRAME_BOTTOM(titleLabel) + 5, FRAME_WIDTH(titleLabel), 20)
        subTitleLabel.backgroundColor = UIColor.clearColor()
        subTitleLabel.text = "天天特价"
        subTitleLabel.textColor = UIColor.lightGrayColor()
        subTitleLabel.font = UIFont.systemFontOfSize(13)
        addSubview(subTitleLabel)
        
        robbugImageLabel.frame = CGRectMake(FRAME_RIGHT(titleLabel) + 5, (self.height - 50)/2, 50, 50)
        robbugImageLabel.backgroundColor = UIColor.grayColor()
        addSubview(robbugImageLabel)
        
        rightlineView = UIView(frame:CGRectMake(self.width - 0.5, 0, 0.5, self.height))
        rightlineView.backgroundColor = UIColor.lightGrayColor()
        addSubview(rightlineView)
        
        bottomlineView = UIView(frame:CGRectMake(0, self.height - 0.5, self.width, 0.5))
        bottomlineView.backgroundColor = UIColor.lightGrayColor()
        addSubview(bottomlineView)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
