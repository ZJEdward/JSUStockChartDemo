//
//  JSUKLineModel.swift
//  JSUStockChartDemo
//
//  Created by 苏小超 on 16/7/4.
//  Copyright © 2016年 com.jason.su. All rights reserved.
//

import Foundation
import ObjectMapper


open class JSUKLineMessage:Mappable{
    open var message : [JSUKLineModel]?
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        message <- map["message"]
    }
}

open class JSUKLineModel: Mappable {
    open var dt:String?
    open var tick:String?
    open var open:Double?
    open var close:Double?
    open var high:Double?
    open var low:Double?
    open var inc:Double?
    open var vol:Double?
    
    open var ma:JSUMAModel?
    

    
    public init(){
        
    }
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        dt <- map["dt"]
        tick <- map["tick"]
        open <- map["open"]
        close <- map["close"]
        high <- map["high"]
        low <- map["low"]
        inc <- map["inc"]
        vol <- map["vol"]
        ma <- map["ma"]
        
    }
}

open class JSUMAModel:Mappable{
    open var MA5:Double?
    open var MA10:Double?
    open var MA20:Double?
    
    public init(){
        
    }
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        MA5 <- map["MA5"]
        MA10 <- map["MA10"]
        MA20 <- map["MA20"]
    }
}
