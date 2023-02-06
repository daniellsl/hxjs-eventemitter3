package eventemitter3;

/**
	`object` should be in either of the following forms:
	```
	interface EventTypes {
	   'event-with-parameters': any[]
	   'event-with-example-handler': (...args: any[]) => void
	}
	```
**/
typedef ValidEventTypes = ts.AnyOf3<String, js.lib.Symbol, Dynamic>;