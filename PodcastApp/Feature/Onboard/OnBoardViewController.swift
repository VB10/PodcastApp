//
//  OnBoardViewController.swift
//  PodcastApp
//
//  Created by vb10 on 20.10.2023.
//

import SnapKit
import UIKit

final class OnBoardViewController: UIViewController {
    override func loadView() {
        let onBoardView = OnBoardView()
        view = onBoardView
        onBoardView.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension OnBoardViewController: OnBoardViewProtocol {
    func onTappedListenButton() {}
}


 #Preview {
    OnBoardViewController()
 }
