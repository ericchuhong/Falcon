//
//  HomeViewModel.swift
//  Falcon
//
//  Created by Harry Duan on 2019/7/15.
//  Copyright © 2019 Harry Duan. All rights reserved.
//

import UIKit

class HomeViewModel: FalcViewModel<ViewModel> {
    
    override func initialDatas() {
        super.initialDatas()
        datas.append(HomeItemTableViewCellModel())
        datas.append(HomeItemTableViewCellModel())
    }
}
