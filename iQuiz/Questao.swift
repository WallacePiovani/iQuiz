//
//  Questao.swift
//  iQuiz
//
//  Created by Wallace Henrique da Silva Piovani on 19/06/25.
//

import Foundation

struct Questao{
    var titulo: String
    var respostas: [String]
    var respostaCorreta: String
}

let questoes: [Questao] = [
    Questao(titulo: "Quem é o pai de Luke Skywalker?", respostas: ["Yoda","Obi-wan","Anakin"], respostaCorreta: "Anakin"),
    Questao(titulo: "Qual o nome do primeiro Robin?", respostas: ["Dick Grayson","Damian Wayne", "Jason Todd"], respostaCorreta: "Dick Grayson"),
    Questao(titulo: "Qual tipo não possui uma Eeveelution?", respostas: ["Fogo", "Eletrico", "Voador"], respostaCorreta: "Voador")
]
