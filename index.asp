<!--author��Cai Jiaren
time: 2016/08/30-->
<%@LANGUAGE="VBSCRIPT"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<title>������ѧ������Ա����</title>

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
        <a href="#" hidefocus="true" class="active">��ģ����</a>
        <a href="#" hidefocus="true">��Ա���</a>
        <a href="#" hidefocus="true">ѧ�Խ���</a>
    </div>    
    <div class="swiper-container">
        <div class="swiper-wrapper">
        <div class="swiper-slide">
            <div class="content-slide">
            <p><span style="font-size: 14pt; color: #ffffff; ">��ѧ��ģ�ռ�����</span></p>
            <span style="font-size: 10pt;"><span style="color: #ffffff;">��֪���˹����ܣ�����ѧϰ��VR����ռ䡭��Щ��߿�ѧ���������������ԭ������ѧ��������ѧ�������������ʦһ�������δ���ѧ��ģ������֮�ţ���ᷢ����ѧ��ģ��������ôң���ɼ���ÿ������ѧ�Ӳμ�������ѧ����ѧ��ģ�����Ļ񽱱��������߹����ȫ����һ����ѧ����Ҫ��ǰ��ʶ��������������ʦ�ľ����𣿿����ɣ�PS����ѧ���һ��ģ����һ֧û���κλ����ż��Ľ�ģ�������飬���ڻ���Զ�Ա��չ��ѧ�������</span></span><br /><span style="font-size: 10pt; color:#F00;">ʱ�䣺9��5�� 18:30<br />�ص㣺SA169</span>
           </div>
        </div>
        <div class="swiper-slide">
            <div class="content-slide">
            <p><span style="font-size: 14pt; color: #ffffff; ">��ѧ����Ա���</span></p>
            <span style="font-size: 10pt;"><span style="color: #ffffff;">ʮ�����㣬���ڶ�������ӭ��������������ţ���ʷ��õ�����֮һ���������Ϊ��ͨ��Ա����Է������ḻ��ѧϰ��Դ��������ѻ�ø����ˮƽ��ѧϰ���ϡ���Ϊ����㣬�㻹�ܸ�������Ӵ���֯��������Դ��ȫԱ��ᣬ�����������ʶ������š���Щ�ˡ�Ը�����ڶ�����</span></span><br /><span style="font-size: 10pt; color:#F00;">ʱ�䣺9��6�� ��һ������6��-7��� �ڶ�������8��-9���<br />�ص㣺SC176</span>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="content-slide">
            <p><span style="font-size: 14pt; color: #ffffff; ">ѧ�Խ���--��ѧ��������������</span></p>
            <span style="font-size: 10pt;"><span style="color: #DDDDDD;">С������ѧ��ѧ�����ڵȵ��㣡��������û������
week0ת�ۼ��ţ�׼���ý�������ѧ���ܵ�ϴ�����𣿲���Ҫ���£���������ѧ��ѧ��Ĵ��ȣ���ѧ�罱ѧ��ѧ��ѧ�㣬CFA��֤�ߡ����ھ�Ӣ��ҵ��Ա�������������ĸɻ�����������Ὣ����һ��һ���������ֵ�ѧϰ������Դ�������ܴ����ǵ�ѧϰ������</span></span><br /><span style="font-size: 10pt; color:#F00;">ʱ�䣺8��31�գ�������)18:30<br />�ص㣺SB123</span>
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
   ������ϵͳ�ѿ��ţ�����9��2��0��ǰ�ύ����Ϣ��ͬѧ�����ύ��֮ǰ�������Ѱ���ѧУ���ŵ�Э��涨����գ��ύ��������0ʱ�Ժ��ύΪ׼��</span>
    </center>
</div>
<div style="margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
	<center>
	��ѧ������Ա���߱���(New member register of math club)<br>
	</center>
    <div style="width:80%; margin-left:10%; background-color:#DDDDDD">
    	<h3>���߱������̣�</h3>
        <p><span style="color:#F00">ע�⣺�벻Ҫֱ����΢���д�������д��Ϣ���ύ����Ϣ�ᱻ΢�����ض��ύ���ɹ��������ֻ�(�����)������򿪱���վ��д��Ϣ���ύ��Safari��QQ��������ٶ��������UC���������׿ie������ȶ����ԣ���<br />Do not submit the following table in WeChat, you will get failed submissions because WeChat intercept your information. Please open this webiste in browsers like safari, baidu browser, UC browser and QQ browser.</span></p>
        <p>1. ��д����ĸ�����Ϣ���ύ��ע�������Ϣ�Ƿ���ȷ���ύ����������ǰ��д�ύ�����ŵ����ֳ�����̫�࣬Ϊ���Ч�ʣ������Ϣ�ύ���ٵ�չ̨ȷ�ϱ������������<br />Submit your personal information in the following table.</p>
        <p>2. ������Ϣ�ύ�ɹ���ҳ����ת���˶��ύ����Ϣ��<span style="color:#F00">��ͼ�������к�</span>��������Ϣ���ɷ�������д�ύ��ȡ�µ����кţ����ύ���ܳ������Σ�<br />Submitted successfully. Page turing. Check your information and <span style="color:#F00">save the page as screenshot</span>(the <span style="color:#F00">Number</span> is important to be showed in the scene).</p>
        <p>3. ����֧����ѣ�֧����ɨ��ά��ת��50Ԫ����<span style="color:#F00">�����Լ������к�</span>������֧�������ŵ���������Ա֧���ֽ�50Ԫ��<span style="color:#F00">�����к�</span>��<br />Pay the fee online: Scan QR code to transfer 50 RMB and add your <span style="color:#F00">Number in remark</span> by using Alipay.(Or offline: pay cash 50RMB and <span style="color:#F00">offer your Number</span> in the mathclub boost in Sept. 2.</p>
        <p>4. ���ŵ��쵽չ̨��ʾ���кŽ�ͼ��֧����֧����¼�����ֽ𣩣�ע��ɹ����ֳ���ȡ����Ա���<br />Show your screenshot of Number and your Alipay payment history (or cash) in the mathclub boost in Sept. 2, get the gift bag for new member.</p>
    </div>
  <div style="width:80%; margin-left:8%; font-style:italic;">
    	<h4>1. ��д������Ϣ(Submit your personal information)</h4>
        <p><span style="color:#F00;font-style:normal;">ע�⣺���䲻��Ҫ���׺��@student.xjtlu.edu.cn)��ϵͳ���Զ���ã�<br />Do not need to enter the postfix of your eamil, just fill like "san.zhang16".</span></p>
    </div>
	<center>
	<form method="post" action="addnewdata.asp">
	<table width="90%" height="150" border="0" >
	<tr>
	<td width="100%" height="40" colspan = "2"><input type="radio" name="isforeign" id="isforeign" value="--" checked/>�ǹ�����(����������)<input type="radio" name="isforeign" id="isforeign" value="������"/>International Student
	</td>
	</tr>
	<tr>
	<td width="22%" height="40" align="right">����(name)��</td>
	<td width="78%" height="40"><input name="username" type="text" id="username"></td>
	</tr>
	<tr>
	<td height="40" align="right">ѧ��(ID No)��</td>
	<td height="40"><input name="id" type="text" id="id">��eg:1607801��</td>
	</tr>
	<tr>
	<td height="40" align="right">����(cluster)��</td>
	<td height="40"><select name="cluster" type="text" id="cluster">
            <option value="default">&ndash; ѡ�����(Select Cluster) &ndash;</option>
            <option value="�����ѧ��">�����ѧ�� Sciences</option>
            <option value="������Ϣ��">������Ϣ Industrial Technology</option>
            <option value="���̹�����">���̹����� Business</option>
            <option value="������">������ Built Environment</option>
            <option value="��ѧ��">��ѧ�� Mathematical Sciences</option>
            <option value="���������ѧ��">������ Humanities Sciences</option>
          </select></td>
	</tr>
	<tr>
	<td height="60" align="right">ѧУ���� <br>(xjtlu email)��</td>
	<td height="60"><input name="mail" type="text" id="mail" width-max="80%">@student.xjtlu.edu.cn<br> (����Ҫ��д��׺)</td>
	</tr>
	<tr>
	<td> </td>
	<td><input type="submit" name="Submit" value="�ύ"></td>
	</tr>
	</table>
	</form>
	</center>
    <div style="width:90%; margin-left:5%;">
        <p><span style="color:#F00">ע�⣺�벻Ҫֱ����΢���д�������д��Ϣ���ύ����Ϣ�ᱻ΢�����ض��ύ���ɹ��������ֻ�(�����)������򿪱���վ��д��Ϣ���ύ��Safari��QQ��������ٶ��������UC���������׿ie������ȶ����ԣ��������������ϵ�ֳ���ѧ�繤����Ա��<br />Do not submit the following table in WeChat, you will get failed submissions because WeChat intercept your information. Please open this webiste in browsers like safari, baidu browser, UC browser and QQ browser.</span></p>
    </div>
	<span style="width:100%; "><img src="css/mathclub2.png" style="width:100%;" /></span>
</div>
<div style="width:100%; "><!--<img src="css/mathclub.png" style="max-width:25%;" /><img src="css/mathclub.png" style="max-width:25%;" /><img src="css/mathclub.png" style="max-width:25%;" /><img src="css/mathclub.png" style="max-width:25%;" />-->
</div> 

</body>
</html>