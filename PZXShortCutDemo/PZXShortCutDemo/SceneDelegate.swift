//
//  SceneDelegate.swift
//  PZXShortCutDemo
//
//  Created by 彭祖鑫 on 2023/11/21.
//

import UIKit


//PZXTestApp://somepath?param1=value1&param2=value2

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        if let url = connectionOptions.urlContexts.first?.url {
            // 处理 URL
            print("url1 = \(url)")
        }
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    

    
    func scene(_ scene: UIScene, continue userActivity: NSUserActivity) {
        
        print("TK421: Continue type = ", userActivity.activityType,"ok")

        guard let windowScene = scene as? UIWindowScene else { return }
        if (userActivity.activityType == NSStringFromClass(PZXShowLabelIntent.self)) {
            
            
            
        } else if (userActivity.activityType == NSStringFromClass(PZXBBIntent.self)) {
            

            let vc = ViewController2()
            getCurrentViewController()?.navigationController?.pushViewController(vc, animated: false)
            
        }
    

        // 在需要的地方执行 restorationHandler
        // restorationHandler(nil)
    }
    
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        guard let url = URLContexts.first?.url else {
            return
        }

        // 处理 URL
        print("url2 = \(url)")

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

