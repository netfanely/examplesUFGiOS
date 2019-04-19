/*************************************************************
 Nome: Exemplo8
 Descricao: exemplo demonstra a troca de telas por Modal
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

//Bibliotecas utilizadas

import UIKit

class ViewController2: UIViewController {

    //Retorno de troca de telas por modal
    @IBAction func handleBack(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
