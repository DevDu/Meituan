//
//  MainTabBarViewController.swift
//  MeiTuan 42 169 152
//
//  Created by apple on 16/4/13.
//  Copyright © 2016年 Duxuechao. All rights reserved.
//

import UIKit
class MainTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let homeVC =  HomeViewController()
        let shopVC =  ShopViewController()
        let mineVC   =  MyInfoViewController()
        let moreVC =  MoreViewController()

        UITabBarItem.appearance().setTitleTextAttributes(
            [NSForegroundColorAttributeName: CBaseColor], forState:.Selected)
        UITabBarItem.appearance().setTitleTextAttributes(
            [NSForegroundColorAttributeName: UIColor.grayColor()], forState:.Normal)
        
        let tabbarItem1 = (name:"首页",normalImageName:"icon_tabbar_homepage",selectImageName:"icon_tabbar_homepage_selected")
        let tabbarItem2 = (name:"商家",normalImageName:"icon_tabbar_merchant_normal",selectImageName:"icon_tabbar_merchant_selected")
        let tabbarItem3 = (name:"我的",normalImageName:"icon_tabbar_mine",selectImageName:"icon_tabbar_mine_selected")
        let tabbarItem4 = (name:"更多",normalImageName:"icon_tabbar_misc",selectImageName:"icon_tabbar_misc_selected")

        let homeNaVC = configNavigationVCItem(homeVC, tabbarModel: tabbarItem1)
        let shopNaVC = configNavigationVCItem(shopVC, tabbarModel: tabbarItem2)
        let myNaVC   = configNavigationVCItem(mineVC, tabbarModel: tabbarItem3)
        let moreNaVC = configNavigationVCItem(moreVC, tabbarModel: tabbarItem4)
        self.viewControllers = [homeNaVC,shopNaVC,myNaVC,moreNaVC]
    }


    func configNavigationVCItem(viewController:UIViewController,tabbarModel:(name:String,normalImageName:String,selectImageName:String)) ->UINavigationController
    {
        viewController.title = tabbarModel.name
        let navaHomeVC = UINavigationController(rootViewController: viewController)
        let normalImage  = UIImage(named: tabbarModel.normalImageName)?.imageWithRenderingMode(.AlwaysOriginal)
        let selecthomeImage  = UIImage(named:tabbarModel.selectImageName)?.imageWithRenderingMode(.AlwaysOriginal)
        let tabarItem = UITabBarItem(title: tabbarModel.name, image:normalImage, selectedImage:selecthomeImage)
        navaHomeVC.tabBarItem = tabarItem
        tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.redColor()], forState: .Normal)
        return navaHomeVC
    }
}

