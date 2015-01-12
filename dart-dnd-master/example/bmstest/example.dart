import 'dart:html';
import 'package:dnd/dnd.dart';
import 'package:sqljocky/sqljocky.dart';

/**
 * An example of a how to freely drag a [Draggable]. Instead of using a clone
 * for the drag avatar, the original element itself is dragged.
 */
main() {
  // Install draggable.
  
  Draggable draggableA = new Draggable(querySelector('#b1'), 
      avatarHandler: new AvatarHandler.original());
  Draggable draggableB = new Draggable(querySelector('#b2'), 
      avatarHandler: new AvatarHandler.original());
 

  // Paragraph.
  Element p = querySelector('#b1 p');
  
  // Listen to drag start.
  draggableA.onDragStart.listen((DraggableEvent event) {
    p.innerHtml = 'DragStart: <br>${round(event.position)}';
  });
  
  // Listen do drag.
  draggableA.onDrag.listen((DraggableEvent event) {
    p.innerHtml = 'Drag: <br>${round(event.position)}';
  });
  
  // Gets the element with id 'id'
  draggableA.onDragEnd.listen((DraggableEvent event) {
    p.innerHtml = 'DragEnd: ${round(event.position)} ';
  });
 //  var element = Draggable.querySelector('#id');

  

}
/**
initBeacons() {
  var i = 0;
  var x = 2;
  for(i==0;i<x;i++)
  {
    var bdrag;
    bdrag = "draggable"+i;
    Draggable ${bdrag} = new Draggable(querySelector('#b1'), 
        avatarHandler: new AvatarHandler.original());
    
  }
}
**/
Point round(Point point) {
  return new Point(point.x.round(), point.y.round());
}
