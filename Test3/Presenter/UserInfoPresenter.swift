import Foundation
protocol UserInfoPresenterDelegate{
    func showUserInfo(_ user: [UserDataModel])
}
class UserInfoPresenter{
    // MARK: - Properties
    
    var userDataModel: UserDataModel
    var view: UserInfoPresenterDelegate
    
    // MARK: - Functions
    
    required init(view: UserInfoPresenterDelegate, userDataModel: UserDataModel){
        self.view = view
        self.userDataModel = userDataModel
    }
}
