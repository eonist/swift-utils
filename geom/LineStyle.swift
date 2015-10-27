import Cocoa
protocol ILineStyle {
    var color: NSColor { get set }
}
class LineStyle :ILineStyle{
    var color:NSColor
    var borderWidth:Int
    /**
    *
    */
    init(borderWidth:Int = 0,color:NSColor = NSColor.clearColor()){
        self.borderWidth = borderWidth
        self.color = color
    }
}
extension LineStyle {
    /**
    *
    */
    func color()->NSColor{
        return NSColor.clearColor()
    }
    
}