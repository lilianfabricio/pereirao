//
//  Servico.swift
//
//  Created by Student on 13/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Servico {
    
    let id: String
    let nomePrestador: String
    let nomeServico: String
    let categoria: String
    let valor: String
    let email: String
    let telefone: String
    let descricao: String
    let avaliacao: String
    let image1: String
    let image2: String
    let image3: String
    
    init(id: String, nomePrestador: String, nomeServico: String, categoria: String, valor: String, email: String, telefone: String, descricao: String, avaliacao: String, image1: String, image2: String, image3: String){
        
        self.id = id
        self.nomePrestador = nomePrestador
        self.nomeServico = nomeServico
        self.categoria = categoria
        self.valor = valor
        self.email = email
        self.telefone = telefone
        self.descricao = descricao
        self.avaliacao = avaliacao
        self.image1 = image1
        self.image2 = image2
        self.image3 = image3
        
    }
    
}

class ServicoDAO {
    
    static func getList() -> [Servico] {
        return [
            Servico(id: "1", nomePrestador: "Bruna Torres", nomeServico: "Unhas em gel", categoria: "Beleza", valor: "110,00", email: "bt@ic.ufal.br", telefone: "(82) 99999-9999", descricao: "Especialista em unhas decoradas.", avaliacao: "4.9", image1: "unha1", image2: "unha2", image3: "unha3"),
            Servico(id: "2", nomePrestador: "Lilian Fabrício", nomeServico: "Corte de Cabelo", categoria: "Beleza", valor: "110,00", email: "lfmn@ic.ufal.br", telefone: "(82) 99999-9999", descricao: "Especialista em cortes de cabelos ondulados, cacheados e crespos.", avaliacao: "4.9", image1: "cabelo1", image2: "cabelo2", image3: "cabelo3"),
            Servico(id: "3", nomePrestador: "Karen Gomes", nomeServico: "Maquiagem", categoria: "Beleza", valor: "90,00", email: "kg@ic.ufal.br", telefone: "(82) 99999-9999", descricao: "Especialista em maquiagens para noivas.", avaliacao: "3.7", image1: "make1", image2: "make2", image3: "make3"),
            Servico(id: "4", nomePrestador: "Maria Cristina", nomeServico: "Micropigmentação", categoria: "Beleza", valor: "130,00", email: "mc@ic.ufal.br",telefone: "(82) 99999-9999", descricao: "Especialista em micropigmentação de peles negras.", avaliacao: "4.7", image1: "micro1", image2: "micro2", image3: "micro3"),
            Servico(id: "5", nomePrestador: "Luiza Valéria", nomeServico: "Cookies e doces", categoria: "Culinária", valor: "10,00", email: "lv@ic.ufal.br",telefone: "(82) 99999-9999", descricao: "Nosso maior número de vendas são palhas italianas.", avaliacao: "4.9", image1: "doce1", image2: "doce2", image3: "doce3"),
            Servico(id: "6", nomePrestador: "Rafaela Silva", nomeServico: "Profa. de Matemática", categoria: "Educação", valor: "50,00", email: "rs@ic.ufal.br",telefone: "(82) 99999-9999", descricao: "Aulas para alunos do ensino médio.", avaliacao: "4.6", image1: "aula1", image2: "aula2", image3: "aula3"),
            Servico(id: "7", nomePrestador: "Grizelda", nomeServico: "Faxina", categoria: "Serviços Gerais", valor: "110,00", email: "grizelda@ic.ufal.br",telefone: "(82) 99999-9999", descricao: "15 anos de experiência trabalhando em hotéis.", avaliacao: "4.9", image1: "faxina1", image2: "faxina2", image3: "faxina3"),
        ]
    }
}

