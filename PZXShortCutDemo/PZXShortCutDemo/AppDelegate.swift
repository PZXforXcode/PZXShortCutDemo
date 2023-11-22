//
//  AppDelegate.swift
//  PZXShortCutDemo
//
//  Created by 彭祖鑫 on 2023/11/21.
//

import UIKit
import Intents

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        if launchOptions?[.url] is URL {
            // 处理 URL
            return true
        }
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        // 解析 URL，获取参数
        print("url = \(url)")
        
        if let queryItems = URLComponents(url: url, resolvingAgainstBaseURL: false)?.queryItems {
            for queryItem in queryItems {
                print("\(queryItem.name): \(queryItem.value ?? "")")
            }
        }
        
        return true
    }
    
    
    ///这个项目使用的SceneDelegate 不在这里处理
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        
        
        if (userActivity.activityType == NSStringFromClass(PZXShowLabelIntent.self)) {
            
            
            return false
            
        } else if (userActivity.activityType == NSStringFromClass(PZXBBIntent.self)) {
            

            let vc = ViewController2()
            getCurrentViewController()?.navigationController?.pushViewController(vc, animated: false)
            
            return false
        }
        
        
        return true
    }
    
    
    func getCurrentViewController() -> UIViewController? {
        var currentViewController: UIViewController?
        // 获取应用程序的根视图控制器
        if #available(iOS 15.0, *) {
            // 在支持多场景的 iOS 13.0 及更高版本中使用 UIWindowScene
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                currentViewController = windowScene.windows.first?.rootViewController
            }
        } else {
            // 在 iOS 13.0 之前的版本中使用 keyWindow
            currentViewController = UIApplication.shared.windows.first?.rootViewController
        }

        // 进一步处理视图控制器类型...
         if let rootViewController = currentViewController {
             // 如果根视图控制器是 UINavigationController，则获取其可见的视图控制器
             if let navigationController = rootViewController as? UINavigationController {
                 return navigationController.visibleViewController
             }

             // 如果根视图控制器是 UITabBarController，则获取其选中的视图控制器
             if let tabBarController = rootViewController as? UITabBarController {
                 return tabBarController.selectedViewController
             }
         }
        // 其他情况下返回根视图控制器
        return currentViewController
    }
    
    
}

