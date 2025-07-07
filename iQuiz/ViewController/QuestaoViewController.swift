//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Wallace Henrique da Silva Piovani on 19/06/25.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0
    
    @IBOutlet weak var labelTituloQuestao: UILabel!
    @IBOutlet var botaoQuestoes: [UIButton]!
    
    func ajustarLayout(){
        navigationItem.hidesBackButton = true
        for botao in botaoQuestoes{
            botao.layer.cornerRadius = 8
        }
    }
    
    @objc func configurarQuestao(){
        let respostaAleatoria = questoes[numeroQuestao].respostas.shuffled()
        labelTituloQuestao.text = questoes[numeroQuestao].titulo
        for (index, botao) in botaoQuestoes.enumerated(){
            botao.setTitle(respostaAleatoria[index], for: .normal)
            botao.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        }
    }
    
    @IBAction func botaoRespostaPressionado(_ sender: UIButton){
        if sender.titleLabel?.text == questoes[numeroQuestao].respostaCorreta{
            pontuacao+=1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
            //print("Reposta Correta, agora você está com: \(pontuacao) pontos")
        }
        else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        if numeroQuestao < questoes.count-1{
            numeroQuestao+=1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        }
        else{
            navegaParaTelaDesempenho()
        }
    }
    
    func navegaParaTelaDesempenho(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
       
    override func viewDidLoad() {
        super.viewDidLoad()
        ajustarLayout()
        configurarQuestao()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = pontuacao
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
