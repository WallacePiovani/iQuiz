//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Wallace Henrique da Silva Piovani on 01/07/25.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao: Int?
    
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var percentualLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarDesempenho()
    }
    
    func configurarLayout (){
        navigationItem.hidesBackButton = true
    }
    func configurarDesempenho(){
        guard let pontuacao = pontuacao else { return }
        resultadoLabel.text = "Você acertou \(pontuacao) de \(questoes.count) questões."
        let percentual = (pontuacao * 100) / questoes.count
        percentualLabel.text = "Percentual final: \n\(percentual)%"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
