import Cocoa

extension NSEvent {
    /**
     * Returns localPosition in a view (converts a global position to a local position)
     * TODO: hopefully this method also works if the view is not 0,0 in the window
     */
    func localPos(_ view:NSView)->CGPoint{
        return view.convert(self.locationInWindow,from:nil)
    }
    var shiftKey:Bool {return self.modifierFlags.contains(NSEventModifierFlags.shift)}/*Convenience*/
    var commandKey:Bool {return self.modifierFlags.contains(NSEventModifierFlags.command)}/*Convenience*/
    var altKey:Bool {return self.modifierFlags.contains(NSEventModifierFlags.option)}/*Convenience*/
    var ctrlKey:Bool {return self.modifierFlags.contains(NSEventModifierFlags.control)}/*Convenience*/
    //Bonus: There is also FunctionKeyMask
    static func cmdKey()->Bool{/*Convenience*/
        return NSEvent.modifierFlags().contains(NSEventModifierFlags.shift)
    }
}
