import Foundation

class Database : EventSender{
    var xml : NSXMLElement
    init(xml:NSXMLElement) {
        self.xml = xml
    }
    /**
     * // :TODO: consider renaming to appendAt
     */
    func addAt(index:Array<Int>,xml:NSXMLElement){// :TODO: shouldnt the arguments be in this order: xml, index// :TODO: do we still need the event dispatching, cant the calling method do this?
        XMLModifier.addChildAt(self.xml, index, xml);
        onEvent(DatabaseEvent(DatabaseEvent.addAt,index,self))
    }
    /**
     *  @example setAttributeAt([0], ["title":"someTitle"]);
     *  // :TODO: rename to changeAttribute? or editAttribute?
     */
    func setAttributeAt(index:Array<Int>,_ attributes:Dictionary<String,String>){// :TODO: do we still need the event dispatching, cant the calling method do this?
        XMLModifier.setAttributeAt(xml, index, attributes)
        onEvent(DatabaseEvent(DatabaseEvent.setAttributeAt,index,self))
    }
    /**
     *
     */
    func removeAt(index:Array<Int>){// :TODO: do we still need the event dispatching, cant the calling method do this?
        XMLModifier.removeChildAt(<#T##xml: NSXMLElement##NSXMLElement#>, <#T##index: Array<Int>##Array<Int>#>)
        onEvent(DatabaseEvent(DatabaseEvent.removeAt,index,self))
        dispatchEvent(new DatabaseEvent(DatabaseEvent.REMOVE_AT,index,removedXML));// :TODO: we could dispatch from the DatabaseModifier method

    }
}
