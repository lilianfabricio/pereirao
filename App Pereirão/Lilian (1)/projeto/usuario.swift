//
//  usuario.swift
//  projeto
//
//  Created by Student on 14/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Usuario {
    let nomeUsuario: String
    let emailUsuario: String
    let numeroUsuario: String
    let fotoUsuario: String
    
    init (nomeUsuario: String,  emailUsuario: String, numeroUsuario: String, fotoUsuario: String){
        self.nomeUsuario = nomeUsuario
        self.emailUsuario = emailUsuario
        self.numeroUsuario = numeroUsuario
        self.fotoUsuario = fotoUsuario
    }
}

class UsuarioDAO {
    static func getUser() -> Usuario{
        return Usuario(nomeUsuario: "Beyoncé", emailUsuario: "beyonce@ic.ufal.br", numeroUsuario: "(82) 99999-9999", fotoUsuario: "beyonce")
    }
}
