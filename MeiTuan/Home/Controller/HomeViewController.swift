//
//  HomeViewController.swift
//  MeiTuan
//
//  Created by apple on 16/4/13.
//  Copyright © 2016年 Duxuechao. All rights reserved.
//

import UIKit

class HomeViewController: MBaseViewController {
    
    var homeTableView : UITableView?

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        homeTableView = UITableView(frame: CGRectMake(0, 0, CScreenWidth, CScreenHeiht - 64), style: .Plain)
        homeTableView?.delegate = self
        homeTableView?.dataSource = self
        homeTableView?.tableHeaderView = homeTableViewHeaderView()
        self.view.addSubview(homeTableView!)
        
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
    }
    
    func  homeTableViewHeaderView()-> UIView
    {
        let headerView = UIView(frame:  CGRectMake(0, 0, CScreenWidth,500))
        
        let cateheaderFrame : CGRect =  CGRectMake(0, 0, CScreenWidth, 150)
        let cateHeader:CategoryHeader = CategoryHeader(frame: cateheaderFrame)
        headerView.addSubview(cateHeader)
        
        let robheaderFrame : CGRect =  CGRectMake(0, FRAME_BOTTOM(cateHeader) + 30, CScreenWidth, 300)
        let robView :RobBuyHeader = RobBuyHeader(frame: robheaderFrame)
        headerView.addSubview(robView)
        
        return headerView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension HomeViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellId = "cellid"
        var tableViewCelll = tableView.dequeueReusableCellWithIdentifier(cellId)
        
        if tableViewCelll == nil
        {
            tableViewCelll = UITableViewCell(style: .Default, reuseIdentifier: cellId)
        }
//        tableViewCelll?.textLabel?.text = dataArray[indexPath.row]
        return tableViewCelll!
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
}

