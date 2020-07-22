//
//  ContentView.swift
//  tabbar
//
//  Created by wang on 2020/7/22.
//  Copyright © 2020 wang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //创建一个tabbar
    
    var body: some View {
       tabbar([Text("2333")],
          titles: ["首页","广场","发现","我的"],
          images: ["tab1n","tab2n","tab3n","tab4n"],
          imgSels: ["tab1s","tab2s","tab3s","tab4s"])
       .edgesIgnoringSafeArea(.trailing)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
