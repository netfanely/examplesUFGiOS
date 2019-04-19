/*************************************************************
 Nome: Exemplo3
 Descricao: exemplo demonstra uso de IBActions e IBOutlets
 Autor: Silvano Malfatti
 Data: 01/11/2016
 **************************************************************/

//Bibliotecas utilizadas
import UIKit

class ViewController: UIViewController
{
    //Atributos da classe
    @IBOutlet weak var vrLabelResultado: UILabel!
    @IBOutlet weak var vrCampoPeso: UITextField!
    @IBOutlet weak var vrCampoAltura: UITextField!
    
    //Trata o evento do botao
    @IBAction func eventoBotao(_ sender: Any)
    {
        let peso = Int(vrCampoPeso.text!)
        let altura = Float(vrCampoAltura.text!)
        let resultado = Float(peso!) / (altura! * altura!)

        vrLabelResultado.text =  String.init(format: "Resultado: %0.2f", resultado)
    }
    
    //Tela acabou de ser carregada
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    
    //Sobrescreve o metodo de toque na tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        vrCampoPeso.resignFirstResponder()
        vrCampoAltura.resignFirstResponder()
    }
    
    //Tela recebeu uma mensagem indicando falta de memoria no sistema
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

