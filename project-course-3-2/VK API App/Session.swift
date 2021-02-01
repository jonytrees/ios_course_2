//
//  Session.swift
//  VK API App
//
//  Created by Евгений Янушкевич on 01.02.2021.
//

import UIKit

struct Session {
    static var userInfo = Session()
    
    var token: String = "c849cbd72b47a5a6edbb990a68a62e6ac79023d05c6e561f214c78d6c26d0b03c6198d894aaf5251a4e68" // для хранения токена в приложении
    var userId: Int = 15302998 // для хранения идентификатора пользователя в приложении
    
    private init() {}
}

