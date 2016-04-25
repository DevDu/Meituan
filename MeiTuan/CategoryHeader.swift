//
//  CategoryHeader.swift
//  MeiTuan
//
//  Created by apple on 16/4/25.
//  Copyright © 2016年 Duxuechao. All rights reserved.
//

import UIKit

class CategoryHeader: UIView {
    
    var headScrollView : UIScrollView  = UIScrollView()
    var pageControll   : UIPageControl = UIPageControl()
    var homePageArray  : Array<String>?
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        headScrollView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height)
        headScrollView.backgroundColor = UIColor.purpleColor()
        headScrollView.pagingEnabled = true
        headScrollView.contentSize = CGSizeMake(CScreenWidth*2, frame.size.height)
        addSubview(headScrollView)
        
       pageControll.frame = CGRectMake(0, headScrollView.frame.origin.y + headScrollView.frame.size.height, frame.size.width, 20)
       pageControll.backgroundColor = UIColor.orangeColor()
       addSubview(pageControll)
        
        homePageArray?.append("icon_homepage_aroundjourneyCategory")
        homePageArray?.append("icon_homepage_beautyCategory")
        homePageArray?.append("icon_homepage_cakeCategory")
        homePageArray?.append("icon_homepage_CouponCategory")
        homePageArray?.append("icon_homepage_dailyNewDealCategory")
        homePageArray?.append("icon_homepage_entertainmentCategory")
        homePageArray?.append("icon_homepage_fastfoodCategory")
        homePageArray?.append("icon_homepage_foodCategory")
        homePageArray?.append("icon_homepage_foottreatCategory")
        homePageArray?.append("icon_homepage_haircutCategory")
        homePageArray?.append("icon_homepage_hotCategory")
        homePageArray?.append("icon_homepage_hotelCategory")
        homePageArray?.append("icon_homepage_KTVCategory")
        homePageArray?.append("icon_homepage_lifeServiceCategory")
        homePageArray?.append("icon_homepage_lotteryCategory")
        homePageArray?.append("icon_homepage_moreCategory")
        homePageArray?.append("icon_homepage_movieCategory")
        homePageArray?.append("icon_homepage_shoppingCategory")
        homePageArray?.append("icon_homepage_takeoutCategory")
        homePageArray?.append("icon_homepage_travellingCategory")

        
        let line_count:Int = 5  //一行几个
        let line_num  :Int = 2  //一共几行
        
        let item_w     = CScreenWidth/5
        let item_y:CGFloat = 70.0
        let edge_x:CGFloat = 0.0
        let edge_y:CGFloat = 0.0
        let space_x:CGFloat = 0.0
        let pageNum:Int = line_count*line_num  //一个页多少开始分页
        var i :Int = 0
        for i = 0; i < 15; i++
        {
            let buttonNum :CGFloat = CGFloat(i % line_count);
            let fromx =  edge_x + (item_w  + space_x) * buttonNum + CScreenWidth * CGFloat(i / pageNum);
            let fromy =  edge_y + (item_y + space_x) * CGFloat(((i%pageNum) / line_count));
            let backView:CategoryItemView = CategoryItemView(frame:CGRectMake(fromx, fromy, item_w,item_y))
            backView.backgroundColor = UIColor.blackColor()
            headScrollView.addSubview(backView);
        }
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

 
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
