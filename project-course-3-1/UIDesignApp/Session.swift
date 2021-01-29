//
//  Session.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 29.01.2021.
//

import UIKit

struct Session {
    static var userInfo = Session()
    
    var toket: String = "" // для хранения токена в приложении
    var userId: Int = 0 // для хранения идентификатора пользователя в приложении
    
    private init() {}
}
