//
//  KTimeDataset.swift
//  StockChart
//
//  Created by 苏小超 on 16/2/24.
//  Copyright © 2016年 com.jason. All rights reserved.
//

import UIKit

class TimeDataset{
    var days : [String]?  //五日图的日期
    var data : [TimeLineEntity]?
    var highlightLineWidth : CGFloat = 0
    var highlightLineColor = UIColor.blue
    var lineWidth : CGFloat = 1
    var priceLineCorlor = UIColor.gray
    var avgLineCorlor = UIColor.yellow
    var volumeRiseColor = UIColor.red
    var volumeFallColor = UIColor.green
    var volumeTieColor = UIColor.gray
    var drawFilledEnabled = false
    var fillStartColor = UIColor.orange
    var fillStopColor = UIColor.black
    var fillAlpha:CGFloat = 0.5
}
