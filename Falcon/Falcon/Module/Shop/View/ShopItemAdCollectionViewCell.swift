//
//  ShopItemAdCollectionViewCell.swift
//  Falcon
//
//  Created by Q on 2019/8/5.
//  Copyright © 2019 Harry Duan. All rights reserved.
//

import UIKit

/// shop 模块顶部的优惠 cell
class ShopItemAdCollectionViewCell: FalcCollectionViewCell<ShopItemAdCollectionViewCellModel> {
    
    private var bakView: UIView = {
        var view = UIView()
        return view
    }()
    
    private var goodsImage: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.cornerRadius = 10
        imageView.clipsToBounds = true
        imageView.borderColor = UIColor(white: 102.0 / 255.0, alpha: 0.1)
        imageView.borderWidth = 1
        return imageView
    }()
    
    private var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Reveal 21"
        label.textColor = UIColor.greyishBrown
        label.font = UIFont.sgTitle1
        return label
    }()
    
    private var typeLabel: UILabel = {
        var label = UILabel()
        label.text = "SwiftGG 专属优惠"
        label.textColor = UIColor.sgDarkGrayColor
        label.font = UIFont.sgSubhead
        return label
    }()
    
    override func initialViews() {
        super.initialViews()
        addSubview(bakView)
        bakView.addSubview(titleLabel)
        bakView.addSubview(typeLabel)
        bakView.addSubview(goodsImage)
    }
    
    override func initialLayouts() {
        super.initialLayouts()
        bakView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(18)
        }
        
        typeLabel.snp.makeConstraints { make in
            make.leading.trailing.equalTo(titleLabel)
            make.top.equalTo(titleLabel.snp.bottom)
            make.height.equalTo(33)
        }
        
        goodsImage.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview();
            make.top.equalTo(typeLabel.snp.bottom)
        }
    }
    
    override func updateViews() {
        super.updateViews()
        guard let viewModel = viewModel else { return }
        goodsImage.sd_setImage(with: URL(string: viewModel.goodsImage), placeholderImage: nil, options: .retryFailed, completed: nil)
        titleLabel.text = viewModel.titleText
        typeLabel.text = viewModel.typeText
    }
    
}

class ShopItemAdCollectionViewCellModel: FalcViewModel<NSObject> {
    public var goodsImage: String = ""
    public var typeText: String = ""
    public var titleText : String = ""
}
