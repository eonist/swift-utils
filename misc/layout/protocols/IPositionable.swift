import Foundation

protocol IPositional {
    var position:CGPoint{get set}
    func setPosition(position:CGPoint)
    func setPosition(x:CGFloat,y:CGFloat)
}
extension IPositional{
    var x:CGFloat{get{return self.position.x} set{self.position.x = newValue}}
    var y:CGFloat{get{return self.position.y} set{self.position.y = newValue}}
    func getPosition() -> CGPoint {
        return position
    }
    /*
    mutating func setPosition(x:CGFloat,y:CGFloat){
        self.x = x
        self.y = y
    }
    mutating func setPosition(position:CGPoint){
        self.position.x = position.x
        self.position.y = position.y
    }
    */
    
    //var positional:IPositional {get{return self as IPositional}set{}}/*This method provides support for returning a direct pointer when casting to protocol, which swift doesnt do, it only provides an immutable reference, which is unusable when setting variables*/
}


