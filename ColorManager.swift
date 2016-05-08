//
//  ColorManager.swift
//  ideamaker
//
//  Created by 古田泰大 on 2016/01/24.
//  Copyright © 2016年 古田泰大. All rights reserved.
//

import UIKit

class ColorManager: NSObject {
    //青
    class func themeColor() -> UIColor{
        return UIColor(red: 229/255, green: 116/255, blue: 104/225, alpha: 1.0)
    }
    class func whiteColor() -> UIColor{
        return UIColor(red: 250/255, green: 250/255, blue: 250/225, alpha: 1.0)
    }
    class func bulueBaclgroundColor() -> UIColor{
        return UIColor(red: 33/255, green: 106/255, blue: 229/225, alpha: 1.0)
    }
    class func yellowBackgroundColor() -> UIColor{
        return UIColor(red: 253/255, green: 216/255, blue: 86/255, alpha: 1.0)
    }
    class func textColor() -> UIColor{
        return UIColor(red: 49/255, green: 44/255, blue: 51/255, alpha: 1.0)
    }
    class func greenTextColor() ->UIColor{
        return UIColor(red:65/255, green: 182/255, blue: 20/225, alpha: 1.0)
    }


}