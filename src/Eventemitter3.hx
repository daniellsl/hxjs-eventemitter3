/**
	Minimal `EventEmitter` interface that is molded against the Node.js
	`EventEmitter` interface.
**/
@:jsRequire("eventemitter3") extern class Eventemitter3<EventTypes, Context> {
	function new();
	/**
		Return an array listing the events for which the emitter has registered
		listeners.
	**/
	function eventNames():Array<eventemitter3.EventNames<EventTypes>>;
	/**
		Return the listeners registered for a given event.
	**/
	function listeners<T>(event:T):Array<eventemitter3.EventListener<EventTypes, T>>;
	/**
		Return the number of listeners listening to a given event.
	**/
	function listenerCount(event:eventemitter3.EventNames<EventTypes>):Float;
	/**
		Calls each of the listeners registered for a given event.
	**/
	function emit<T>(event:T, args:haxe.extern.Rest<Any>):Bool;
	/**
		Add a listener for a given event.
	**/
	function on<T>(event:T, fn:eventemitter3.EventListener<EventTypes, T>, ?context:Context):Eventemitter3<EventTypes, Context>;
	function addListener<T>(event:T, fn:eventemitter3.EventListener<EventTypes, T>, ?context:Context):Eventemitter3<EventTypes, Context>;
	/**
		Add a one-time listener for a given event.
	**/
	function once<T>(event:T, fn:eventemitter3.EventListener<EventTypes, T>, ?context:Context):Eventemitter3<EventTypes, Context>;
	/**
		Remove the listeners of a given event.
	**/
	function removeListener<T>(event:T, ?fn:eventemitter3.EventListener<EventTypes, T>, ?context:Context, ?once:Bool):Eventemitter3<EventTypes, Context>;
	function off<T>(event:T, ?fn:eventemitter3.EventListener<EventTypes, T>, ?context:Context, ?once:Bool):Eventemitter3<EventTypes, Context>;
	/**
		Remove all listeners, or those of the specified event.
	**/
	function removeAllListeners(?event:eventemitter3.EventNames<EventTypes>):Eventemitter3<EventTypes, Context>;
	static var prototype : Eventemitter3<Dynamic, Dynamic>;
	static var prefixed : ts.AnyOf2<String, Bool>;
}