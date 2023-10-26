//
//  OnBoardRoute.swift
//  PodcastApp
//
//  Created by vb10 on 27.10.2023.
//

import Foundation
import UIKit

protocol OnBoarRouteProtocol {
    func navigateToHome(from view: OnBoarViewControllerProtocol?)
}

final class OnBoardRoute: OnBoarRouteProtocol {
    func navigateToHome(from view: OnBoarViewControllerProtocol?) {
        guard let viewController = view as? UIViewController else { return }
        viewController.navigationController?.pushViewController(TestViewController(), animated: true)
    }

    static func craeteMyModule() -> OnBoardViewController {
        let view = OnBoardViewController()
        let router = OnBoardRoute()
        let presenter = OnBoardPresenter(
            router: router,
            view: view
        )

        view.presenter = presenter
        return view
    }
}
