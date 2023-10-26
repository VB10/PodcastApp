//
//  OnBoardViewController.swift
//  PodcastApp
//
//  Created by vb10 on 20.10.2023.
//

import SnapKit
import UIKit

protocol OnBoarViewControllerProtocol: AnyObject {}

final class OnBoardViewController: UIViewController {
    var presenter: OnBoardPresenterProtocol?

    override func loadView() {
        let onBoardView = OnBoardView(self)
        view = onBoardView
        onBoardView.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension OnBoardViewController: OnBoardViewProtocol {
    func onTappedListenButton() {
        presenter?.checkAndNavigateTestPage()
    }
}

extension OnBoardViewController: OnBoarViewControllerProtocol {}

// #Preview {
//    OnBoardViewController()
// }
