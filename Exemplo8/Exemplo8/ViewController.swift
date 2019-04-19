/*************************************************************
 Nome: Exemplo8
 Descricao: exemplo demonstra a troca de telas por Modal
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

//Bibliotecas utilizadas
import UIKit

class ViewController: UIViewController {

    //Troca de telas em código
    @IBAction func handleButtonCod(_ sender: Any)
    {
        let viewController2 = self.storyboard?.instantiateViewController(withIdentifier: "viewcontroller2") as! ViewController2
        viewController2.modalTransitionStyle = .flipHorizontal
        self.present(viewController2, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Troca de telas por segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let viewController2 = segue.destination as! ViewController2
        viewController2.modalTransitionStyle = .coverVertical
        self.present(viewController2, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

