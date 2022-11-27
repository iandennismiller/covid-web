<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/rss">

<html>

  <head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="description" content="CoV Index is the map of Coronavirus Science.
" />
  <meta name="twitter:card" content="summary" />
<meta name="twitter:site" content="@" />
<meta name="twitter:title" content="" />
<meta name="twitter:description" content="" />
<meta name="twitter:image" content="https://iandennismiller.github.io/covid-web" />

  <meta property="og:site_name" content="CoV Index"/>
<meta property="og:type" content="website"/>
<meta property="og:title" content="CoV Index"/>
<meta property="og:description" content=""/>
<meta property="og:url" content="https://iandennismiller.github.io/covid-web/blog/feed.xsl"/>
<meta property="og:image" content="https://iandennismiller.github.io/covid-web"/>


  <link rel="sitemap" href="/sitemap.xml" />
  <link rel="canonical" href="https://iandennismiller.github.io/covid-web/blog/feed.xsl" />
  <link rel="alternate" type="application/rss+xml" title="CoV Index" href="https://iandennismiller.github.io/covid-web/blog/feed.xml" />

  <title>CoV Index measures open source influence </title>

  
  <style>
  body,h1,h2,h3,h4,h5,h6,p,blockquote,pre,hr,dl,dd,ol,ul,figure{margin:0;padding:0}body{font:400 16px/1.5 "Helvetica Neue",Helvetica,Arial,sans-serif;color:#111;background-color:#fdfdfd;-webkit-text-size-adjust:100%;-webkit-font-feature-settings:"kern" 1;-moz-font-feature-settings:"kern" 1;-o-font-feature-settings:"kern" 1;font-feature-settings:"kern" 1;font-kerning:normal}h1,h2,h3,h4,h5,h6,p,blockquote,pre,ul,ol,dl,figure,.highlight{margin-bottom:15px}img{max-width:100%;vertical-align:middle}figure>img{display:block}figcaption{font-size:14px}ul,ol{margin-left:30px}li>ul,li>ol{margin-bottom:0}h1,h2,h3,h4,h5,h6{font-weight:400}a{color:#2a7ae2;text-decoration:none}a:visited{color:#1756a9}a:hover{color:#111;text-decoration:underline}blockquote{color:#828282;border-left:4px solid #e8e8e8;padding-left:15px;font-size:18px;letter-spacing:-1px;font-style:italic}blockquote>:last-child{margin-bottom:0}pre,code{font-size:15px;border:1px solid #e8e8e8;border-radius:3px;background-color:#eef}code{padding:1px 5px}pre{padding:8px 12px;overflow-x:auto}pre>code{border:0;padding-right:0;padding-left:0}.wrapper{max-width:-webkit-calc(800px - (30px * 2));max-width:calc(800px - (30px * 2));margin-right:auto;margin-left:auto;padding-right:30px;padding-left:30px}@media screen and (max-width: 800px){.wrapper{max-width:-webkit-calc(800px - (30px));max-width:calc(800px - (30px));padding-right:15px;padding-left:15px}}.wrapper:after,.footer-col-wrapper:after{content:"";display:table;clear:both}.icon>svg{display:inline-block;width:16px;height:16px;vertical-align:middle}.icon>svg path{fill:#828282}.site-header{border-top:5px solid #424242;border-bottom:1px solid #e8e8e8;min-height:56px;position:relative}.site-title{font-size:26px;font-weight:300;line-height:56px;letter-spacing:-1px;margin-bottom:0;float:left}.site-title,.site-title:visited{color:#424242}.site-nav{float:right;line-height:56px}.site-nav .menu-icon{display:none}.site-nav .page-link{color:#111;line-height:1.5}.site-nav .page-link:not(:last-child){margin-right:20px}@media screen and (max-width: 600px){.site-nav{position:absolute;top:9px;right:15px;background-color:#fdfdfd;border:1px solid #e8e8e8;border-radius:5px;text-align:right}.site-nav .menu-icon{display:block;float:right;width:36px;height:26px;line-height:0;padding-top:10px;text-align:center}.site-nav .menu-icon>svg{width:18px;height:15px}.site-nav .menu-icon>svg path{fill:#424242}.site-nav .trigger{clear:both;display:none}.site-nav:hover .trigger{display:block;padding-bottom:5px}.site-nav .page-link{display:block;padding:5px 10px;margin-left:20px}.site-nav .page-link:not(:last-child){margin-right:0}}.site-footer{border-top:1px solid #e8e8e8;padding:30px 0}.footer-heading{font-size:18px;margin-bottom:15px}.contact-list,.social-media-list{list-style:none;margin-left:0}.footer-col-wrapper{font-size:15px;color:#828282;margin-left:-15px}.footer-col{float:left;margin-bottom:15px;padding-left:15px}.footer-col-1{width:-webkit-calc(35% - (30px / 2));width:calc(35% - (30px / 2))}.footer-col-2{width:-webkit-calc(20% - (30px / 2));width:calc(20% - (30px / 2))}.footer-col-3{width:-webkit-calc(45% - (30px / 2));width:calc(45% - (30px / 2))}@media screen and (max-width: 800px){.footer-col-1,.footer-col-2{width:-webkit-calc(50% - (30px / 2));width:calc(50% - (30px / 2))}.footer-col-3{width:-webkit-calc(100% - (30px / 2));width:calc(100% - (30px / 2))}}@media screen and (max-width: 600px){.footer-col{float:none;width:-webkit-calc(100% - (30px / 2));width:calc(100% - (30px / 2))}}.page-content{padding:30px 0}.page-heading{font-size:20px}.post-list{margin-left:0;list-style:none}.post-list>li{margin-bottom:30px}.post-meta{font-size:14px;color:#828282}.post-link{display:block;font-size:24px}.post-header{margin-bottom:30px}.post-title{font-size:42px;letter-spacing:-1px;line-height:1}@media screen and (max-width: 800px){.post-title{font-size:36px}}.post-content{margin-bottom:30px}.post-content h2{font-size:32px}@media screen and (max-width: 800px){.post-content h2{font-size:28px}}.post-content h3{font-size:26px}@media screen and (max-width: 800px){.post-content h3{font-size:22px}}.post-content h4{font-size:20px}@media screen and (max-width: 800px){.post-content h4{font-size:18px}}.highlight{background:#fff}.highlighter-rouge .highlight{background:#eef}.highlight .c{color:#998;font-style:italic}.highlight .err{color:#a61717;background-color:#e3d2d2}.highlight .k{font-weight:bold}.highlight .o{font-weight:bold}.highlight .cm{color:#998;font-style:italic}.highlight .cp{color:#999;font-weight:bold}.highlight .c1{color:#998;font-style:italic}.highlight .cs{color:#999;font-weight:bold;font-style:italic}.highlight .gd{color:#000;background-color:#fdd}.highlight .gd .x{color:#000;background-color:#faa}.highlight .ge{font-style:italic}.highlight .gr{color:#a00}.highlight .gh{color:#999}.highlight .gi{color:#000;background-color:#dfd}.highlight .gi .x{color:#000;background-color:#afa}.highlight .go{color:#888}.highlight .gp{color:#555}.highlight .gs{font-weight:bold}.highlight .gu{color:#aaa}.highlight .gt{color:#a00}.highlight .kc{font-weight:bold}.highlight .kd{font-weight:bold}.highlight .kp{font-weight:bold}.highlight .kr{font-weight:bold}.highlight .kt{color:#458;font-weight:bold}.highlight .m{color:#099}.highlight .s{color:#d14}.highlight .na{color:teal}.highlight .nb{color:#0086B3}.highlight .nc{color:#458;font-weight:bold}.highlight .no{color:teal}.highlight .ni{color:purple}.highlight .ne{color:#900;font-weight:bold}.highlight .nf{color:#900;font-weight:bold}.highlight .nn{color:#555}.highlight .nt{color:navy}.highlight .nv{color:teal}.highlight .ow{font-weight:bold}.highlight .w{color:#bbb}.highlight .mf{color:#099}.highlight .mh{color:#099}.highlight .mi{color:#099}.highlight .mo{color:#099}.highlight .sb{color:#d14}.highlight .sc{color:#d14}.highlight .sd{color:#d14}.highlight .s2{color:#d14}.highlight .se{color:#d14}.highlight .sh{color:#d14}.highlight .si{color:#d14}.highlight .sx{color:#d14}.highlight .sr{color:#009926}.highlight .s1{color:#d14}.highlight .ss{color:#990073}.highlight .bp{color:#999}.highlight .vc{color:teal}.highlight .vg{color:teal}.highlight .vi{color:teal}.highlight .il{color:#099}.zoomify{cursor:pointer;cursor:-webkit-zoom-in;cursor:zoom-in}.zoomify.zoomed{cursor:-webkit-zoom-out;cursor:zoom-out;padding:0;margin:0;border:none;border-radius:0;box-shadow:none;position:relative;z-index:1501}.zoomify-shadow{position:fixed;top:0;left:0;right:0;bottom:0;width:100%;height:100%;display:block;z-index:1500;background:rgba(0,0,0,0.3);opacity:0}.zoomify-shadow.zoomed{opacity:1;cursor:pointer;cursor:-webkit-zoom-out;cursor:zoom-out}.share-button{border:1px solid gray;padding:3px;font-size:10pt;background:#f0f0f0;color:#000;-moz-border-radius:4px;border-radius:4px;margin-right:1em}.share-button:visited{color:#000}.share-button:hover{text-decoration:none;background:#dcdcdc}.share-button .icon{vertical-align:text-bottom}.social{margin-bottom:1em}.footer-col-2{text-align:right}.aside{float:right;width:15em;font-style:italic;border:1px dotted;background:1px dotted;padding:1em;margin-left:1em;margin-top:1em;margin-bottom:1em}#content-license{font-size:8pt;text-align:center}@media screen and (max-width: 600px){#account_name_query{width:5em}#example_list li{display:list-item !important}#board{width:18em}.footer-col-2{text-align:center}.aside{float:none;margin:0px auto;width:90%;margin-bottom:2em}}.var{display:table-cell;width:7em;font-weight:bold}.value{display:table-cell}.search-result{color:darkslategray;font-size:1.3em}.search-result:visited{color:gray}#results{list-style:none;margin-left:0}#search,#search_button{font-size:2em;vertical-align:bottom}#search{width:7em}.lds-circle{display:block;transform:translateZ(1px);margin:0 auto}.lds-circle>div{display:block;width:64px;height:64px;margin:8px;border-radius:50%;background:lightgray;animation:lds-circle 4s cubic-bezier(0, 0.2, 0.8, 1) infinite}@keyframes lds-circle{0%, 100%{animation-timing-function:cubic-bezier(0.5, 0, 1, 0.5)}0%{transform:rotateY(0deg)}50%{transform:rotateY(1800deg);animation-timing-function:cubic-bezier(0, 0.5, 0.5, 1)}100%{transform:rotateY(3600deg)}}.keyword{display:inline-block;margin:0.25em 0.5em 0.25em 0;padding:0.25em;border:1px dotted gray}.keyword:hover{background:lightgray}

  </style>

  
    <!-- <script src="/covid-web/js/main.min.js"></script> -->
    <script src="/covid-web/js/main.js"></script>
  

</head>


  <body>

   <style>
   .site-nav {
      margin-top: 1em;
   }
   </style>

    <header class="site-header">

  <div class="wrapper">

    <a class="site-title" href="/covid-web/"><img width="24" height="24" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHgAAAB4CAYAAAA5ZDbSAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAN1wAADdcBQiibeAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAGuSURBVHic7d1BalVBFEXRUt4AxPnPSiUgBgRDQESjIMaPDZ3EachmrQGczub2CurFOefv2fo83ns/3ruN9z6O994tx14ux/j/CBwncJzAcQLHCRwncJzAcQLHCRwncJzAcQLHCRwncJzAcQLHCRwncNx1zrkfbz6M957Ge2/He+s3aI/LMRccJ3CcwHECxwkcJ3CcwHECxwkcJ3CcwHECxwkcJ3CcwHECxwkcJ3CcwHHXOefPePN5vPdtvPdqvLd+Mzbdc8FxAscJHCdwnMBxAscJHCdwnMBxAscJHCdwnMBxAscJHCdwnMBxAscJHHedc76PN3+M976M996M99ZvsqZ/NbrgOIHjBI4TOE7gOIHjBI4TOE7gOIHjBI4TOE7gOIHjBI4TOE7gOIHjBI67zv4vv9/jva/jvQ/jvfWbttfLMRccJ3CcwHECxwkcJ3CcwHECxwkcJ3CcwHECxwkcJ3CcwHECxwkcJ3CcwHHXOec23rwb7/0c763/Vvw03vu1HHPBcQLHCRwncJzAcQLHCRwncJzAcQLHCRwncJzAcQLHCRwncJzAcQLHCRz3D7O8IB766ZH3AAAAAElFTkSuQmCC" /> CoV Index</a>

    <nav class="site-nav">
      <a href="#" class="menu-icon">
        <svg viewBox="0 0 18 15">
          <path fill="#424242" d="M18,1.484c0,0.82-0.665,1.484-1.484,1.484H1.484C0.665,2.969,0,2.304,0,1.484l0,0C0,0.665,0.665,0,1.484,0 h15.031C17.335,0,18,0.665,18,1.484L18,1.484z"/>
          <path fill="#424242" d="M18,7.516C18,8.335,17.335,9,16.516,9H1.484C0.665,9,0,8.335,0,7.516l0,0c0-0.82,0.665-1.484,1.484-1.484 h15.031C17.335,6.031,18,6.696,18,7.516L18,7.516z"/>
          <path fill="#424242" d="M18,13.516C18,14.335,17.335,15,16.516,15H1.484C0.665,15,0,14.335,0,13.516l0,0 c0-0.82,0.665-1.484,1.484-1.484h15.031C17.335,12.031,18,12.696,18,13.516L18,13.516z"/>
        </svg>
      </a>

      <div class="trigger">
        <a class="page-link" href="/covid-web/about/">About</a>
        <a class="page-link" href="/covid-web/bibtex/">BibTeX</a>
        <a class="page-link" href="/covid-web/blog/">Blog</a>
        <a class="page-link" href="/covid-web/topics/">Topics</a>
        
      </div>
    </nav>

  </div>

</header>


    <div class="page-content">
      <div class="wrapper">

         <div class="home">

           <h1 class="page-heading">RSS Feed for Blog</h1>

           <ul class="post-list">
             <xsl:for-each select="channel/item">

               <li>
                 <span class="post-meta"><xsl:value-of select="pubDate" /></span>

                 <h2>
                  <xsl:element name="a">
                     <xsl:attribute name="href">
                        <xsl:value-of select="link"/>
                     </xsl:attribute>
                     <xsl:value-of select="title"/>
                  </xsl:element>
                 </h2>

                 <div>
                  <xsl:value-of select="description" disable-output-escaping="yes" />
                 </div>
               </li>

             </xsl:for-each>
           </ul>

           <p class="rss-subscribe">subscribe <a class="internal" href="/covid-web/blog/feed.xml">via RSS</a></p>

         </div>

      </div>
    </div>

    <footer class="site-footer">

  <div class="wrapper">

    <!-- <h2 class="footer-heading">CoV Index</h2> -->

    <div class="footer-col-wrapper">
      <div class="footer-col footer-col-1">
        
      </div>

      <div class="footer-col footer-col-2">

        
      </div>

      <div class="footer-col footer-col-3">
        
        <div>CoV Index is the map of Coronavirus Science.
</div>

        <!-- <div id="blogpost">
          Latest article: 
          
              <a href="/covid-web/blog/initial-launch-of-cov-index.html">Initial launch of CoV Index</a>
              <span class="post-meta">Mar 24, 2020</span>
          
        </div> -->

      </div>

    </div>

  </div>

  <div id="content-license">
    <a href="/license/">cc 2020 Ian Dennis Miller</a>
  </div>

</footer>





  </body>

</html>
</xsl:template>
</xsl:stylesheet>