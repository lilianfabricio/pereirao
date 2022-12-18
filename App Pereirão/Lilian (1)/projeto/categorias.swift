//
//  categorias.swift
//  projeto
//
//  Created by Student on 12/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Categoria {
    let nomeCategoria: String
    let fotoCategoria: String
    
    init (nomeCategoria: String, fotoCategoria: String){
        self.nomeCategoria = nomeCategoria
        self.fotoCategoria = fotoCategoria
    }
}

class CategoriaDAO {
    static func getList() -> [Categoria]{
        return [
            Categoria(nomeCategoria: "Aulas Particulares", fotoCategoria: "aulas"),
            Categoria(nomeCategoria: "Serviços domésticos", fotoCategoria: "domestico"),
            Categoria(nomeCategoria: "Reparos", fotoCategoria: "reparos"),
            Categoria(nomeCategoria: "Artesanato", fotoCategoria: "artesanato")
        ]
    }
}
