//
//  tabbar.swift
//  tabbar
//
//  Created by wang on 2020/7/22.
//  Copyright © 2020 wang. All rights reserved.
//

import SwiftUI

struct tabbar<page:View>: View {
    var titles : [String]
    var imgs:[String]
    var imgSels:[String]
    var viewControllers: [UIHostingController<page>]

    init(_ views: [page],titles:[String],images:[String],imgSels:[String]) {
        let vc0 = UIHostingController(rootView: home())
        let vc1 = UIHostingController(rootView: squre())
        let vc2 = UIHostingController(rootView: find())
        let vc3 = UIHostingController(rootView: me())
        self.viewControllers = [vc0,vc1,vc2,vc3] as! [UIHostingController<page>]
        self.titles = titles
        self.imgs = images
        self.imgSels = imgSels
    }
    
    var body: some View {
        tabbarcontroller(titles: titles, imgs: imgs, imgSels: imgSels, controllers: viewControllers)
    }
    
}


