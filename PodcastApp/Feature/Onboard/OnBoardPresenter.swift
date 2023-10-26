//
//  OnBoardPresenter.swift
//  PodcastApp
//
//  Created by vb10 on 27.10.2023.
//

import Foundation

protocol OnBoardPresenterProtocol: AnyObject {
    var router: OnBoarRouteProtocol? { get set }
    var view: OnBoarViewControllerProtocol? { get set }

    func checkAndNavigateTestPage()
}

final class OnBoardPresenter: OnBoardPresenterProtocol {
    var router: OnBoarRouteProtocol?
    var view: OnBoarViewControllerProtocol?

    init(router: OnBoarRouteProtocol? = nil, view: OnBoarViewControllerProtocol? = nil) {
        self.router = router
        self.view = view
    }

    func checkAndNavigateTestPage() {
        router?.navigateToHome(from: view)
    }
}
