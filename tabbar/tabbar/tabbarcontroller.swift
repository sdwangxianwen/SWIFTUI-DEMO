//
//  tabbarcontroller.swift
//  tabbar
//
//  Created by wang on 2020/7/22.
//  Copyright © 2020 wang. All rights reserved.
//

import SwiftUI

struct tabbarcontroller: UIViewControllerRepresentable {
    func makeCoordinator() -> tabbarcontroller.Coordinator {
           Coordinator(self)
    }
    var titles:[String]
    var imgs:[String]
    var imgSels:[String]
    var controllers:[UIViewController]
   
    func makeUIViewController(context: Context) -> UITabBarController {
        
        let tabBar = UITabBarController()
        var index:Int = 0
        let attributes =  [NSAttributedString.Key.foregroundColor: UIColor.orange]
        for vc in controllers {
            let title = titles[index]
            let image = UIImage(named: imgs[index])
            let imgSel = UIImage(named: imgSels[index])
            let tabBarItem = UITabBarItem(title: title, image: image?.withRenderingMode(.alwaysOriginal), selectedImage: imgSel?.withRenderingMode(.alwaysOriginal))
            tabBarItem.setTitleTextAttributes(attributes, for: .selected)
            vc.tabBarItem = tabBarItem
            index += 1
        }
        tabBar.viewControllers = controllers
        tabBar.delegate = context.coordinator
        return tabBar
    }
    
    func updateUIViewController(_ tabBarVC: UITabBarController, context: Context) {
        tabBarVC.setViewControllers(controllers, animated: true)
    }
    
    class Coordinator: NSObject, UITabBarControllerDelegate {
        var parent: tabbarcontroller
        
        init(_ tabBarVC: tabbarcontroller) {
            self.parent = tabBarVC
        }
        
        func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
            
        }
        
        func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
            return true
        }
    }
}


