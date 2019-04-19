/*************************************************************
 Nome: Exemplo5
 Descricao: exemplo demonstra uso de componentes baseados em datasource e delegate
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local:TCE
 **************************************************************/

//Bibliotecas utilizadas
import UIKit
import AVFoundation

class ViewPickController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    //Atributos da classe
    var paradigmas = ["Estruturadas", "Orientadas a Objetos"]
    var vetorLinguagens = [["C", "Pascal"], ["Java", "Swift", "C Sharp"]]
    
    
    
    
    var paradigmaSelecionado = 0
    
    //Referencias para a interface
    @IBOutlet weak var vrPicker: UIPickerView!
    @IBOutlet weak var vrImageView: UIImageView!
    
    //Tela acabou de ser carregada
    override func viewDidLoad()
    {
        super.viewDidLoad()
        vrPicker.delegate = self
        vrPicker.dataSource = self
        carregaImagem(nome: vetorLinguagens[paradigmaSelecionado][0])
    }
    
    
    //Implementacao dos metodos de DataSource
    //Define o numero de componentes do picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return paradigmas.count
    }
    
    
    
    //Define o numero de linhas em cada componente (chamado N vezes)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if (component == 0)
        {
            return paradigmas.count
        }
        
       return vetorLinguagens[pickerView.selectedRow(inComponent: 0)].count
    }
    
    
    //Implementacao dos metodos de delegate
    //Define o titulo de cada linha dos componentes (chamado M x N) vezes
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if (component == 0)
        {
            return paradigmas[row]
        }
        else
        {
            let selecionado = pickerView.selectedRow(inComponent: 0)
            
            return vetorLinguagens[selecionado][row]
        }
    }
    
    //Funcao criada para carregar uma imagem
    private func carregaImagem(nome:String)
    {
        vrImageView.image = UIImage(named: nome)
    }
}

