import Foundation
/**
 * NOTE: There is no TopLeft or BottomRight etc in the CSS sepcs so no need to have more complex relative positioning in this class
 * NOTE: Why do we have this class when its basically the same as Gradient? Because the alternative is to ad another value to to Gradient to represent Gradient Type.
 */
class LinearGradient:Gradient {
    override init(_ colors:Array<CGColor> = [], _ locations:Array<CGFloat> = [],_ rotation:CGFloat = 1.5707963267949, _ transformation:CGAffineTransform? = nil){
        super.init(colors, locations,rotation,transformation)
    }
}
extension LinearGradient{
    convenience init(_ gradient:IGradient){
        self.init(gradient.colors,gradient.locations,gradient.rotation)
    }
}
extension LinearGradient:UnWrappable{//TODO: move to LinearGradient.swift
    static func unWrap<T>(_ xml:XML) -> T? {
        //Swift.print("LinearGradient.unWrap()")
        let colors:Array<CGColor?> = unWrap(xml, "colors")
        //Swift.print("colors: " + "\(colors)")
        let locations:Array<CGFloat?> = unWrap(xml, "locations")
        //Swift.print("locations: " + "\(locations)")
        let rotation:CGFloat = unWrap(xml, "rotation")!
        //Swift.print("rotation: " + "\(rotation)")
        let transformation:CGTransform? = unWrap(xml, "transformation")
        //Swift.print("transformation: " + "\(transformation)")
        return LinearGradient(colors.flatMap{$0}, locations.flatMap{$0}, rotation, transformation) as? T
    }
}