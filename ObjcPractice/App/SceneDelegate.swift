//
//  SceneDelegate.swift
//  ObjcPractice
//
//  Created by JeongHwiJin on 9/27/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
        // Objective-C로 작성된 ViewController 호출
        let viewController = DrawViewController()
        window.rootViewController = viewController
        
        self.window = window
        window.makeKeyAndVisible()
    }
}
