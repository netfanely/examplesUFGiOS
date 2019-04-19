/*************************************************************
 Nome: Exemplo9
 Descricao: exemplo demonstra a troca de telas por push
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

//Bibliotecas utilizadas
import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "About"
        // Do any additional setup after loading the view.
    }

    @IBAction func handleBack(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
