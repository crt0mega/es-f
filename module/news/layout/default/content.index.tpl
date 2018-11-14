<!-- COMMENT
/*
 * Copyright (c) 2006-2009 Knut Kohl <knutkohl@users.sourceforge.net>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * GPL: http://www.gnu.org/licenses/gpl.txt
 *
 */
-->

<div id="news_nav" style="text-align:center">

  <!-- BEGIN NEWS -->
    <a href="#{$ROWID}">{NAME}</a>
    {if:$ROWLAST,"<>",TRUE,"&nbsp;|&nbsp;"}
  <!-- END NEWS -->

</div>

<script type="text/javascript">
  // <![CDATA[
  // if we have JS enabled, we get tabs and don't need anchor links
  addLoadEvent($('news_nav').remove());
  // ]]>
</script>

<div class="tabber">
<!-- BEGIN NEWS -->

  <div class="tabbertab">

    <h2><a name="{$ROWID}"></a>{NAME}</h2>

    <!-- IF ERROR -->

      <em>Error fetching news from {a:URL}</em>

    <!-- ELSE -->

      <p>{LINK} ({a:URL})</p>

      <!-- BEGIN DATA -->
      <div class="li">
        <div style="font-size:120%;font-weight:bold">{LINK}</div>
        <small>{nvl:PUBDATE}</small>
        <!-- IF CATEGORY -->
        <br><small><em>[[News.Category]]: {nvl:CATEGORY}</em></small>
        <!-- ENDIF -->
        {nvl:DESCRIPTION}
      </div>
      <!-- END DATA -->

    <!-- ENDIF -->

  </div>

<!-- END NEWS -->

</div>
