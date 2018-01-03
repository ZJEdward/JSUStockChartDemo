//
//  CSFStockLandTimeSegue.swift
//  csfsamradar
//
//  Created by 苏小超 on 16/4/11.
//  Copyright © 2016年 vsto. All rights reserved.
//

import UIKit

class JSUStockLandHomeSegue: UIStoryboardSegue {
    override func perform() {
        //UIApplication.sharedApplication().setStatusBarHidden(true, withAnimation: UIStatusBarAnimation.None)
        
        let firstVC = self.source as! ViewController
        let secondVC = self.destination as! JSUStockLandHomeViewController
        
        
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        secondVC.view.frame = CGRect(x: 0,y: screenHeight, width: screenWidth, height: screenHeight)
        
        
        
        let window = UIApplication.shared.keyWindow
        window?.insertSubview(secondVC.view, aboveSubview: firstVC.view)

        let overplayView = UIScreen.main.snapshotView(afterScreenUpdates: false)
        overplayView.transform =  CGAffineTransform(rotationAngle: -90 * CGFloat(M_PI) / 180.0);
        overplayView.x = 0
        overplayView.y = 0
        secondVC.view.insertSubview(overplayView, belowSubview: secondVC.stockView)
        
        self.source.present(self.destination, animated: false, completion: nil)
        secondVC.view.layoutIfNeeded()
        UIView.animate(withDuration: 0.4, animations: {
            secondVC.topValue.priority = 800
            secondVC.view.layoutIfNeeded()
        }, completion: { (finish) in
            
        }) 
    }
}
