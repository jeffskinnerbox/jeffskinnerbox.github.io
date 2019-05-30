Title: Testing: Embedding commandlinefu.com
Slug: testing-embedding-commandlinefu
Status: hidden

## The Back Story
[Commandlinefu.com][01] is an online repository for recording commandline gems,
that you can return to again and again. 
If you're an avid user of the Linux command line, this site is for you
since it contains a huge collection of user contributed commandline solutions.
You can quickly browse through the list using its search facility ("grep the archive").
You can also contribute your own commands and create your favorites list.

[Embedding your commands in your blog/homepage](http://www.commandlinefu.com/site/widget)
[Download entire commandlinefu.com in a single txt file](http://pmoghadam.com/homepage/HTML/commandlinefu-downloader.html)

```
<script type="text/javascript" src="http://www.commandlinefu.com/commands/by/jeffskinnerbox/json/clfwidget/"></script>
<script type="text/javascript">
    function clfwidget(commands) {
        var commandsHtml = [];
        for (var i=0; i<Math.min(5, commands.length); ++i) {
            var command = commands[i].command;
            var summary = commands[i].summary;
            var url = commands[i].url;
            commandsHtml.push('<li><a href="'+url+'">'+summary+'</a><br/><code>$ '+command+'</code></li>');
        }
        var listHtml = '<ul>'+commandsHtml.join('')+'</ul>';
        var widgetHtml = listHtml+'<p><a href="http://www.commandlinefu.com">commandlinefu.com</a></p>';
        document.getElementById('commandlinefu_list').innerHTML = widgetHtml;
    }
</script>

<div id="commandlinefu_list">
</div>
```


[01]:http://www.commandlinefu.com/
