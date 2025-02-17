import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelCount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //counterUpdate()
    }
    var count: Int = 0

    @IBAction func buttonCounterFunc(_ sender: Any) {
        count += 1
        counterUpdate()
    }
    private func counterUpdate(){
        labelCount.text = "Значение счетчика: \(count)"
    }
    
    @IBAction func buttonInfo(_ sender: Any) {
        print(count)
    }
}
