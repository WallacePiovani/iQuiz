//
//  ViewController.swift
//  iQuiz
//
//  Created by Wallace Henrique da Silva Piovani on 17/06/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var botaoIniciarQuiz: UIButton!

    @IBAction func botaoPressionado(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ajusteLayout()
    }
    func ajusteLayout(){
        navigationItem.hidesBackButton = true
    }
}

