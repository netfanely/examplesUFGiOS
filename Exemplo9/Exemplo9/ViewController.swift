/*************************************************************
 Nome: Exemplo9
 Descricao: exemplo demonstra a troca de telas por push
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

//Bibliotecas utilizadas
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Profile"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let viewController = segue.destination as! ViewController2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

