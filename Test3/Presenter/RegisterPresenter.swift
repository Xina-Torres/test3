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
    var firstName: String?
    var middleName: String?
    var lastName: String?
    var address: String?
    var age: String?
    var height: String?
    var weight: String?
    var birthday: String?
    var gender: String?
    var userRepository: UserRepository
    var view: RegisterPresenterDelegate
    required init(view: RegisterPresenterDelegate, userRepository: UserRepository){
        self.view = view
        self.userRepository = userRepository
    }
    func register(){
        if firstName == nil || firstName?.isEmpty == true{
            view.didFailGettingFirstName()
        }else{
            setValues(registerTextField: RegisterTextField.firstName, input: firstName!)
        }
        if middleName == nil || middleName?.isEmpty == true{
            view.didFailGettingMiddleName()
        }else{
            setValues(registerTextField: RegisterTextField.middleName, input: middleName!)
        }
        if lastName == nil || lastName?.isEmpty == true{
            view.didFailGettingLastName()
        }else{
            setValues(registerTextField: RegisterTextField.lastName, input: lastName!)
        }
        if address == nil || address?.isEmpty == true{
            view.didFailGettingAddress()
        }else{
            setValues(registerTextField: RegisterTextField.address, input: address!)
        }
        if age == nil || age?.isEmpty == true{
            view.didFailGettingAge()
        }else{
            setValues(registerTextField: RegisterTextField.age, input: age!)
        }
        if height == nil || height?.isEmpty == true{
            view.didFailGettingHeight()
        }else{
            setValues(registerTextField: RegisterTextField.height, input: height!)
        }
        if weight == nil || weight?.isEmpty == true{
            view.didFailGettingWeight()
        }else{
            setValues(registerTextField: RegisterTextField.weight, input: weight!)
        }
        if birthday == nil || birthday?.isEmpty == true{
            view.didFailGettingBirthday()
        }else{
            setValues(registerTextField: RegisterTextField.birthday, input: birthday!)
        }
        if gender == nil || gender?.isEmpty == true{
            view.didFailGettingGender()
        }else{
            setValues(registerTextField: RegisterTextField.gender, input: gender!)
        }
    }
    func setValues(registerTextField: RegisterTextField, input: String){
        switch registerTextField{
        case .firstName:
            self.firstName = input
            break
        case .middleName:
            self.middleName = input
            break
        case .lastName:
            self.lastName = input
            break
        case .address:
            self.address = input
            break
        case .age:
            self.age = input
            break
        case .height:
            self.height = input
            break
        case .weight:
            self.weight = input
            break
        case .birthday:
            self.birthday = input
            break
        case .gender:
            self.gender = input
            break
        }
    }
    func getFirstName() -> String{
        if let firstName = firstName{
            return firstName
        }
        return "nil"
    }
    func getMiddleName() -> String{
        if let middleName = middleName{
            return middleName
        }
        return "nil"
    }
    func getLastName() -> String{
        if let lastName = lastName{
            return lastName
        }
        return "nil"
    }
    func getAddress() -> String{
        if let address = address{
            return address
        }
        return "nil"
    }
    func getAge() -> String{
        if let age = age{
            return age
        }
        return "nil"
    }
    func getHeight() -> String{
        if let height = height{
            return height
        }
        return "nil"
    }
    func getWeight() -> String{
        if let weight = weight{
            return weight
        }
        return "nil"
    }
    func getBirthday() -> String{
        if let birthday = birthday{
            return birthday
        }
        return "nil"
    }
    func getGender() -> String{
        if let gender = gender{
            return gender
        }
        return "nil"
    }
}
