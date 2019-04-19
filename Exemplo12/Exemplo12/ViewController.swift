/*************************************************************
 Nome: Exemplo12
 Descricao: WebServices e componentes personalizados
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var vrTableView:UITableView!
    var company:Company?
    
    /*****************DATA SOURCE**********/
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (company != nil)
        {
            return (company?.listItens.count)!
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = vrTableView.dequeueReusableCell(withIdentifier: "cell") as! CellController
        
        if let image = ImageManager.getImage(name: (company?.listItens[indexPath.row].image)!)
        {
            cell.vrImageCell.image = image
        }
        else
        {
            cell.vrImageCell.donwloadImage(urlName: (company?.listItens[indexPath.row].image)!)
            
            cell.vrImageCell.image = UIImage(named: "food")
        }
        
        cell.vrRating.numStars = (company?.listItens[indexPath.row].classification)!
        
        cell.vrLabelCell.text = company?.listItens[indexPath.row].itemName
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    /*************DELEGATE****************/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }

    /*********METODOS VIEWCONTROLL***********/
    override func viewDidLoad()
    {
        super.viewDidLoad()
        parseJson()
    }
    
    func assignDataSet(_ company:Company)
    {
        self.company = company;
        vrTableView.reloadData()
    }
    
    func parseJson()
    {
        Alamofire.request("http://silvanomalfattiml.000webhostapp.com/cardapio.json").responseJSON
        {
            response in
            
            if let json = response.result.value as? Dictionary<String, Any>
            {
                
                if let nome = json["company_name"] as? String,
                   let address = json["address"] as? String,
                   let longitude = json["longitude"] as? String,
                   let latitude  = json["latitude"] as? String,
                   let lista = json["itens"] as? Array<Dictionary<String, Any>>
                {
                    let company = Company(companyName: nome, address: address, latitude: Double(latitude)!, longitude:Double(longitude)!)
                
                    for item in lista
                    {
                        if let classification  = item["classification"] as? String,
                           let image = item["image"] as? String,
                           let item_name = item["item_name"] as? String
                        {
                        
                            company.listItens.append(Item(classification: Int(classification)!, image: image, itemName: item_name))
                        }
                    }
                    self.assignDataSet(company)
                }
            }
        }
    }
}

