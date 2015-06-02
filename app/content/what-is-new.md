##What's new?


###[Mixed Mode](http://famous.org/learn/webgl-content.html):  


Famous now unites DOM and WebGL under a single coordinate system. Borrowing concepts from modern video game engines, Famous structures applications in a [scene graph](http://famous.org/learn/scene-graph.html) hierarchy that makes manipulating [HTML and WebGL](http://famous.org/learn/webgl-content.html) together simple.  


###Rebuilt Architecture: 


The new Famous Engine produces almost no garbage at all. Transforms are now updated throug an event-based system, which avoids unnecessary matrix multiplications. The result is a renderer that delivers consistent, smooth, 60fps animations with even better performance than before.

<iframe src='https://staging.famous.org/examples/index.html?block=layout&detail=false&header=false' scrolling='no' class='code-block' allowtransparency='true'></iframe>


###3D [Physics Engine](http://famous.org/learn/physics.html):


Famous introduces a brand new 3D physics engine that brings real life movement to your applications. Living in its own module entirely, you can incorporate as little or as much of it as you want.  
[**More on Famous physics engine here**](http://famous.org/learn/physics.html) 


<iframe src='https://staging.famous.org/examples/index.html?block=physics&detail=false&header=false' scrolling='no' class='code-block' allowtransparency='true'></iframe>


###Embedding Made Easy: 


Beyond our full redesign of the Famous Engine, we've created a robust cloud platform that makes deploying Famous projects dead simple. Using the Famous CLI, you can now embed entire Famous projects into your existing websites with only two lines of code.  
[**Install the CLI to get started**](http://famous.org/get-started.html) 

<pre><code class="lang-bash">
<span class="blue">$</span> famous deploy

Share: 

<span class="yellow">https://api-te.famo.us/codemanager/v1/containers/1abe61ec-2557-4f45-a2fd-c13d3a47b17f/share</span>

Embed:

<span class="blue">&lt;script src=&quot;https://assets-beta.famo.us/embed/embed.js&quot;&gt;&lt;/script&gt;
&lt;div class=&quot;famous-container&quot; data-famous-container-identifier=&quot;1abe61ec-2557-4f45-a2fd-c13d3a47b17f&quot;&gt;&lt;/div&gt;</span>

</code></pre>

###Streamlined Events:


Famous' eventing system has been simplified, promoting encapsulation of reusable and shareable components.


###Improved [Sizing](http://famous.org/learn/sizing.html):


We've redesigned our sizing API to increase flexibility. Developers can now fine-tune sizing independently for X, Y, and Z axes. 


###Modularity: 


We've built Famous with extensibility in mind. In particular, we decoupled our scene graph from our rendering pipeline by using a draw command buffer. This paves the way for new integrations and allows for frameworks to be built on top of our drawing API. 


###[MIT License](https://github.com/famous/engine):


We've moved to a fully open source MIT license that encourages [active participation from the community](http://famous.org/support/#contributing).  Additionally, we've redesigned our [website](http://famous.org) and [learning](http://famous.org/learn/) [resources](http://famous.org/docs/) to make Famous more accessible to everyone. 
