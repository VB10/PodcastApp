//
//  OnBoardView.swift
//  PodcastApp
//
//  Created by vb10 on 20.10.2023.
//

import Foundation
import SnapKit
import UIKit

protocol OnBoardViewProtocol {
    func onTappedListenButton()
}

class OnBoardView: UIView {
    private let profileTitle: String = "Podcaster"
    private let profileSubTitle: String = "Discover your favorite podcast & listen to them anywhere!"
    private let listingTitle: String = "Start Listing"

    var delegate: OnBoardViewProtocol?

    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView(image: .imagePodcaster)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
    }()

    private lazy var profileTitleLabel: UILabel = {
        let label = UILabel()
        label.text = profileTitle
        label.font = Theme.defaultTheme.themeFont.headlineFont.boldVersion
        return label
    }()

    private lazy var profileSubTitleLabel: UILabel = {
        let label = UILabel()
        label.text = profileSubTitle
        label.numberOfLines = .zero
        label.textAlignment = .center
        label.font = Theme.defaultTheme.themeFont.bodyFont
        return label
    }()

    private lazy var listingButton: UIButton = {
        let button = UIButton()
        button.setTitle(listingTitle, for: .normal)
        button.setTitleColor(Theme.defaultTheme.themeColor.textColor, for: .normal)
        button.backgroundColor = Theme.defaultTheme.themeColor.buttonBackgroundColor
        button.layer.cornerRadius = Radius.medium.rawValue
        button.addAction(action, for: .touchUpInside)
        return button
    }()

    private lazy var columnView: UIStackView = {
        let bottomView = UIStackView(arrangedSubviews: [
            profileTitleLabel,
            profileSubTitleLabel,
            listingButton
        ])

        bottomView.axis = .vertical
        bottomView.spacing = 20
        bottomView.alignment = .center
        let headerView = UIStackView(arrangedSubviews: [
            profileImageView
        ])

        let uiStackView = UIStackView(arrangedSubviews: [
            headerView,
            bottomView
        ])

        uiStackView.axis = .vertical
        uiStackView.spacing = 20
        uiStackView.distribution = .equalSpacing
        return uiStackView
    }()

    lazy var action: UIAction = UIAction { _ in
        self.delegate?.onTappedListenButton()
    }

    init() {
        super.init(frame: .zero)

        /// PART:2

//        addSubview(columnView)
//        profileImageView.snp.makeConstraints { make in
//            make.width.equalTo(snp.width).multipliedBy(0.8)
//            make.height.equalTo(snp.height).multipliedBy(0.4)
//        }
//
//        columnView.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
//            make.top.equalTo(safeAreaLayoutGuide.snp.top)
//        }

//         PART:1
        addSubview(profileImageView)
        addSubview(profileTitleLabel)
        addSubview(profileSubTitleLabel)
        addSubview(listingButton)
        backgroundColor = .white

        profileImageView.snp.makeConstraints { make in
            let uiScreenHeight = UIScreen.current?.bounds.height ?? 100

            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(uiScreenHeight * 0.2)

            make.width.equalTo(snp.width).multipliedBy(0.8)
            make.height.equalTo(snp.height).multipliedBy(0.4)
        }

        profileTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }

        profileSubTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(profileTitleLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.centerX.equalToSuperview()
        }

        listingButton.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(ButtonSize.medium.rawValue)
            make.width.equalToSuperview().multipliedBy(0.8)
        }
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
