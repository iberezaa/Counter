import UIKit

class ViewController: UIViewController {
    
    private var count: Int = 0

    @IBOutlet private weak var labelCount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func counterUpdate(){
        labelCount.text = "Значение счетчика: \(count)"
    }

    @IBAction private func buttonCounterFunc(_ sender: Any) {
        count += 1
        counterUpdate()
    }
    
    @IBAction private func buttonInfo(_ sender: Any) {
        print(count)
    }
}
