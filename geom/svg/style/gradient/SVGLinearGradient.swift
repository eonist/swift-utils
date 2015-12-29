import Foundation
/**
 * // :TODO: add an example here
 */
class SVGLinearGradient:SVGGradient {
	var x1 : CGFloat
	var y1 : CGFloat
	var x2 : CGFloat
	var y2 : CGFloat
	init(offsets:Array, colors:Array, opacities:Array, x1:Number, y1:Number, x2:Number,y2:Number, gradientUnits:String, spreadMethod:String, id:String,gradientTransform:Matrix) {
		self.x1 = x1
		self.y1 = y1
		self.x2 = x2
		self.y2 = y2
		super.init(_ offsets:Array<CGFloat>,_ colors:Array<CGColor>,_ opacities:Array<CGFloat>,_ spreadMethod:String,_ id:String,_ gradientUnits:String/*,gradientTransform*/);
	}
}
/**
 * Convenience
 */
extension SVGLinearGradient{
    var p1:CGPoint {get{return CGPoint(x1,y1)}set {x1 = newValue.x;y1 = newValue.y}}
    var p2:CGPoint {get{return CGPoint(x2,y2)}set {x2 = newValue.x;y2 = newValue.y}}
}