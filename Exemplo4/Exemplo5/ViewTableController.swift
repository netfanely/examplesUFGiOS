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

class ViewTableController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    //Atributos da classe
    var cardapio = ["Pizzas", "Bebidas", "Sobremesas"]
    var itensCardapio = [["Calabresa", "California", "Mussarela", "Portuguesa", "Quatro Queijos"], ["Cervejas", "Vinhos", "Sucos"], ["Salada de Frutas", "Sorvete", "Torta Doce"]]
    
    //Variaveis de referencia para componentes de interface
    @IBOutlet weak var vrTableView: UITableView!
    
    
    //Tela acabou de ser carregada
    override func viewDidLoad()
    {
        super.viewDidLoad()
        vrTableView.dataSource = self
        vrTableView.delegate = self
    }
    
    
    //Implementacao dos metodos de DataSource
    //Define o numero de secoes da tabela
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return cardapio.count
    }
    
    //Define o numero de linhas em cada secao (Chamado N vezes)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return itensCardapio[section].count
    }
    
    //Define o titulo para cada secao (chamado N vezes)
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return cardapio[section]
    }
    
    //Define a celula para cada seção na tabela (chamado M x N), secao linha  = indexPath
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let celula:CelulaCustomizada = vrTableView.dequeueReusableCell(withIdentifier: "celulaCustomizada") as! CelulaCustomizada
        celula.vrImageView.image = UIImage(named: itensCardapio[indexPath.section][indexPath.row])
        celula.vrLabel.text = itensCardapio[indexPath.section][indexPath.row]
        return celula
    }
    
    //Implementacao dos metodos de delegate
    //Linha da tabela clicada
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("\(indexPath.section) \(indexPath.row)")
    }
}

