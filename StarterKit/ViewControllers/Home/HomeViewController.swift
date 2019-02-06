//
//  HomeViewController.swift
//  StarterKit
//
//  Created by Devran Uenal on 05.02.19.
//  Copyright © 2019 Carl Zeiss AG. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        title = NSLocalizedString("Home", comment: "")
        tabBarItem = UITabBarItem(title: title, image: UIImage(named: "Home"), selectedImage: UIImage(named: "Home"))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        presentOnboardingScreenIfNeeded()
    }
}

extension HomeViewController {
    func presentOnboardingScreenIfNeeded() {
        if shouldPresentOnboardingScreen() {
            presentOnboardingScreeen()
        }
    }
    
    func presentOnboardingScreeen() {
        let viewController = OnboardingViewController()
        present(viewController, animated: true, completion: nil)
    }
    
    func shouldPresentOnboardingScreen() -> Bool {
        if let version = UserDefaults.standard.string(forKey: "OnboardingCompletedForVersion"), version == OnboardingViewController.version {
            return false
        }
        return true
    }
}
