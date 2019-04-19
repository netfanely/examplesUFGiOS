/*************************************************************
 Nome: Exemplo11
 Descricao: exemplo demonstra a troca de telas (Aplicativo MyPhome)
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

import UIKit

class ViewControllerProfile: UIViewController {

    public var name:String?
    
    @IBOutlet weak var vrLabel: UILabel!
    @IBOutlet weak var vrSwitch: UISwitch!
    
    var images = ["California", "Mussarela", "Portuguesa", "Quatro Queijos", "Salada de Frutas", "Sorvete", "Sucos"]
    
    @IBOutlet weak var vrScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillScrollView()
        
        vrSwitch.setOn(PersistenceManager.getValue(), animated: false)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        vrLabel.text = "Bem vindo \(name!)"
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        PersistenceManager.save(value: vrSwitch.isOn)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Metodo utilizado para tratar o evento disparado pelo botao
    @IBAction func handleLogoff(_ sender: Any)
    {
        let alert = UIAlertController(title: "Atencao", message: "Deseja mesmo sair:", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Sim", style: .default, handler:
            {
                (UIAlertAction) in
                self.dismiss(animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Não", style: .cancel, handler:nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    //Metodo utilizado para preencher a area do ScrollView
    func fillScrollView()
    {
        var contentSize = 0;
        
        for image in images
        {
            let vrImage = UIImage(named: image)
            let vrImageView = UIImageView(image: vrImage)
            vrImageView.frame = CGRect(origin: CGPoint(x:contentSize, y:0), size:CGSize(width: 80, height: 80))
            contentSize += 80
            
            
            vrScrollView.contentSize = CGSize(width: contentSize, height: 80)
            
            vrScrollView.addSubview(vrImageView)
        }
    }

}
