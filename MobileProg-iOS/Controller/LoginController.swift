//
//  LoginController.swift
//  MobileProg-iOS
//
//  Created by Raff on 13/01/22.
//

import Foundation

func loginUser() {
    let body : [String: AnyHashable] = [
        "email": "fradior.xd@gmail.com",
        "password": "Pwassword"
    ]
    post(url: "http://103.150.98.211:3000/user/login", body: body)
}
