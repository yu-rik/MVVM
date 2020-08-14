//
//  ViewModel.swift
//  MVVM
//
//  Created by yurik on 8/14/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class ViewModel {
    private var profile = Profile(name: "Yurik", secondName: "Nosachenko", age: 36)
    
    var name: String {
        return profile.name
    }
    var saecondName: String {
        return profile.secondName
    }
    var age: String {
        return  String(describing: profile.age)
    }
    
}
