//
//  CategoryHeader.swift
//  MeiTuan
//
//  Created by apple on 16/4/25.
//  Copyright © 2016年 Duxuechao. All rights reserved.
//

import UIKit
// MARK: ScrollHeader
class CategoryHeader: UIView{
    
    private var headScrollView : UIScrollView  = UIScrollView()
    private var pageControll   : UIPageControl = UIPageControl()
    private var homePageArray  = Array<(cateImage:String,cateTitle:String)>()

    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        headScrollView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height)
        headScrollView.backgroundColor = UIColor.whiteColor()
        headScrollView.pagingEnabled = true
        headScrollView.delegate = self
        headScrollView.contentSize = CGSizeMake(CScreenWidth*2, frame.size.height)
        headScrollView.showsHorizontalScrollIndicator = false
        addSubview(headScrollView)
        
        
       pageControll.frame = CGRectMake(0,FRAME_BOTTOM(headScrollView), frame.size.width, 20)
       pageControll.backgroundColor = UIColor.whiteColor()
       pageControll.pageIndicatorTintColor = UIColor.grayColor()
       pageControll.numberOfPages  = 2
       pageControll.currentPageIndicatorTintColor = CBaseColor
       addSubview(pageControll)
        
       pageControll.addSubview(UIViewHelper.drawALine(FRAME_HEIGHT(pageControll) - 0.5))
        
        
        homePageArray.append((cateImage:"icon_homepage_foodCategory",cateTitle:"美食"))
        homePageArray.append((cateImage:"icon_homepage_movieCategory",cateTitle:"电影"))
        homePageArray.append((cateImage:"icon_homepage_hotelCategory",cateTitle:"酒店"))
        homePageArray.append((cateImage:"icon_homepage_entertainmentCategory",cateTitle:"娱乐"))
        homePageArray.append((cateImage:"icon_homepage_takeoutCategory",cateTitle:"外卖"))

        homePageArray.append((cateImage:"icon_homepage_aroundjourneyCategory",cateTitle:"周边"))
        homePageArray.append((cateImage:"icon_homepage_beautyCategory",cateTitle:"美容"))
        homePageArray.append((cateImage:"icon_homepage_cakeCategory",cateTitle:"蛋糕"))
        homePageArray.append((cateImage:"icon_homepage_CouponCategory",cateTitle:"优惠"))
        homePageArray.append((cateImage:"icon_homepage_dailyNewDealCategory",cateTitle:"每日"))
        homePageArray.append((cateImage:"icon_homepage_fastfoodCategory",cateTitle:"快餐"))
        homePageArray.append((cateImage:"icon_homepage_foottreatCategory",cateTitle:"足疗"))
        homePageArray.append((cateImage:"icon_homepage_haircutCategory",cateTitle:"理发"))
        homePageArray.append((cateImage:"icon_homepage_hotCategory",cateTitle:"热点"))
        homePageArray.append((cateImage:"icon_homepage_KTVCategory",cateTitle:"ktv"))
        homePageArray.append((cateImage:"icon_homepage_lotteryCategory",cateTitle:"ktv"))
        homePageArray.append((cateImage:"icon_homepage_shoppingCategory",cateTitle:"ktv"))
        homePageArray.append((cateImage:"icon_homepage_lifeServiceCategory",cateTitle:"ktv"))
        homePageArray.append((cateImage:"icon_homepage_travellingCategory",cateTitle:"ktv"))
        homePageArray.append((cateImage:"icon_homepage_moreCategory",cateTitle:"ktv"))
                
        
        let line_count:Int = 5  //一行几个
        let line_num  :Int = 2  //一共几行
        
        let item_w     = CScreenWidth/5
        let item_y:CGFloat = 70.0
        let edge_x:CGFloat = 0.0
        let edge_y:CGFloat = 10.0
        let space_x:CGFloat = 0.0
        let pageNum:Int = line_count*line_num  //一个页多少开始分页
        var i :Int = 0
        for i = 0; i < homePageArray.count; i++
        {
            let buttonNum :CGFloat = CGFloat(i % line_count);
            let fromx =  edge_x + (item_w  + space_x) * buttonNum + CScreenWidth * CGFloat(i / pageNum);
            let fromy =  edge_y + (item_y + space_x) * CGFloat(((i%pageNum) / line_count));
            let backView:CategoryItemView = CategoryItemView(frame:CGRectMake(fromx, fromy, item_w,item_y))
            backView.cateData = homePageArray[i]
            headScrollView.addSubview(backView);
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CategoryHeader:UIScrollViewDelegate
{
    func scrollViewDidScroll(scrollView: UIScrollView)
    {
        let pageNum = abs(scrollView.contentOffset.x / CScreenWidth)
        pageControll.currentPage = Int(pageNum)
    }
}

// MARK: 单个类目
class CategoryItemView: UIView
{
    private  var cateImageView : UIImageView = UIImageView()
    private  var cateLabel     : UILabel     = UILabel()
    private  var cateData:(cateImage:String,cateTitle:String)?
    {
        didSet
        {
            cateImageView.image = UIImage(named:cateData!.cateImage)
            cateLabel.text = cateData!.cateTitle
        }
    }
    override init(frame: CGRect)
    {
        super.init(frame: frame)

        self.backgroundColor = UIColor.whiteColor()
        cateImageView.frame = CGRectMake((frame.size.width - 45)/2, 0, 45, 45)
        cateImageView.backgroundColor = UIColor.clearColor()
        addSubview(cateImageView)
        
        cateLabel.frame = CGRectMake(0, FRAME_BOTTOM(cateImageView), frame.size.width, 20)
        cateLabel.textAlignment = .Center
        cateLabel.font = UIFont.systemFontOfSize(12)
        cateLabel.backgroundColor = UIColor.clearColor()
        addSubview(cateLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
