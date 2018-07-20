//
//  RegisterPresenter.swift
//  Test3
//
//  Created by Maria Xina Rae Torres on 13/07/2018.
//  Copyright © 2018 Maria Xina Rae Torres. All rights reserved.
//

import Foundation
protocol RegisterPresenterDelegate{
    func didFailGettingFirstName()
    func didFailGettingMiddleName()
    func didFailGettingLastName()
    func didFailGettingAddress()
    func didFailGettingAge()
    func didFailGettingHeight()
    func didFailGettingWeight()
    func didFailGettingBirthday()
    func didFailGettingGender()
}
enum RegisterTextField {
    case firstName
    case middleName
    case lastName
    case address
    case age
    case height
    case weight
    case birthday
    case gender
}
class RegisterPresenter{

    var userDataModel: UserDataModel

    var view: RegisterPresenterDelegate
    required init(view: RegisterPresenterDelegate, userDataModel: UserDataModel){
        self.view = view
        self.userDataModel = userDataModel
    }
    func register(){
    }
    func setValues(registerTextField: RegisterTextField, input: String){
        switch registerTextField{
        case .firstName:
            self.userDataModel.firstName = input
            break
        case .middleName:
            self.userDataModel.middleName = input
            break
        case .lastName:
            self.userDataModel.lastName = input
            break
        case .address:
            self.userDataModel.address = input
            break
        case .age:
            self.userDataModel.age = input
            break
        case .height:
            self.userDataModel.height = input
            break
        case .weight:
            self.userDataModel.weight = input
            break
        case .birthday:
            self.userDataModel.birthday = input
            break
        case .gender:
            self.userDataModel.gender = input
            break
        }
    }
    func getFirstName() -> String{
        return userDataModel.firstName
    }
    func getMiddleName() -> String{
        return userDataModel.middleName
    }
    func getLastName() -> String{
        return userDataModel.lastName
    }
    func getAddress() -> String{
        return userDataModel.address
    }
    func getAge() -> String{
        return userDataModel.age
    }
    func getHeight() -> String{
        return userDataModel.height
    }
    func getWeight() -> String{
        return userDataModel.weight
    }
    func getBirthday() -> String{
        return userDataModel.birthday
    }
    func getGender() -> String{
        return userDataModel.gender
    }
}
