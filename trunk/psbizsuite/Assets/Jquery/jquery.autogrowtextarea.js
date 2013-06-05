  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Autogrow-Textarea/jquery.autogrowtextarea.js at master · jevin/Autogrow-Textarea · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="http://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <link rel="assets" href="https://a248.e.akamai.net/assets.github.com/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" />

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="jEbqSuDoMnien0fXsKFFAI7838/7xvVCeSRkrWm2hlM=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-a4c524f2138ecc4dd5bf9b8a6b1517bf38aa7b65.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-d2a693e8a6a75b6cde3420333a9e70bd2a2e20a4.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-5c60c478b1e0f90d149f11ed15aa52edd2996882.js" type="text/javascript"></script>
      <script src="https://a248.e.akamai.net/assets.github.com/assets/github-dca362d39ce6c15fd1d471169cd12026ca7ff8cc.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="4f7f9c630bd61e5b628d7029fe05b824">

        <link data-pjax-transient rel='permalink' href='/jevin/Autogrow-Textarea/blob/55b7f0cbaefa6f3da2d088f3129a07f1b69cebab/jquery.autogrowtextarea.js'>
    <meta property="og:title" content="Autogrow-Textarea"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/jevin/Autogrow-Textarea"/>
    <meta property="og:image" content="https://secure.gravatar.com/avatar/37a8f54311b7a1215af53f56c65a0965?s=420&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="Autogrow-Textarea - A jQuery plugin that allows textareas to grow vertically when text is typed in."/>
    <meta property="twitter:card" content="summary"/>
    <meta property="twitter:site" content="@GitHub">
    <meta property="twitter:title" content="jevin/Autogrow-Textarea"/>

    <meta name="description" content="Autogrow-Textarea - A jQuery plugin that allows textareas to grow vertically when text is typed in." />


    <meta content="1003859" name="octolytics-dimension-user_id" /><meta content="jevin" name="octolytics-dimension-user_login" /><meta content="2267438" name="octolytics-dimension-repository_id" /><meta content="jevin/Autogrow-Textarea" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="2267438" name="octolytics-dimension-repository_network_root_id" /><meta content="jevin/Autogrow-Textarea" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/jevin/Autogrow-Textarea/commits/master.atom" rel="alternate" title="Recent Commits to Autogrow-Textarea:master" type="application/atom+xml" />

  </head>


  <body class="logged_out page-blob windows vis-public env-production  ">
    <div id="wrapper">

      
      
      

      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">Github</a>

    <div class="header-actions">
      <a class="button primary" href="/signup">Sign up</a>
      <a class="button" href="/login?return_to=%2Fjevin%2FAutogrow-Textarea%2Fblob%2Fmaster%2Fjquery.autogrowtextarea.js">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">


      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="http://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">
  <a href="/search/advanced" class="advanced-search-icon tooltipped downwards command-bar-search" id="advanced_search" title="Advanced search"><span class="octicon octicon-gear "></span></a>

  <input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
      data-repo="jevin/Autogrow-Textarea"
      data-branch="master"
      data-sha="a3ca201bc6b66fc99d255cb52f7d776b42865403"
  >

    <input type="hidden" name="nwo" value="jevin/Autogrow-Textarea" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

  <div class="divider-vertical"></div>

</form>
    </div>

  </div>
</div>


      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu ">
          <div class="container">
            <div class="title-actions-bar">
              

<ul class="pagehead-actions">



    <li>
      <a href="/login?return_to=%2Fjevin%2FAutogrow-Textarea"
        class="minibutton js-toggler-target star-button entice tooltipped upwards"
        title="You must be signed in to use this feature" rel="nofollow">
        <span class="octicon octicon-star"></span>Star
      </a>
      <a class="social-count js-social-count" href="/jevin/Autogrow-Textarea/stargazers">
        34
      </a>
    </li>
    <li>
      <a href="/login?return_to=%2Fjevin%2FAutogrow-Textarea"
        class="minibutton js-toggler-target fork-button entice tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/jevin/Autogrow-Textarea/network" class="social-count">
        30
      </a>
    </li>
</ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-octicon octicon-repo"></span>
                <span class="author vcard">
                  <a href="/jevin" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">jevin</span>
                  </a></span> /
                <strong><a href="/jevin/Autogrow-Textarea" class="js-current-repository">Autogrow-Textarea</a></strong>
              </h1>
            </div>

            
  <ul class="tabs">
    <li class="pulse-nav"><a href="/jevin/Autogrow-Textarea/pulse" class="js-selected-navigation-item " data-selected-links="pulse /jevin/Autogrow-Textarea/pulse" rel="nofollow"><span class="octicon octicon-pulse"></span></a></li>
    <li><a href="/jevin/Autogrow-Textarea" class="js-selected-navigation-item selected" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /jevin/Autogrow-Textarea">Code</a></li>
    <li><a href="/jevin/Autogrow-Textarea/network" class="js-selected-navigation-item " data-selected-links="repo_network /jevin/Autogrow-Textarea/network">Network</a></li>
    <li><a href="/jevin/Autogrow-Textarea/pulls" class="js-selected-navigation-item " data-selected-links="repo_pulls /jevin/Autogrow-Textarea/pulls">Pull Requests <span class='counter'>4</span></a></li>

      <li><a href="/jevin/Autogrow-Textarea/issues" class="js-selected-navigation-item " data-selected-links="repo_issues /jevin/Autogrow-Textarea/issues">Issues <span class='counter'>4</span></a></li>



    <li><a href="/jevin/Autogrow-Textarea/graphs" class="js-selected-navigation-item " data-selected-links="repo_graphs repo_contributors /jevin/Autogrow-Textarea/graphs">Graphs</a></li>


  </ul>
  
<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
          <li><a href="/jevin/Autogrow-Textarea/tags" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_tags /jevin/Autogrow-Textarea/tags">Tags <span class="counter blank">0</span></a></li>
    </ul>
  </span>

  <div class="tabnav-widget scope">


    <div class="select-menu js-menu-container js-select-menu js-branch-menu">
      <a class="minibutton select-menu-button js-menu-target" data-hotkey="w" data-ref="master">
        <span class="octicon octicon-branch"></span>
        <i>branch:</i>
        <span class="js-select-button">master</span>
      </a>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">

        <div class="select-menu-modal">
          <div class="select-menu-header">
            <span class="select-menu-title">Switch branches/tags</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-filters">
            <div class="select-menu-text-filter">
              <input type="text" id="commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
            </div>
            <div class="select-menu-tabs">
              <ul>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
                </li>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
                </li>
              </ul>
            </div><!-- /.select-menu-tabs -->
          </div><!-- /.select-menu-filters -->

          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="branches">

            <div data-filterable-for="commitish-filter-field" data-filterable-type="substring">

                <div class="select-menu-item js-navigation-item selected">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/jevin/Autogrow-Textarea/blob/master/jquery.autogrowtextarea.js" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" rel="nofollow" title="master">master</a>
                </div> <!-- /.select-menu-item -->
            </div>

              <div class="select-menu-no-results">Nothing to show</div>
          </div> <!-- /.select-menu-list -->


          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="tags">
            <div data-filterable-for="commitish-filter-field" data-filterable-type="substring">

            </div>

            <div class="select-menu-no-results">Nothing to show</div>

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/jevin/Autogrow-Textarea" class="selected js-selected-navigation-item tabnav-tab" data-selected-links="repo_source /jevin/Autogrow-Textarea">Files</a></li>
    <li><a href="/jevin/Autogrow-Textarea/commits/master" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_commits /jevin/Autogrow-Textarea/commits/master">Commits</a></li>
    <li><a href="/jevin/Autogrow-Textarea/branches" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_branches /jevin/Autogrow-Textarea/branches" rel="nofollow">Branches <span class="counter ">1</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:8cc27a516cba02a861649e5511fb0b8c -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:8cc27a516cba02a861649e5511fb0b8c -->


<div id="slider">
    <div class="frame-meta">

      <p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

        <div class="breadcrumb">
          <span class='bold'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/jevin/Autogrow-Textarea" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">Autogrow-Textarea</span></a></span></span><span class="separator"> / </span><strong class="final-path">jquery.autogrowtextarea.js</strong> <span class="js-zeroclipboard zeroclipboard-button" data-clipboard-text="jquery.autogrowtextarea.js" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
        </div>

      <a href="/jevin/Autogrow-Textarea/find/master" class="js-slide-to" data-hotkey="t" style="display:none">Show File Finder</a>


        
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/37a8f54311b7a1215af53f56c65a0965?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/jevin" rel="author">jevin</a></span>
    <time class="js-relative-date" datetime="2013-02-07T10:59:13-08:00" title="2013-02-07 10:59:13">February 07, 2013</time>
    <div class="commit-title">
        <a href="/jevin/Autogrow-Textarea/commit/55b7f0cbaefa6f3da2d088f3129a07f1b69cebab" class="message">Version 3.1: Support for special characters</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong> contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2>Users on GitHub who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/37a8f54311b7a1215af53f56c65a0965?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/jevin">jevin</a>
        </li>
      </ul>
    </div>
  </div>


    </div><!-- ./.frame-meta -->

    <div class="frames">
      <div class="frame" data-permalink-url="/jevin/Autogrow-Textarea/blob/55b7f0cbaefa6f3da2d088f3129a07f1b69cebab/jquery.autogrowtextarea.js" data-title="Autogrow-Textarea/jquery.autogrowtextarea.js at master · jevin/Autogrow-Textarea · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="octicon octicon-file-text"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>61 lines (49 sloc)</span>
                <span>2.163 kb</span>
              </div>
              <div class="actions">
                <div class="button-group">
                      <a class="minibutton js-entice" href=""
                         data-entice="You must be signed in and on a branch to make or propose changes">Edit</a>
                  <a href="/jevin/Autogrow-Textarea/raw/master/jquery.autogrowtextarea.js" class="button minibutton " id="raw-url">Raw</a>
                    <a href="/jevin/Autogrow-Textarea/blame/master/jquery.autogrowtextarea.js" class="button minibutton ">Blame</a>
                  <a href="/jevin/Autogrow-Textarea/commits/master/jquery.autogrowtextarea.js" class="button minibutton " rel="nofollow">History</a>
                </div><!-- /.button-group -->
              </div><!-- /.actions -->

            </div>
                <div class="blob-wrapper data type-javascript js-blob-data">
      <table class="file-code file-diff">
        <tr class="file-code-line">
          <td class="blob-line-nums">
            <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>

          </td>
          <td class="blob-line-code">
                  <div class="highlight"><pre><div class='line' id='LC1'><span class="cm">/*</span></div><div class='line' id='LC2'><span class="cm"> * ----------------------------------------------------------------------------</span></div><div class='line' id='LC3'><span class="cm"> * &quot;THE BEER-WARE LICENSE&quot; (Revision 42):</span></div><div class='line' id='LC4'><span class="cm"> * &lt;jevin9@gmail.com&gt; wrote this file. As long as you retain this notice you</span></div><div class='line' id='LC5'><span class="cm"> * can do whatever you want with this stuff. If we meet some day, and you think</span></div><div class='line' id='LC6'><span class="cm"> * this stuff is worth it, you can buy me a beer in return. Jevin O. Sewaruth</span></div><div class='line' id='LC7'><span class="cm"> * ----------------------------------------------------------------------------</span></div><div class='line' id='LC8'><span class="cm"> *</span></div><div class='line' id='LC9'><span class="cm"> * Autogrow Textarea Plugin Version v3.0</span></div><div class='line' id='LC10'><span class="cm"> * http://www.technoreply.com/autogrow-textarea-plugin-3-0</span></div><div class='line' id='LC11'><span class="cm"> * </span></div><div class='line' id='LC12'><span class="cm"> * THIS PLUGIN IS DELIVERD ON A PAY WHAT YOU WHANT BASIS. IF THE PLUGIN WAS USEFUL TO YOU, PLEASE CONSIDER BUYING THE PLUGIN HERE :</span></div><div class='line' id='LC13'><span class="cm"> * https://sites.fastspring.com/technoreply/instant/autogrowtextareaplugin</span></div><div class='line' id='LC14'><span class="cm"> *</span></div><div class='line' id='LC15'><span class="cm"> * Date: October 15, 2012</span></div><div class='line' id='LC16'><span class="cm"> */</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'><span class="nx">jQuery</span><span class="p">.</span><span class="nx">fn</span><span class="p">.</span><span class="nx">autoGrow</span> <span class="o">=</span> <span class="kd">function</span><span class="p">()</span> <span class="p">{</span></div><div class='line' id='LC19'>	<span class="k">return</span> <span class="k">this</span><span class="p">.</span><span class="nx">each</span><span class="p">(</span><span class="kd">function</span><span class="p">()</span> <span class="p">{</span></div><div class='line' id='LC20'><br/></div><div class='line' id='LC21'>		<span class="kd">var</span> <span class="nx">createMirror</span> <span class="o">=</span> <span class="kd">function</span><span class="p">(</span><span class="nx">textarea</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC22'>			<span class="nx">jQuery</span><span class="p">(</span><span class="nx">textarea</span><span class="p">).</span><span class="nx">after</span><span class="p">(</span><span class="s1">&#39;&lt;div class=&quot;autogrow-textarea-mirror&quot;&gt;&lt;/div&gt;&#39;</span><span class="p">);</span></div><div class='line' id='LC23'>			<span class="k">return</span> <span class="nx">jQuery</span><span class="p">(</span><span class="nx">textarea</span><span class="p">).</span><span class="nx">next</span><span class="p">(</span><span class="s1">&#39;.autogrow-textarea-mirror&#39;</span><span class="p">)[</span><span class="mi">0</span><span class="p">];</span></div><div class='line' id='LC24'>		<span class="p">}</span></div><div class='line' id='LC25'><br/></div><div class='line' id='LC26'>		<span class="kd">var</span> <span class="nx">sendContentToMirror</span> <span class="o">=</span> <span class="kd">function</span> <span class="p">(</span><span class="nx">textarea</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC27'>			<span class="nx">mirror</span><span class="p">.</span><span class="nx">innerHTML</span> <span class="o">=</span> <span class="nb">String</span><span class="p">(</span><span class="nx">textarea</span><span class="p">.</span><span class="nx">value</span><span class="p">).</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/&amp;/g</span><span class="p">,</span> <span class="s1">&#39;&amp;amp;&#39;</span><span class="p">).</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/&quot;/g</span><span class="p">,</span> <span class="s1">&#39;&amp;quot;&#39;</span><span class="p">).</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/&#39;/g</span><span class="p">,</span> <span class="s1">&#39;&amp;#39;&#39;</span><span class="p">).</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/&lt;/g</span><span class="p">,</span> <span class="s1">&#39;&amp;lt;&#39;</span><span class="p">).</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/&gt;/g</span><span class="p">,</span> <span class="s1">&#39;&amp;gt;&#39;</span><span class="p">).</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/\n/g</span><span class="p">,</span> <span class="s1">&#39;&lt;br /&gt;&#39;</span><span class="p">)</span> <span class="o">+</span> <span class="s1">&#39;.&lt;br/&gt;.&#39;</span><span class="p">;</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'>			<span class="k">if</span> <span class="p">(</span><span class="nx">jQuery</span><span class="p">(</span><span class="nx">textarea</span><span class="p">).</span><span class="nx">height</span><span class="p">()</span> <span class="o">!=</span> <span class="nx">jQuery</span><span class="p">(</span><span class="nx">mirror</span><span class="p">).</span><span class="nx">height</span><span class="p">())</span></div><div class='line' id='LC30'>				<span class="nx">jQuery</span><span class="p">(</span><span class="nx">textarea</span><span class="p">).</span><span class="nx">height</span><span class="p">(</span><span class="nx">jQuery</span><span class="p">(</span><span class="nx">mirror</span><span class="p">).</span><span class="nx">height</span><span class="p">());</span></div><div class='line' id='LC31'>		<span class="p">}</span></div><div class='line' id='LC32'><br/></div><div class='line' id='LC33'>		<span class="kd">var</span> <span class="nx">growTextarea</span> <span class="o">=</span> <span class="kd">function</span> <span class="p">()</span> <span class="p">{</span></div><div class='line' id='LC34'>			<span class="nx">sendContentToMirror</span><span class="p">(</span><span class="k">this</span><span class="p">);</span></div><div class='line' id='LC35'>		<span class="p">}</span></div><div class='line' id='LC36'><br/></div><div class='line' id='LC37'>		<span class="c1">// Create a mirror</span></div><div class='line' id='LC38'>		<span class="kd">var</span> <span class="nx">mirror</span> <span class="o">=</span> <span class="nx">createMirror</span><span class="p">(</span><span class="k">this</span><span class="p">);</span></div><div class='line' id='LC39'><br/></div><div class='line' id='LC40'>		<span class="c1">// Style the mirror</span></div><div class='line' id='LC41'>		<span class="nx">mirror</span><span class="p">.</span><span class="nx">style</span><span class="p">.</span><span class="nx">display</span> <span class="o">=</span> <span class="s1">&#39;none&#39;</span><span class="p">;</span></div><div class='line' id='LC42'>		<span class="nx">mirror</span><span class="p">.</span><span class="nx">style</span><span class="p">.</span><span class="nx">wordWrap</span> <span class="o">=</span> <span class="s1">&#39;break-word&#39;</span><span class="p">;</span></div><div class='line' id='LC43'>		<span class="nx">mirror</span><span class="p">.</span><span class="nx">style</span><span class="p">.</span><span class="nx">padding</span> <span class="o">=</span> <span class="nx">jQuery</span><span class="p">(</span><span class="k">this</span><span class="p">).</span><span class="nx">css</span><span class="p">(</span><span class="s1">&#39;padding&#39;</span><span class="p">);</span></div><div class='line' id='LC44'>		<span class="nx">mirror</span><span class="p">.</span><span class="nx">style</span><span class="p">.</span><span class="nx">width</span> <span class="o">=</span> <span class="nx">jQuery</span><span class="p">(</span><span class="k">this</span><span class="p">).</span><span class="nx">css</span><span class="p">(</span><span class="s1">&#39;width&#39;</span><span class="p">);</span></div><div class='line' id='LC45'>		<span class="nx">mirror</span><span class="p">.</span><span class="nx">style</span><span class="p">.</span><span class="nx">fontFamily</span> <span class="o">=</span> <span class="nx">jQuery</span><span class="p">(</span><span class="k">this</span><span class="p">).</span><span class="nx">css</span><span class="p">(</span><span class="s1">&#39;font-family&#39;</span><span class="p">);</span></div><div class='line' id='LC46'>		<span class="nx">mirror</span><span class="p">.</span><span class="nx">style</span><span class="p">.</span><span class="nx">fontSize</span> <span class="o">=</span> <span class="nx">jQuery</span><span class="p">(</span><span class="k">this</span><span class="p">).</span><span class="nx">css</span><span class="p">(</span><span class="s1">&#39;font-size&#39;</span><span class="p">);</span></div><div class='line' id='LC47'>		<span class="nx">mirror</span><span class="p">.</span><span class="nx">style</span><span class="p">.</span><span class="nx">lineHeight</span> <span class="o">=</span> <span class="nx">jQuery</span><span class="p">(</span><span class="k">this</span><span class="p">).</span><span class="nx">css</span><span class="p">(</span><span class="s1">&#39;line-height&#39;</span><span class="p">);</span></div><div class='line' id='LC48'><br/></div><div class='line' id='LC49'>		<span class="c1">// Style the textarea</span></div><div class='line' id='LC50'>		<span class="k">this</span><span class="p">.</span><span class="nx">style</span><span class="p">.</span><span class="nx">overflow</span> <span class="o">=</span> <span class="s2">&quot;hidden&quot;</span><span class="p">;</span></div><div class='line' id='LC51'>		<span class="k">this</span><span class="p">.</span><span class="nx">style</span><span class="p">.</span><span class="nx">minHeight</span> <span class="o">=</span> <span class="k">this</span><span class="p">.</span><span class="nx">rows</span><span class="o">+</span><span class="s2">&quot;em&quot;</span><span class="p">;</span></div><div class='line' id='LC52'><br/></div><div class='line' id='LC53'>		<span class="c1">// Bind the textarea&#39;s event</span></div><div class='line' id='LC54'>		<span class="k">this</span><span class="p">.</span><span class="nx">onkeyup</span> <span class="o">=</span> <span class="nx">growTextarea</span><span class="p">;</span></div><div class='line' id='LC55'><br/></div><div class='line' id='LC56'>		<span class="c1">// Fire the event for text already present</span></div><div class='line' id='LC57'>		<span class="nx">sendContentToMirror</span><span class="p">(</span><span class="k">this</span><span class="p">);</span></div><div class='line' id='LC58'><br/></div><div class='line' id='LC59'>	<span class="p">});</span></div><div class='line' id='LC60'><span class="p">};</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>

        <a href="#jump-to-line" rel="facebox" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
        <div id="jump-to-line" style="display:none">
          <h2>Jump to Line</h2>
          <form accept-charset="UTF-8" class="js-jump-to-line-form">
            <input class="textfield js-jump-to-line-field" type="text">
            <div class="full-button">
              <button type="submit" class="button">Go</button>
            </div>
          </form>
        </div>

      </div>
    </div>
</div>

<div id="js-frame-loading-template" class="frame frame-loading large-loading-area" style="display:none;">
  <img class="js-frame-loading-spinner" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif?1347543527" height="64" width="64">
</div>


        </div>
      </div>
      <div class="modal-backdrop"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer">
  <div class="container clearfix">

      <dl class="footer_nav">
        <dt>GitHub</dt>
        <dd><a href="/about">About us</a></dd>
        <dd><a href="/blog">Blog</a></dd>
        <dd><a href="/contact">Contact &amp; support</a></dd>
        <dd><a href="http://enterprise.github.com/">GitHub Enterprise</a></dd>
        <dd><a href="http://status.github.com/">Site status</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Applications</dt>
        <dd><a href="http://mac.github.com/">GitHub for Mac</a></dd>
        <dd><a href="http://windows.github.com/">GitHub for Windows</a></dd>
        <dd><a href="http://eclipse.github.com/">GitHub for Eclipse</a></dd>
        <dd><a href="http://mobile.github.com/">GitHub mobile apps</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Services</dt>
        <dd><a href="http://get.gaug.es/">Gauges: Web analytics</a></dd>
        <dd><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></dd>
        <dd><a href="https://gist.github.com">Gist: Code snippets</a></dd>
        <dd><a href="http://jobs.github.com/">Job board</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Documentation</dt>
        <dd><a href="http://help.github.com/">GitHub Help</a></dd>
        <dd><a href="http://developer.github.com/">Developer API</a></dd>
        <dd><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></dd>
        <dd><a href="http://pages.github.com/">GitHub Pages</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>More</dt>
        <dd><a href="http://training.github.com/">Training</a></dd>
        <dd><a href="/edu">Students &amp; teachers</a></dd>
        <dd><a href="http://shop.github.com">The Shop</a></dd>
        <dd><a href="/plans">Plans &amp; pricing</a></dd>
        <dd><a href="http://octodex.github.com/">The Octodex</a></dd>
      </dl>

      <hr class="footer-divider">


    <p class="right">&copy; 2013 <span title="0.04619s from fe16.rs.github.com">GitHub</span>, Inc. All rights reserved.</p>
    <a class="left" href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>
    <ul id="legal">
        <li><a href="/site/terms">Terms of Service</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
    </ul>

  </div><!-- /.container -->

</div><!-- /.#footer -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/jevin/Autogrow-Textarea/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="octicon octicon-remove-close ajax-error-dismiss"></a>
    </div>

    
    <span id='server_response_time' data-time='0.04657' data-host='fe16'></span>
    
  </body>
</html>

