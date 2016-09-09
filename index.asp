<!--author：Cai Jiaren
time: 2016/08/30-->
<%@LANGUAGE="VBSCRIPT"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<title>西浦数学社新社员报名</title>

<style type="text/css">
body{margin:0;font-family:"microsoft yahei";font-size:13px;line-height:1.5;background:#eee;}

.wrap{margin:100px auto 0 auto;}
.tabs{height:40px;}
.tabs a{display:block;float:left;width:33.33%;color:#333;text-align:center;background:#eee;line-height:40px;font-size:16px;text-decoration:none;}
.tabs a.active{color:#fff;background:#333;border-radius:5px 5px 0px 0px;}
.swiper-container{background:#333;height:380px;border-radius:0 0 5px 5px;width:100%;border-top:0;}
.swiper-slide{height:380px;width:100%;background:none;color:#fff;}
.content-slide{padding:40px;}
.content-slide p{text-indent:2em;line-height:1.9;}
</style>

<link rel="stylesheet" href="css/idangerous.swiper.css">

</head>
<body>

<div class="wrap">
    <div class="tabs">
        <a href="#" hidefocus="true" class="active">建模讲座</a>
        <a href="#" hidefocus="true">社员大会</a>
        <a href="#" hidefocus="true">学霸讲座</a>
    </div>    
    <div class="swiper-container">
        <div class="swiper-wrapper">
        <div class="swiper-slide">
            <div class="content-slide">
            <p><span style="font-size: 14pt; color: #ffffff; ">数学建模普及讲座</span></p>
            <span style="font-size: 10pt;"><span style="color: #ffffff;">你知道人工智能，机器学习，VR虚拟空间…这些最高科学技术背后最基本的原理都是数学基础吗？数学社和数理中心老师一起带你初次打开数学建模的神秘之门，你会发现数学建模并不是那么遥不可及。每年西浦学子参加美国大学生数学建模大赛的获奖比例甚至高过许多全国超一流大学。想要提前见识西浦数理中心老师的精彩吗？快来吧！PS：数学社大一建模队是一支没有任何基础门槛的建模交流队伍，定期会针对队员开展数学交流活动！</span></span><br /><span style="font-size: 10pt; color:#F00;">时间：9月5日 18:30<br />地点：SA169</span>
           </div>
        </div>
        <div class="swiper-slide">
            <div class="content-slide">
            <p><span style="font-size: 14pt; color: #ffffff; ">数学社社员大会</span></p>
            <span style="font-size: 10pt;"><span style="color: #ffffff;">十年与你，如期而至！欢迎加入西浦最大社团，历史最长久的社团之一，在这里，作为普通社员你可以分享到更丰富的学习资源，可以免费获得更多高水平的学习资料。作为管理层，你还能感受这个庞大组织的人力资源。全员大会，让你更深入认识这个社团、这些人。愿你如期而至！</span></span><br /><span style="font-size: 10pt; color:#F00;">时间：9月6日 第一场：晚6点-7点半 第二场：晚8点-9点半<br />地点：SC176</span>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="content-slide">
            <p><span style="font-size: 14pt; color: #ffffff; ">学霸讲座--数学社新生经验分享会</span></p>
            <span style="font-size: 10pt;"><span style="color: #DDDDDD;">小鲜肉们学长学姐终于等到你！还好我们没放弃！
week0转眼即逝，准备好接受西浦学术周的洗礼了吗？不！要！怕！快来抱紧学长学姐的大腿！数学社奖学金学长学姐，CFA持证者、金融精英从业人员带给你们满满的干货福利！分享会将带你一点一点剖析西浦的学习环境资源，并介绍大神们的学习方法！</span></span><br /><span style="font-size: 10pt; color:#F00;">时间：8月31日（星期三)18:30<br />地点：SB123</span>
            </div>
        </div>
      </div>
   </div>
</div>

<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script> 
<script type="text/javascript" src="js/idangerous.swiper.min.js"></script> 
<script type="text/javascript">
var tabsSwiper = new Swiper('.swiper-container',{
	speed:500,
	onSlideChangeStart: function(){
		$(".tabs .active").removeClass('active');
		$(".tabs a").eq(tabsSwiper.activeIndex).addClass('active');
	}
});

$(".tabs a").on('touchstart mousedown',function(e){
	e.preventDefault()
	$(".tabs .active").removeClass('active');
	$(this).addClass('active');
	tabsSwiper.swipeTo($(this).index());
});

$(".tabs a").click(function(e){
	e.preventDefault();
});
</script>
<div style="width:100%; background-color:#00CC00;font-size:16px; ">
	<center><span style="color:#FFFFFF">
   本报名系统已开放，请在9月2号0点前提交过信息的同学重新提交，之前的数据已按照学校百团的协议规定被清空！提交的数据以0时以后提交为准！</span>
    </center>
</div>
<div style="margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
	<center>
	数学社新社员在线报名(New member register of math club)<br>
	</center>
    <div style="width:80%; margin-left:10%; background-color:#DDDDDD">
    	<h3>在线报名流程：</h3>
        <p><span style="color:#F00">注意：请不要直接在微信中打开链接填写信息，提交的信息会被微信拦截而提交不成功。请用手机(或电脑)浏览器打开本网站填写信息并提交（Safari，QQ浏览器，百度浏览器，UC浏览器，安卓ie浏览器等都可以）。<br />Do not submit the following table in WeChat, you will get failed submissions because WeChat intercept your information. Please open this webiste in browsers like safari, baidu browser, UC browser and QQ browser.</span></p>
        <p>1. 填写下面的个人信息并提交（注意个人信息是否正确再提交；建议大家提前填写提交，百团当天现场人数太多，为提高效率，请把信息提交好再到展台确认报名和领礼包）<br />Submit your personal information in the following table.</p>
        <p>2. 报名信息提交成功，页面跳转，核对提交的信息，<span style="color:#F00">截图保存序列号</span>（发现信息填错可返回再填写提交获取新的序列号，但提交不能超过两次）<br />Submitted successfully. Page turing. Check your information and <span style="color:#F00">save the page as screenshot</span>(the <span style="color:#F00">Number</span> is important to be showed in the scene).</p>
        <p>3. 线上支付社费：支付宝扫二维码转账50元并在<span style="color:#F00">留言自己的序列号</span>（线下支付：百团当天向工作人员支付现金50元并<span style="color:#F00">报序列号</span>）<br />Pay the fee online: Scan QR code to transfer 50 RMB and add your <span style="color:#F00">Number in remark</span> by using Alipay.(Or offline: pay cash 50RMB and <span style="color:#F00">offer your Number</span> in the mathclub boost in Sept. 2.</p>
        <p>4. 百团当天到展台出示序列号截图和支付宝支付记录（或现金），注册成功，现场领取新社员礼包<br />Show your screenshot of Number and your Alipay payment history (or cash) in the mathclub boost in Sept. 2, get the gift bag for new member.</p>
    </div>
  <div style="width:80%; margin-left:8%; font-style:italic;">
    	<h4>1. 填写个人信息(Submit your personal information)</h4>
        <p><span style="color:#F00;font-style:normal;">注意：邮箱不需要填后缀（@student.xjtlu.edu.cn)，系统会自动填好！<br />Do not need to enter the postfix of your eamil, just fill like "san.zhang16".</span></p>
    </div>
	<center>
	<form method="post" action="addnewdata.asp">
	<table width="90%" height="150" border="0" >
	<tr>
	<td width="100%" height="40" colspan = "2"><input type="radio" name="isforeign" id="isforeign" value="--" checked/>非国际生(姓名填中文)<input type="radio" name="isforeign" id="isforeign" value="国际生"/>International Student
	</td>
	</tr>
	<tr>
	<td width="22%" height="40" align="right">姓名(name)：</td>
	<td width="78%" height="40"><input name="username" type="text" id="username"></td>
	</tr>
	<tr>
	<td height="40" align="right">学号(ID No)：</td>
	<td height="40"><input name="id" type="text" id="id">（eg:1607801）</td>
	</tr>
	<tr>
	<td height="40" align="right">大类(cluster)：</td>
	<td height="40"><select name="cluster" type="text" id="cluster">
            <option value="default">&ndash; 选择大类(Select Cluster) &ndash;</option>
            <option value="生物科学类">生物科学类 Sciences</option>
            <option value="电子信息类">电子信息 Industrial Technology</option>
            <option value="工商管理类">工商管理类 Business</option>
            <option value="建筑类">建筑类 Built Environment</option>
            <option value="数学类">数学类 Mathematical Sciences</option>
            <option value="外国语言文学类">外文类 Humanities Sciences</option>
          </select></td>
	</tr>
	<tr>
	<td height="60" align="right">学校邮箱 <br>(xjtlu email)：</td>
	<td height="60"><input name="mail" type="text" id="mail" width-max="80%">@student.xjtlu.edu.cn<br> (不需要填写后缀)</td>
	</tr>
	<tr>
	<td> </td>
	<td><input type="submit" name="Submit" value="提交"></td>
	</tr>
	</table>
	</form>
	</center>
    <div style="width:90%; margin-left:5%;">
        <p><span style="color:#F00">注意：请不要直接在微信中打开链接填写信息，提交的信息会被微信拦截而提交不成功。请用手机(或电脑)浏览器打开本网站填写信息并提交（Safari，QQ浏览器，百度浏览器，UC浏览器，安卓ie浏览器等都可以）。如需帮助请联系现场数学社工作人员。<br />Do not submit the following table in WeChat, you will get failed submissions because WeChat intercept your information. Please open this webiste in browsers like safari, baidu browser, UC browser and QQ browser.</span></p>
    </div>
	<span style="width:100%; "><img src="css/mathclub2.png" style="width:100%;" /></span>
</div>
<div style="width:100%; "><!--<img src="css/mathclub.png" style="max-width:25%;" /><img src="css/mathclub.png" style="max-width:25%;" /><img src="css/mathclub.png" style="max-width:25%;" /><img src="css/mathclub.png" style="max-width:25%;" />-->
</div> 

</body>
</html>