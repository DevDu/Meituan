//
//  Commen.swift
//  MeiTuan
//
//  Created by apple on 16/4/13.
//  Copyright © 2016年 Duxuechao. All rights reserved.
//

import UIKit

public let CScreenBounds: CGRect = UIScreen.mainScreen().bounds

public let CScreenWidth: CGFloat = UIScreen.mainScreen().bounds.size.width

public let CScreenHeiht: CGFloat = UIScreen.mainScreen().bounds.size.height

//42 169 152
public let CBaseColor  :  UIColor = UIColor(colorLiteralRed: 42/255, green: 169/255, blue: 152/255, alpha: 1.0)

public func FRAME_WIDTH(lastView: UIView) ->CGFloat
{
   return  CGRectGetWidth(lastView.frame)
}

public func FRAME_HEIGHT(lastView: UIView) ->CGFloat
{
   return CGRectGetHeight(lastView.frame)
}

public func FRAME_X(lastView: UIView) ->CGFloat
{
    return CGRectGetMinX(lastView.frame)
}
public func FRAME_Y(lastView: UIView) ->CGFloat
{
    return CGRectGetMinY(lastView.frame)
}

public func FRAME_RIGHT(lastView: UIView) ->CGFloat
{
    return CGRectGetMaxX(lastView.frame)
}

public func FRAME_BOTTOM(lastView: UIView) ->CGFloat
{
    return CGRectGetMaxY(lastView.frame)
}
