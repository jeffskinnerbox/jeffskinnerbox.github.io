

Message serialization goes by a variety of names like “marshalling” or “packing” but all fall under the umbrella of declaring the structure by which messages are assembled.

Message serialization is the way that data in a computer’s memory gets converted
to a form in which it can be communicated, typically via a low bandwidth connection.
Message serialization goes by a variety of names like “marshalling” or “packing”
but all one must define the structure by which messages are assembled.

There are many parameters which might affect your selection of one serialization format versus another,
but a few are consistently important.
The first question to answer first is: schemafull or schemaless? Both strategies specify the format of your data, that’s the point of the message serialization after all. But what goes inside each message can be structured differently.

* [The Ceedy World Of Message Serialization](https://hackaday.com/2020/06/10/the-ceedy-world-of-message-serialization/)
* [MessagePack Is A More Efficient JSON](https://hackaday.com/2020/03/12/messagepack-is-a-more-efficient-json/)
