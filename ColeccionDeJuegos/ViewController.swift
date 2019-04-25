
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var juegos : [Juego] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.dataSource = self
        //tableView.delegate = self
   
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do{
            try juegos = context.fetch(Juego.fetchRequest())
            tableView.reloadData()
        }catch{
            
        }
    }
}
