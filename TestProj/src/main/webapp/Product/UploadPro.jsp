<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Itube 商城 </title>
<!-- <link href="https://cadm.pcstore.com.tw/css/style_2.css" rel="stylesheet" type="text/css"> -->
<!-- <link href="https://cadm.pcstore.com.tw/css/style_c2c.css" rel="stylesheet" type="text/css" /> -->
<!-- <link href="https://cadm.pcstore.com.tw/css/style_lm2_ssl.css" rel="stylesheet" type="text/css" /> -->
<link href="https://cadm.pcstore.com.tw/css/style_c2c_admin.css" rel="stylesheet" type="text/css" />
<!-- <link href="https://cadm.pcstore.com.tw/css/grid_bar.css?t=20130916" rel="stylesheet" type="text/css" /> -->
<!-- <link href="https://paystore.pcstore.com.tw/css/real_fcache/grid_bar_ssl.css?t=2018041303" rel="stylesheet" type="text/css" /> -->

<!-- </head> -->
<body>

<div id="con_main">
	<div class="clear"></div>
<!-- 上方功能列 -->
<div class="twoColFixLtHdr">
<div class="mnu01">
<!-- 最上方資訊列 START -->

<div class="clear"></div>
<!-- 最上方資訊列 END -->
<!-- 主功能區塊 START -->

<div class="mun01-s"></div>    
</div></div>


<div id="close_btn">
<!-- <p id="close_left"><img src="https://cimg.pcstore.com.tw/cw_img/close.gif" width="20" height="51" border="0"/></p> -->
<p id="open_left" style="display: none"><img src="https://cimg.pcstore.com.tw/cw_img/open.gif" width="20" height="51" /></p>
</div>

<form name="main_store" method="post" action="prod_save.php" enctype="multipart/form-data" onsubmit="return false;" id="main_store">

<div class="righttable rightframe">
<!--main start-->
<div id="sellcontent">
<h3>商品基本資料</h3>
<table cellpadding="6" cellspacing="0" frame="box" rules="all">
  <tr>
      <th><span>*</span>商品名稱<br></th>
      <td><input type="text" name="c_prod_name" id="c_prod_name" value="" style="width:97%" /><br />
        <span class="t12red" style="float:right">最多64個中文字</span>     
      </td>
  </tr>
  <tr>
      <th><span>*</span>館別設定</th>
      <td>設定在itube的分類：&nbsp;<strong id="exhText"></strong>
<!--         <input type="button" name="button" id="button" value="設定" / onclick="getExh()"> -->
        <p>
        <select id="exhL1" onchange="exhSel(this);" style="width:16%;"><option value="">請選擇</option></select>&nbsp;
        <select id="exhL2" onchange="exhSel(this);" style="width:16%;"><option value="">請選擇</option></select>&nbsp;
        <select id="exhL3" onchange="exhSel(this);" style="width:16%;"><option value="">請選擇</option></select>&nbsp;
        <select id="exhL4" onchange="exhSel(this);" style="width:16%;"><option value="">請選擇</option></select>&nbsp;
        <select id="exhL5" onchange="exhSel(this);" style="width:16%;"><option value="">請選擇</option></select>
        </p>
      </td>
  </tr>
  <tr>
    <th><span>*</span>商品價格</th>
    <td id="td_c_price"><span>*</span>售價$
      <input type="text" name="c_prod_price" id="c_prod_price" value="" style="width:15%;"/>
      &nbsp;&nbsp;
      售價確認$
      <input type="text" name="c_prod_price_chk" id="c_prod_price_chk" value="" style="width:15%;" onblur="price_rechk_confirm()"/>
      &nbsp;&nbsp;
      建議售價$
      <input type="text" name="c_prod_price_sg" id="c_prod_price_sg" value="" style="width:15%;" />
    </td>
  </tr>
  <tr>
    <th><span>*</span>商品狀態<br /></th>
    <td><input type="radio" name="c_prod_isnew_r" id="c_prod_isnew_N" value="N" />
      新品&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" name="c_prod_isnew_r" id="c_prod_isnew_O" value="O" />
      二手
    </td>
  </tr>
   <tr>
    <th rowspan="3"><span>*</span>付款與出貨方式<br></th><div id="set"></div>
    <td><input name="pays" type="checkbox" value="x" checked="checked"/>
      <a href="javascript:return false;" onclick="javascript:op_jswin('/prod/pay_ship_set.htm','賣場預設與出貨方式','payship','700','400')">使用全賣場預設的付款與出貨方式</a>&emsp;<a href="https://cadm.pcstore.com.tw/index_post.htm?msg=msg73" target="_blank"><span style="color:#F00;text-decoration:underline">單筆超商結帳滿$199，免收物流費! </span></a></td>
  </tr>

  <tr class="a inline-b">
    <td><div>
        <div>單品付款方式：</div>
        <label for="c_prod_payway_1"><input name="c_prod_payway_c[]" id="c_prod_payway_1" type="checkbox" value="1" checked="checked"/>ATM</label>
        <label for="c_prod_payway_2"><input name="c_prod_payway_c[]" id="c_prod_payway_2" type="checkbox" value="2" checked="checked"/>信用卡 <span id="crdstr" style="color:rgb(132, 132, 132);">&nbsp;(<a href="javascript:return false;" onclick="op_jswin('/pay/crd_set.htm','信用卡代收設定','crd','800','650')">立即開通</a>)</span></label>
        <label for="c_prod_payway_3"><input name="c_prod_payway_c[]" id="c_prod_payway_3" type="checkbox" value="8" checked="checked"/>7-11取貨付款 <span style="color:rgb(132, 132, 132);" id="sfrt3">(每筆訂單運費60元)</span> (<a href="javascript:return false;" onclick="op_jswin('/prod/prod_freight.htm','修改運費','frt')"><span style="color:#0090eb" id="safrt3">修改運費</span></a>)<span id="svstr0" style="color:rgb(132, 132, 132);">&nbsp;(<a href="javascript:return false;" onclick="op_jswin('/cvs/cvs_set.htm','超商服務設定','sv','800')">立即開通</a>)</span></label>
        <label for="c_prod_payway_4"><input name="c_prod_payway_c[]" id="c_prod_payway_4" type="checkbox" value="32" checked="checked"/>全家取貨付款 <span style="color:rgb(132, 132, 132);" id="sfrt5">(每筆訂單運費60元)</span> (<a href="javascript:return false;" onclick="op_jswin('/prod/prod_freight.htm','修改運費','frt')"><span style="color:#0090eb" id="safrt5">修改運費</span></a>)<span id="svstr2" style="color:rgb(132, 132, 132);">&nbsp;(<a href="javascript:return false;" onclick="op_jswin('/cvs/cvs_set.htm','超商服務設定','sv','800')">立即開通</a>)</span></label>
      </div>
      <div>
        <div>單品出貨方式：</div>
        <label for="c_prod_logistics_1"><input name="c_prod_logistics[]" id="c_prod_logistics_1" type="checkbox" value="1" checked="checked"/>宅配 <span style="color:rgb(132, 132, 132);" id="sfrt0">(每筆訂單運費120元)</span> (<a href="javascript:return false;" onclick="op_jswin('/prod/prod_freight.htm','修改運費','frt')"><span style="color:#0090eb" id="safrt0">修改運費</span></a>)</label>
        <label for="c_prod_logistics_2"><input name="c_prod_logistics[]" id="c_prod_logistics_2" type="checkbox" value="2" checked="checked"/>郵局 <span style="color:rgb(132, 132, 132);" id="sfrt1">(每筆訂單運費80元)</span> (<a href="javascript:return false;" onclick="op_jswin('/prod/prod_freight.htm','修改運費','frt')"><span style="color:#0090eb" id="safrt1">修改運費</span></a>)</label>
        <label for="c_prod_logistics_3"><input name="c_prod_logistics[]" id="c_prod_logistics_3" type="checkbox" value="4" />7-11純取貨 <span style="color:rgb(132, 132, 132);" id="sfrt2">(每筆訂單運費60元)</span> (<a href="javascript:return false;" onclick="op_jswin('/prod/prod_freight.htm','修改運費','frt')"><span style="color:#0090eb" id="safrt2">修改運費</span></a>)<span id="svstr1" style="color:rgb(132, 132, 132);">&nbsp;(<a href="javascript:return false;" onclick="op_jswin('/cvs/cvs_set.htm','超商服務設定','sv','800')">立即開通</a>)</span></label>
        <label for="c_prod_logistics_4"><input name="c_prod_logistics[]" id="c_prod_logistics_4" type="checkbox" value="16" />全家純取貨 <span style="color:rgb(132, 132, 132);" id="sfrt4">(每筆訂單運費60元)</span> (<a href="javascript:return false;" onclick="op_jswin('/prod/prod_freight.htm','修改運費','frt')"><span style="color:#0090eb" id="safrt4">修改運費</span></a>)<span id="svstr3" style="color:rgb(132, 132, 132);">&nbsp;(<a href="javascript:return false;" onclick="op_jswin('/cvs/cvs_set.htm','超商服務設定','sv','800')">立即開通</a>)</span></label>
      </div>
      </td>
    </tr>
  <tr class="a">
    <!--<td>單品出貨方式
      <input name="c_prod_logistics[]" id="c_prod_logistics_1" type="checkbox" value="1" checked="checked"/>宅配 <span style="color:rgb(132, 132, 132);" id="sfrt0">(每筆訂單運費120元)</span> (<a href="javascript:return false;" onclick="op_jswin('/prod/prod_freight.htm','修改運費','frt')"><span style="color:#0090eb" id="safrt0">修改運費</span></a>)      <input name="c_prod_logistics[]" id="c_prod_logistics_2" type="checkbox" value="2" checked="checked"/>郵局 <span style="color:rgb(132, 132, 132);" id="sfrt1">(每筆訂單運費80元)</span> (<a href="javascript:return false;" onclick="op_jswin('/prod/prod_freight.htm','修改運費','frt')"><span style="color:#0090eb" id="safrt1">修改運費</span></a>)      <input name="c_prod_logistics[]" id="c_prod_logistics_3" type="checkbox" value="4" />7-11純取貨 <span style="color:rgb(132, 132, 132);" id="sfrt2">(每筆訂單運費60元)</span> (<a href="javascript:return false;" onclick="op_jswin('/prod/prod_freight.htm','修改運費','frt')"><span style="color:#0090eb" id="safrt2">修改運費</span></a>)<span id="svstr1" style="color:rgb(132, 132, 132);">&nbsp;(<a href="javascript:return false;" onclick="op_jswin('/cvs/cvs_set.htm','超商服務設定','sv','800')">立即開通</a>)</span> </td>-->
    </tr>
  <tr>
    <th>商品所在地</th>
    <td><input type="text" name="c_prod_location" id="c_prod_location" value="" style="width:15%;" maxlength="15"/>
    </td>
  </tr>
  <tr>
    <th><span>*</span>商品<br />規格/庫存</th>
    <td>

<div id="specshell">
      <input type="button" value="新增規格" onclick="specAddRow()" />
      <span class="t11">單一庫存數量上限為499</span><br />
<span class="t11" style="color:#000;">範例：A商品有「顏色」、「尺寸」等2種規格，名稱可填寫「顏色>尺寸」規格則可填寫「紅色>M」等，<a href="javascript:return false;" onclick="javascript:jwinop({id:'ex',w:550,h:430,src:'/parts/pop_spec_example.htm',title:'規格範例'});">詳細範例</a>。</span>
</div>


    </td>
  </tr>
  <tr>
    <th><span></span>商品簡介<br /></th>
    <td><textarea name="c_prod_intro_brief" id="c_prod_intro_brief" cols="45" rows="5" style="width:97%"></textarea>
      <br />
      <span class="t11">請寫出商品主要特性，限200個字</span>
    </td>
  </tr>
  <tr>
    <th>商品圖片</th>
    <td><div class="graybackdiv"><strong>商品大圖</strong>（Size 270x270）<span class="t12red">新增商品大圖3M以內，若商品無設定小圖，系統會將圖片同步新增到商品小圖</span><br />
      <input type="file" size="64" id="c_big_img" name="c_big_img" title="NOT_CHECK" onchange="change_img('1')" />
      <br />
      <div style="width:45%; margin-right:15px;float:left; text-align:center; background:#FFF; padding:10px; margin-top:5px;border-radius:7px">目前網站圖片<br /><img src="https://cimg.pcstore.com.tw/cw_img/no-product.gif" width="270" height="270" id="img_big_org" /></div>
      <div style="width:45%; display: inline-block; text-align:center; background:#FFF; padding:10px; margin-top:5px;border-radius:7px">預備上傳圖片<br /><img src="https://cimg.pcstore.com.tw/cw_img/no-product.gif" name="pbig_img" id="pbig_img" width="270" height="270" /></div>
      </div>
      <br />
      <div class="graybackdiv"><strong>商品小圖</strong>（Size 120x120）
      <br />
      <input type="file" size="64" id="c_small_img" name="c_small_img" title="NOT_CHECK" onchange="change_img('2')" />
      <br />
      <div style="width:45%; margin-right:15px;float:left; text-align:center; background:#FFF; padding:10px; margin-top:5px;border-radius:7px">目前網站圖片<br /><img src="https://cimg.pcstore.com.tw/cw_img/no-product.gif" width="120" height="120" id="img_small_org" /></div>
      <div style="width:45%; display: inline-block; text-align:center; background:#FFF; padding:10px; margin-top:5px;border-radius:7px">預備上傳圖片<br /><img src="https://cimg.pcstore.com.tw/cw_img/no-product.gif" name="psmall_img" id="psmall_img" width="120" height="120" /></div>
      </div>
    </th>
  </tr>
  <tr>
    <th>商品介紹</th>
    <td>


  <!-- 商品介紹編輯視窗 -->
      <span class="t11">請詳細描述商品的功能，優點和使用狀態，圖檔張數最多25張</span>
      <textarea name="INTRO_2" id="INTRO_2" class="mceEditor" ></textarea>
<!--
      <div style=" padding:15px; background:#FFC; height:430px; margin:3px" id=div_html_edit>
      <iframe src="/js/htmledit/hedit.htm" name='hedit' id='hedit' style="height:100%;width:100%;" scrolling="no" frameborder="0"></iframe>
      </div>
-->
    </td>
  </tr>
  <tr><th>分享商品</th>
    <td>
      <input type="checkbox" name="fbshare" id="fbshare" value="1"  /><label for="fbshare">分享我的商品至Facebook動態</label><br />
      (當您的商品上架成功，系統也會同步分享商品資訊至您的Facebook動態，讓更多好友看到)
    </td>
  </tr>

</table>
<br />


</body>
</html>

