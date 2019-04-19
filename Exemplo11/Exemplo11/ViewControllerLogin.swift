/*************************************************************
 Nome: Exemplo11
 Descricao: exemplo demonstra a troca de telas (Aplicativo MyPhome)
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vrLogin: UITextField!
    
    @IBOutlet weak var vrPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func handleLogin(_ sender: Any)
    {
        if (vrPassword.text == "1234"){
            let viewControllerTab = storyboard!.instantiateViewController(withIdentifier: "tabbarcontroller") as! UITabBarController
            
            self.present(viewControllerTab, animated: true, completion: nil)
        }
        else{
            let alert = UIAlertController(title:"Atenção", message: "Usuário ou senha inválidos", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        vrLogin.resignFirstResponder()
        vrPassword.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

