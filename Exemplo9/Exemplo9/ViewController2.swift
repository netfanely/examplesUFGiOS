/*************************************************************
 Nome: Exemplo9
 Descricao: exemplo demonstra a troca de telas por push
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

//Bibliotecas utilizadas

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Details"

        // Do any additional setup after loading the view.
    }

    @IBAction func handleButton(_ sender: Any)
    {
            let viewController = storyboard?.instantiateViewController(withIdentifier: "viewcontroller3") as! ViewController3
        
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
