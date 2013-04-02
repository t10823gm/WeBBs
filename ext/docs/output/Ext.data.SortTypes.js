Ext.data.JsonP.Ext_data_SortTypes({"tagname":"class","html":"<div><pre class=\"hierarchy\"><h4>Hierarchy</h4><div class='subclass first-child'><a href='#!/api/Ext.Base' rel='Ext.Base' class='docClass'>Ext.Base</a><div class='subclass '><strong>Ext.data.SortTypes</strong></div></div><h4>Files</h4><div class='dependency'><a href='source/SortTypes.html#Ext-data-SortTypes' target='_blank'>SortTypes.js</a></div></pre><div class='doc-contents'><p>This class defines a series of static methods that are used on a\n<a href=\"#!/api/Ext.data.Field\" rel=\"Ext.data.Field\" class=\"docClass\">Ext.data.Field</a> for performing sorting. The methods cast the\nunderlying values into a data type that is appropriate for sorting on\nthat particular field.  If a <a href=\"#!/api/Ext.data.Field-cfg-type\" rel=\"Ext.data.Field-cfg-type\" class=\"docClass\">Ext.data.Field.type</a> is specified,\nthe sortType will be set to a sane default if the sortType is not\nexplicitly defined on the field. The sortType will make any necessary\nmodifications to the value and return it.</p>\n\n<ul>\n<li><b>asText</b> - Removes any tags and converts the value to a string</li>\n<li><b>asUCText</b> - Removes any tags and converts the value to an uppercase string</li>\n<li><b>asUCText</b> - Converts the value to an uppercase string</li>\n<li><b>asDate</b> - Converts the value into Unix epoch time</li>\n<li><b>asFloat</b> - Converts the value to a floating point number</li>\n<li><b>asInt</b> - Converts the value to an integer number</li>\n</ul>\n\n\n<p>\nIt is also possible to create a custom sortType that can be used throughout\nan application.\n<pre><code>Ext.apply(Ext.data.SortTypes, {\n    asPerson: function(person){\n        // expects an object with a first and last name property\n        return person.lastName.toUpperCase() + person.firstName.toLowerCase();\n    }    \n});\n\nExt.define('Employee', {\n    extend: 'Ext.data.Model',\n    fields: [{\n        name: 'person',\n        sortType: 'asPerson'\n    }, {\n        name: 'salary',\n        type: 'float' // sortType set to asFloat\n    }]\n});\n</code></pre>\n</p>\n\n</div><div class='members'><div id='m-property'><div class='definedBy'>Defined By</div><h3 class='members-title'>Properties</h3><div class='subsection'><div id='property-self' class='member first-child inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.Base' rel='Ext.Base' class='definedIn docClass'>Ext.Base</a><br/><a href='source/Base3.html#Ext-Base-property-self' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.Base-property-self' class='name expandable'>self</a><span> : <a href=\"#!/api/Ext.Class\" rel=\"Ext.Class\" class=\"docClass\">Ext.Class</a></span><strong class='protected-signature'>protected</strong></div><div class='description'><div class='short'>Get the reference to the current class from which this object was instantiated. ...</div><div class='long'><p>Get the reference to the current class from which this object was instantiated. Unlike <a href=\"#!/api/Ext.Base-method-statics\" rel=\"Ext.Base-method-statics\" class=\"docClass\">statics</a>,\n<code>this.self</code> is scope-dependent and it's meant to be used for dynamic inheritance. See <a href=\"#!/api/Ext.Base-method-statics\" rel=\"Ext.Base-method-statics\" class=\"docClass\">statics</a>\nfor a detailed comparison</p>\n\n<pre><code>Ext.define('My.Cat', {\n    statics: {\n        speciesName: 'Cat' // My.Cat.speciesName = 'Cat'\n    },\n\n    constructor: function() {\n        alert(this.self.speciesName); / dependent on 'this'\n\n        return this;\n    },\n\n    clone: function() {\n        return new this.self();\n    }\n});\n\n\nExt.define('My.SnowLeopard', {\n    extend: 'My.Cat',\n    statics: {\n        speciesName: 'Snow Leopard'         // My.SnowLeopard.speciesName = 'Snow Leopard'\n    }\n});\n\nvar cat = new My.Cat();                     // alerts 'Cat'\nvar snowLeopard = new My.SnowLeopard();     // alerts 'Snow Leopard'\n\nvar clone = snowLeopard.clone();\nalert(Ext.getClassName(clone));             // alerts 'My.SnowLeopard'\n</code></pre>\n</div></div></div><div id='property-stripTagsRE' class='member  not-inherited'><a href='#' class='side not-expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.data.SortTypes' rel='Ext.data.SortTypes' class='definedIn docClass'>Ext.data.SortTypes</a><br/><a href='source/SortTypes.html#Ext-data-SortTypes-property-stripTagsRE' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.data.SortTypes-property-stripTagsRE' class='name not-expandable'>stripTagsRE</a><span> : <a href=\"#!/api/RegExp\" rel=\"RegExp\" class=\"docClass\">RegExp</a></span></div><div class='description'><div class='short'><p>The regular expression used to strip tags</p>\n</div><div class='long'><p>The regular expression used to strip tags</p>\n</div></div></div></div></div><div id='m-method'><div class='definedBy'>Defined By</div><h3 class='members-title'>Methods</h3><div class='subsection'><div id='method-asDate' class='member first-child not-inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.data.SortTypes' rel='Ext.data.SortTypes' class='definedIn docClass'>Ext.data.SortTypes</a><br/><a href='source/SortTypes.html#Ext-data-SortTypes-method-asDate' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.data.SortTypes-method-asDate' class='name expandable'>asDate</a>( <span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a> s</span> ) : <a href=\"#!/api/Number\" rel=\"Number\" class=\"docClass\">Number</a></div><div class='description'><div class='short'>Date sorting ...</div><div class='long'><p>Date sorting</p>\n<h3 class=\"pa\">Parameters</h3><ul><li><span class='pre'>s</span> : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a><div class='sub-desc'><p>The value being converted</p>\n</div></li></ul><h3 class='pa'>Returns</h3><ul><li><span class='pre'><a href=\"#!/api/Number\" rel=\"Number\" class=\"docClass\">Number</a></span><div class='sub-desc'><p>The comparison value</p>\n</div></li></ul></div></div></div><div id='method-asFloat' class='member  not-inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.data.SortTypes' rel='Ext.data.SortTypes' class='definedIn docClass'>Ext.data.SortTypes</a><br/><a href='source/SortTypes.html#Ext-data-SortTypes-method-asFloat' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.data.SortTypes-method-asFloat' class='name expandable'>asFloat</a>( <span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a> s</span> ) : <a href=\"#!/api/Number\" rel=\"Number\" class=\"docClass\">Number</a></div><div class='description'><div class='short'>Float sorting ...</div><div class='long'><p>Float sorting</p>\n<h3 class=\"pa\">Parameters</h3><ul><li><span class='pre'>s</span> : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a><div class='sub-desc'><p>The value being converted</p>\n</div></li></ul><h3 class='pa'>Returns</h3><ul><li><span class='pre'><a href=\"#!/api/Number\" rel=\"Number\" class=\"docClass\">Number</a></span><div class='sub-desc'><p>The comparison value</p>\n</div></li></ul></div></div></div><div id='method-asInt' class='member  not-inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.data.SortTypes' rel='Ext.data.SortTypes' class='definedIn docClass'>Ext.data.SortTypes</a><br/><a href='source/SortTypes.html#Ext-data-SortTypes-method-asInt' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.data.SortTypes-method-asInt' class='name expandable'>asInt</a>( <span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a> s</span> ) : <a href=\"#!/api/Number\" rel=\"Number\" class=\"docClass\">Number</a></div><div class='description'><div class='short'>Integer sorting ...</div><div class='long'><p>Integer sorting</p>\n<h3 class=\"pa\">Parameters</h3><ul><li><span class='pre'>s</span> : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a><div class='sub-desc'><p>The value being converted</p>\n</div></li></ul><h3 class='pa'>Returns</h3><ul><li><span class='pre'><a href=\"#!/api/Number\" rel=\"Number\" class=\"docClass\">Number</a></span><div class='sub-desc'><p>The comparison value</p>\n</div></li></ul></div></div></div><div id='method-asText' class='member  not-inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.data.SortTypes' rel='Ext.data.SortTypes' class='definedIn docClass'>Ext.data.SortTypes</a><br/><a href='source/SortTypes.html#Ext-data-SortTypes-method-asText' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.data.SortTypes-method-asText' class='name expandable'>asText</a>( <span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a> s</span> ) : <a href=\"#!/api/String\" rel=\"String\" class=\"docClass\">String</a></div><div class='description'><div class='short'>Strips all HTML tags to sort on text only ...</div><div class='long'><p>Strips all HTML tags to sort on text only</p>\n<h3 class=\"pa\">Parameters</h3><ul><li><span class='pre'>s</span> : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a><div class='sub-desc'><p>The value being converted</p>\n</div></li></ul><h3 class='pa'>Returns</h3><ul><li><span class='pre'><a href=\"#!/api/String\" rel=\"String\" class=\"docClass\">String</a></span><div class='sub-desc'><p>The comparison value</p>\n</div></li></ul></div></div></div><div id='method-asUCString' class='member  not-inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.data.SortTypes' rel='Ext.data.SortTypes' class='definedIn docClass'>Ext.data.SortTypes</a><br/><a href='source/SortTypes.html#Ext-data-SortTypes-method-asUCString' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.data.SortTypes-method-asUCString' class='name expandable'>asUCString</a>( <span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a> s</span> ) : <a href=\"#!/api/String\" rel=\"String\" class=\"docClass\">String</a></div><div class='description'><div class='short'>Case insensitive string ...</div><div class='long'><p>Case insensitive string</p>\n<h3 class=\"pa\">Parameters</h3><ul><li><span class='pre'>s</span> : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a><div class='sub-desc'><p>The value being converted</p>\n</div></li></ul><h3 class='pa'>Returns</h3><ul><li><span class='pre'><a href=\"#!/api/String\" rel=\"String\" class=\"docClass\">String</a></span><div class='sub-desc'><p>The comparison value</p>\n</div></li></ul></div></div></div><div id='method-asUCText' class='member  not-inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.data.SortTypes' rel='Ext.data.SortTypes' class='definedIn docClass'>Ext.data.SortTypes</a><br/><a href='source/SortTypes.html#Ext-data-SortTypes-method-asUCText' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.data.SortTypes-method-asUCText' class='name expandable'>asUCText</a>( <span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a> s</span> ) : <a href=\"#!/api/String\" rel=\"String\" class=\"docClass\">String</a></div><div class='description'><div class='short'>Strips all HTML tags to sort on text only - Case insensitive ...</div><div class='long'><p>Strips all HTML tags to sort on text only - Case insensitive</p>\n<h3 class=\"pa\">Parameters</h3><ul><li><span class='pre'>s</span> : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a><div class='sub-desc'><p>The value being converted</p>\n</div></li></ul><h3 class='pa'>Returns</h3><ul><li><span class='pre'><a href=\"#!/api/String\" rel=\"String\" class=\"docClass\">String</a></span><div class='sub-desc'><p>The comparison value</p>\n</div></li></ul></div></div></div><div id='method-callOverridden' class='member  inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.Base' rel='Ext.Base' class='definedIn docClass'>Ext.Base</a><br/><a href='source/Base3.html#Ext-Base-method-callOverridden' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.Base-method-callOverridden' class='name expandable'>callOverridden</a>( <span class='pre'><a href=\"#!/api/Array\" rel=\"Array\" class=\"docClass\">Array</a>/Arguments args</span> ) : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a><strong class='protected-signature'>protected</strong></div><div class='description'><div class='short'>Call the original method that was previously overridden with override\n\nExt.define('My.Cat', {\n    constructor: functi...</div><div class='long'><p>Call the original method that was previously overridden with <a href=\"#!/api/Ext.Base-static-method-override\" rel=\"Ext.Base-static-method-override\" class=\"docClass\">override</a></p>\n\n<pre><code>Ext.define('My.Cat', {\n    constructor: function() {\n        alert(\"I'm a cat!\");\n\n        return this;\n    }\n});\n\nMy.Cat.override({\n    constructor: function() {\n        alert(\"I'm going to be a cat!\");\n\n        var instance = this.callOverridden();\n\n        alert(\"Meeeeoooowwww\");\n\n        return instance;\n    }\n});\n\nvar kitty = new My.Cat(); // alerts \"I'm going to be a cat!\"\n                          // alerts \"I'm a cat!\"\n                          // alerts \"Meeeeoooowwww\"\n</code></pre>\n<h3 class=\"pa\">Parameters</h3><ul><li><span class='pre'>args</span> : <a href=\"#!/api/Array\" rel=\"Array\" class=\"docClass\">Array</a>/Arguments<div class='sub-desc'><p>The arguments, either an array or the <code>arguments</code> object</p>\n</div></li></ul><h3 class='pa'>Returns</h3><ul><li><span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a></span><div class='sub-desc'><p>Returns the result after calling the overridden method</p>\n</div></li></ul></div></div></div><div id='method-callParent' class='member  inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.Base' rel='Ext.Base' class='definedIn docClass'>Ext.Base</a><br/><a href='source/Base3.html#Ext-Base-method-callParent' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.Base-method-callParent' class='name expandable'>callParent</a>( <span class='pre'><a href=\"#!/api/Array\" rel=\"Array\" class=\"docClass\">Array</a>/Arguments args</span> ) : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a><strong class='protected-signature'>protected</strong></div><div class='description'><div class='short'>Call the parent's overridden method. ...</div><div class='long'><p>Call the parent's overridden method. For example:</p>\n\n<pre><code>Ext.define('My.own.A', {\n    constructor: function(test) {\n        alert(test);\n    }\n});\n\nExt.define('My.own.B', {\n    extend: 'My.own.A',\n\n    constructor: function(test) {\n        alert(test);\n\n        this.callParent([test + 1]);\n    }\n});\n\nExt.define('My.own.C', {\n    extend: 'My.own.B',\n\n    constructor: function() {\n        alert(\"Going to call parent's overriden constructor...\");\n\n        this.callParent(arguments);\n    }\n});\n\nvar a = new My.own.A(1); // alerts '1'\nvar b = new My.own.B(1); // alerts '1', then alerts '2'\nvar c = new My.own.C(2); // alerts \"Going to call parent's overriden constructor...\"\n                         // alerts '2', then alerts '3'\n</code></pre>\n<h3 class=\"pa\">Parameters</h3><ul><li><span class='pre'>args</span> : <a href=\"#!/api/Array\" rel=\"Array\" class=\"docClass\">Array</a>/Arguments<div class='sub-desc'><p>The arguments, either an array or the <code>arguments</code> object\nfrom the current method, for example: <code>this.callParent(arguments)</code></p>\n</div></li></ul><h3 class='pa'>Returns</h3><ul><li><span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a></span><div class='sub-desc'><p>Returns the result from the superclass' method</p>\n</div></li></ul></div></div></div><div id='method-initConfig' class='member  inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.Base' rel='Ext.Base' class='definedIn docClass'>Ext.Base</a><br/><a href='source/Base3.html#Ext-Base-method-initConfig' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.Base-method-initConfig' class='name expandable'>initConfig</a>( <span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a> config</span> ) : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a><strong class='protected-signature'>protected</strong></div><div class='description'><div class='short'>Initialize configuration for this class. ...</div><div class='long'><p>Initialize configuration for this class. a typical example:</p>\n\n<pre><code>Ext.define('My.awesome.Class', {\n    // The default config\n    config: {\n        name: 'Awesome',\n        isAwesome: true\n    },\n\n    constructor: function(config) {\n        this.initConfig(config);\n\n        return this;\n    }\n});\n\nvar awesome = new My.awesome.Class({\n    name: 'Super Awesome'\n});\n\nalert(awesome.getName()); // 'Super Awesome'\n</code></pre>\n<h3 class=\"pa\">Parameters</h3><ul><li><span class='pre'>config</span> : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a><div class='sub-desc'>\n</div></li></ul><h3 class='pa'>Returns</h3><ul><li><span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a></span><div class='sub-desc'><p>mixins The mixin prototypes as key - value pairs</p>\n</div></li></ul></div></div></div><div id='method-none' class='member  not-inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.data.SortTypes' rel='Ext.data.SortTypes' class='definedIn docClass'>Ext.data.SortTypes</a><br/><a href='source/SortTypes.html#Ext-data-SortTypes-method-none' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.data.SortTypes-method-none' class='name expandable'>none</a>( <span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a> s</span> ) : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a></div><div class='description'><div class='short'>Default sort that does nothing ...</div><div class='long'><p>Default sort that does nothing</p>\n<h3 class=\"pa\">Parameters</h3><ul><li><span class='pre'>s</span> : <a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a><div class='sub-desc'><p>The value being converted</p>\n</div></li></ul><h3 class='pa'>Returns</h3><ul><li><span class='pre'><a href=\"#!/api/Object\" rel=\"Object\" class=\"docClass\">Object</a></span><div class='sub-desc'><p>The comparison value</p>\n</div></li></ul></div></div></div><div id='method-statics' class='member  inherited'><a href='#' class='side expandable'><span>&nbsp;</span></a><div class='title'><div class='meta'><a href='#!/api/Ext.Base' rel='Ext.Base' class='definedIn docClass'>Ext.Base</a><br/><a href='source/Base3.html#Ext-Base-method-statics' target='_blank' class='viewSource'>view source</a></div><a href='#!/api/Ext.Base-method-statics' class='name expandable'>statics</a>( <span class='pre'></span> ) : <a href=\"#!/api/Ext.Class\" rel=\"Ext.Class\" class=\"docClass\">Ext.Class</a><strong class='protected-signature'>protected</strong></div><div class='description'><div class='short'>Get the reference to the class from which this object was instantiated. ...</div><div class='long'><p>Get the reference to the class from which this object was instantiated. Note that unlike <a href=\"#!/api/Ext.Base-property-self\" rel=\"Ext.Base-property-self\" class=\"docClass\">self</a>,\n<code>this.statics()</code> is scope-independent and it always returns the class from which it was called, regardless of what\n<code>this</code> points to during run-time</p>\n\n<pre><code>Ext.define('My.Cat', {\n    statics: {\n        totalCreated: 0,\n        speciesName: 'Cat' // My.Cat.speciesName = 'Cat'\n    },\n\n    constructor: function() {\n        var statics = this.statics();\n\n        alert(statics.speciesName);     // always equals to 'Cat' no matter what 'this' refers to\n                                        // equivalent to: My.Cat.speciesName\n\n        alert(this.self.speciesName);   // dependent on 'this'\n\n        statics.totalCreated++;\n\n        return this;\n    },\n\n    clone: function() {\n        var cloned = new this.self;                      // dependent on 'this'\n\n        cloned.groupName = this.statics().speciesName;   // equivalent to: My.Cat.speciesName\n\n        return cloned;\n    }\n});\n\n\nExt.define('My.SnowLeopard', {\n    extend: 'My.Cat',\n\n    statics: {\n        speciesName: 'Snow Leopard'     // My.SnowLeopard.speciesName = 'Snow Leopard'\n    },\n\n    constructor: function() {\n        this.callParent();\n    }\n});\n\nvar cat = new My.Cat();                 // alerts 'Cat', then alerts 'Cat'\n\nvar snowLeopard = new My.SnowLeopard(); // alerts 'Cat', then alerts 'Snow Leopard'\n\nvar clone = snowLeopard.clone();\nalert(Ext.getClassName(clone));         // alerts 'My.SnowLeopard'\nalert(clone.groupName);                 // alerts 'Cat'\n\nalert(My.Cat.totalCreated);             // alerts 3\n</code></pre>\n<h3 class='pa'>Returns</h3><ul><li><span class='pre'><a href=\"#!/api/Ext.Class\" rel=\"Ext.Class\" class=\"docClass\">Ext.Class</a></span><div class='sub-desc'>\n</div></li></ul></div></div></div></div></div></div></div>","allMixins":[],"meta":{"docauthor":["Evan Trimboli <evan@sencha.com>"]},"requires":[],"deprecated":null,"extends":"Ext.Base","inheritable":false,"static":false,"superclasses":["Ext.Base","Ext.data.SortTypes"],"singleton":true,"code_type":"ext_define","alias":null,"statics":{"property":[],"css_var":[],"css_mixin":[],"cfg":[],"method":[],"event":[]},"subclasses":[],"uses":[],"protected":false,"mixins":[],"members":{"property":[{"tagname":"property","deprecated":null,"static":false,"owner":"Ext.Base","template":null,"required":null,"protected":true,"name":"self","id":"property-self"},{"tagname":"property","deprecated":null,"static":false,"owner":"Ext.data.SortTypes","template":null,"required":null,"protected":false,"name":"stripTagsRE","id":"property-stripTagsRE"}],"css_var":[],"css_mixin":[],"cfg":[],"method":[{"tagname":"method","deprecated":null,"static":false,"owner":"Ext.data.SortTypes","template":false,"required":null,"protected":false,"name":"asDate","id":"method-asDate"},{"tagname":"method","deprecated":null,"static":false,"owner":"Ext.data.SortTypes","template":false,"required":null,"protected":false,"name":"asFloat","id":"method-asFloat"},{"tagname":"method","deprecated":null,"static":false,"owner":"Ext.data.SortTypes","template":false,"required":null,"protected":false,"name":"asInt","id":"method-asInt"},{"tagname":"method","deprecated":null,"static":false,"owner":"Ext.data.SortTypes","template":false,"required":null,"protected":false,"name":"asText","id":"method-asText"},{"tagname":"method","deprecated":null,"static":false,"owner":"Ext.data.SortTypes","template":false,"required":null,"protected":false,"name":"asUCString","id":"method-asUCString"},{"tagname":"method","deprecated":null,"static":false,"owner":"Ext.data.SortTypes","template":false,"required":null,"protected":false,"name":"asUCText","id":"method-asUCText"},{"tagname":"method","deprecated":null,"static":false,"owner":"Ext.Base","template":false,"required":null,"protected":true,"name":"callOverridden","id":"method-callOverridden"},{"tagname":"method","deprecated":null,"static":false,"owner":"Ext.Base","template":false,"required":null,"protected":true,"name":"callParent","id":"method-callParent"},{"tagname":"method","deprecated":null,"static":false,"owner":"Ext.Base","template":false,"required":null,"protected":true,"name":"initConfig","id":"method-initConfig"},{"tagname":"method","deprecated":null,"static":false,"owner":"Ext.data.SortTypes","template":false,"required":null,"protected":false,"name":"none","id":"method-none"},{"tagname":"method","deprecated":null,"static":false,"owner":"Ext.Base","template":false,"required":null,"protected":true,"name":"statics","id":"method-statics"}],"event":[]},"private":false,"component":false,"name":"Ext.data.SortTypes","alternateClassNames":[],"id":"class-Ext.data.SortTypes","mixedInto":[],"xtypes":{},"files":[{"href":"SortTypes.html#Ext-data-SortTypes","filename":"SortTypes.js"}]});