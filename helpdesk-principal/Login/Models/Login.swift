//
//  Login.swift
//  helpdesk-principal
//
//  Created by Arlid Henao Rueda on 23/01/24.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let idMensaje, mensaje, messageCode, messageType: String
    let data: DataClass

    enum codingKeys: String, CodingKey {
        case idMessage = "idmensaje"
        case Message
        case messageCode = "codigomensaje"
        case messageType = "tipomensaje"
        case data
    }
}

// MARK: - DataClass
struct DataClass: Codable {
    let sessionUserId, tokenSession: String

    enum CodingKeys: String, CodingKey {
        case sessionUserId = "idusuariosesion"
        case tokenSession = "tokensesion"
    }
}
