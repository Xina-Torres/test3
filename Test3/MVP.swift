//
//  MVP.swift
//  Test3
//
//  Created by Maria Xina Rae Torres on 13/07/2018.
//  Copyright © 2018 Maria Xina Rae Torres. All rights reserved.
//

import Foundation
public protocol PresenterView: class{
    
}
public class Presenter{
    weak var view: PresenterView?
    init(){
        
    }
    func attachedView(view: PresenterView){
        self.view = view
    }
}
