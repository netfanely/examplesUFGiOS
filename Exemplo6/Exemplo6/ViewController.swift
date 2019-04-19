/*************************************************************
 Nome: Exemplo6
 Descricao: exemplo demonstra uso ScrollLayouts
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

//Bibliotecas utilizadas
import UIKit

class ViewController: UIViewController {

    var images = ["california", "mussarela", "portuguesa", "quatro_queijos", "salada_de_frutas", "sorvete", "sucos"]
    
    @IBOutlet weak var vrScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillScrollView()
        // Do any additional setup after loading the view, typically from a nib.
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
        var offset = 5
        
        for image in images
        {
            let vrImage = UIImage(named: image)
            let vrImageView = UIImageView(image: vrImage)
            vrImageView.frame = CGRect(origin: CGPoint(x:contentSize + offset, y:0), size:CGSize(width: 80, height: 80))
            contentSize += 80 + offset
            
            
            vrScrollView.contentSize = CGSize(width: contentSize, height: 80)
            
            vrScrollView.addSubview(vrImageView)
        }
    }


}

