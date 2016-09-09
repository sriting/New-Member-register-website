<!--author：Cai Jiaren
time: 2016/08/30-->
<%@LANGUAGE="VBSCRIPT"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>报名成功</title>
<style type="text/css">
body{margin:0;font-family:"microsoft yahei";font-size:24px;line-height:2.4;background:#eee;}

.wrap{margin:100px auto 0 auto;}
</style>
<link rel="stylesheet" href="css/idangerous.swiper.css">

</head>
<body>
<%
username=request("username")
id=request("id")
cluster=request("cluster")
mail=request("mail")
isforeign=request("isforeign")
if mail=""then
response.write"<html><body><center><meta http-equiv='refresh' content='3;URL=index.asp'><font size=5>邮箱不能为空（格式如：san.zhang16)，3秒后自动返回注册页面。<br>(The xjtlu email is empty, please resubmit)</font></center></body></html>"
'Response.Redirect"error.htm"
response.End
end if
if id=""then
response.write"<html><body><center><meta http-equiv='refresh' content='3;URL=index.asp'><font size=5>学号不能为空（格式：1608011)，3秒后自动返回注册页面。<br>(The ID No is empty, please resubmit)</font></center></body></html>"
'Response.Redirect"error.htm"
response.End
end if
if username="" or cluster="default"then
response.write"<html><body><center><meta http-equiv='refresh' content='3;URL=index.asp'><font size=5>姓名不能为空；或必须选择大类，3秒后自动返回注册页面。<br>(The name is empty or the cluster isn't selected, please resubmit)</font></center></body></html>"
'Response.Redirect"error.htm"
response.End
end if
if len(id)<>7 or not(isNumeric(id))then
response.write"<html><body><center><meta http-equiv='refresh' content='3;URL=index.asp'><font size=5>学号输入错误，学号为7位数字（格式：1608011)，3秒后自动返回注册页面。<br>(The ID No has not 7 digits, please resubmit)</font></center></body></html>"
'Response.Redirect"error.htm"
response.End
end if
'连接数据库开始'
set conn=server.createobject("adodb.connection")
connstr="Provider=Microsoft.jet.oledb.4.0;data source="&server.mappath("database\userinfo.mdb")
conn.open connstr
'创建记录对象'
set rs=server.createobject("adodb.recordset")

'验证是否重复输入’
sql="select num from (select count(id) as num from info where username='"&username&"' and id='"&id&"' and cluster='"&cluster&"' and mail='"&mail&"') where num<2"  
sqll="select num from (select count(id) as num from info where id='"&id&"') where num<3"
set rst=conn.execute(sql) 
set rstt=conn.execute(sqll)
if rstt.eof or rstt.bof then '当该ID提交次数超过3次，不予再提交
response.write "<script language=javascript>"
response.write "alert('该学号："&id&"已提交超过三次，无法再提交！\n如需重新提交，请在百团当天联系工作人员\n(Submit same id exceeds 3 times!)');"
response.write "javascript:history.go(-1);"
response.write "</script>" '用javascript脚本提示用户
elseif not(rst.eof or rst.bof) then '当没有符合筛选结果（相同记录次数<2）时，则插入信息
rs.open "select * from info",conn,adOpenDynamic,3
rs.addnew
rs("username")=username
rs("id")=id
rs("cluster")=cluster
rs("mail")=mail
rs("isforeign")=isforeign
rs("ntime")=now
rs.update
insert_number = rs("number")
set rs=nothing
else '如果符合条件的时候
response.write "<script language=javascript>"
response.write "alert('已提交过相同信息，请勿重复提交！\n(Submitted same information!');"
response.write "javascript:history.go(-1);"
response.write "</script>" '用javascript脚本提示用户
end if 
%>
<div class="wrap">
<div style="margin:50px 0; font:normal 24px/30px 'MicroSoft YaHei';">
    	<div style="width:89%; margin-left:8%; margin-right:3%; font-style:italic;">
    		<h1>2. 核对个人信息，<span style="color:#F00">截图保存序列号</span> (Check your information and <span style="color:#F00">save the page as screenshot)</span></h1>
        	<p>发现信息填错可返回再填写提交获取新的序列号，但提交不能超过两次。所以请保存好自己的序列号，如果忘记序列号，只可最多再获取一次。<br>
        Submitted successfully. Page turing. Check your information and <span style="color:#F00">save the following table as screenshot</span>(the <span style="color:#F00">Number</span> is important to be showed in the scene).</p>
    	</div>
		<center>
        已经成功提交，请核对您的个人信息(Check your info)
        <table width="80%" height="300" border="1">
        <tr>
        <td width="30%" height="60" align="right"><font size="16px">姓名(name)：</font></td>
        <td width="70%" height="60"><font size="16px"><% =username %></font>
        </td>
        </tr>
        <tr>
        <td height="60" align="right"><font size="16px">学号(ID No)：</font></td>
        <td height="60"><font size="16px"><% =id %></font></td>
        </tr>
        <tr>
        <td height="60" align="right"><font size="16px">大类(cluster)：</font></td>
        <td height="60"><font size="16px"><% =cluster %></font></td>
        </tr>
        <tr>
        <td height="60" align="right"><font size="16px">学校邮箱(email)：</font></td>
        <td height="60"><font size="16px"><% =mail %>@student.xjtlu.edu.cn</font></td>
        </tr>
        <td height="60" align="right"><font size="16px">序列号(Number)：</font></td>
        <td height="60"><font size="16px"><% =insert_number %></font></td>
        </tr>
        </table>
		</center>
    	<div style="width:89%; margin-left:8%; margin-right:3%; font-style:italic;">
        	<p>请将此表格截图保存，到现场后将此截图中的序列号和支付宝支付记录（或现金支付）展示给工作人员，工作人员记录下您的序列号即算注册社员成功，同时现场可领新社员大礼包。<br>Show your screenshot of Number and your Alipay payment history (or cash) in the mathclub boost, get the gift bag for new member.</p>
    	</div>
 	    <div style="width:89%; margin-left:8%; margin-right:3%; font-style:italic;">
        	<h1>3. 支付社费(Pay the fee)</h1>
            <p>线上支付(Pay the fee online):</p>
    <p>a. 保存左下方二维码图片，打开支付宝，选择"扫一扫"（如右图）<br>(Save left QR code picture, open your Alipay, choose "Scan")</p>
    <img src="css/QRcode.png" style="width:47%; " /><img src="css/pay1.png" style="width:47%; margin-left:6%" />
            <p>b. 点击页面右上方选项键（三点），选择“从相册选取二维码”（如右图）<br>(Click the "···" tab, select "Choose QR Code from Album")</p>
    <img src="css/pay2.png" style="width:47%; " /><img src="css/pay3.png" style="width:47%; margin-left:6%" />
            <p>c. 出现数学社账号，确认是正确账号后，选择“转账”，“转账金额”为50， <span style="color:#F00">把自己序列号填进“添加备注”栏（如 No.123 ，如右下图)</span>，然后“确认转账”<br>
            (Make sure it is the math club's account, then choose "Transfer", and "Amount" is 50, <span style="color:#F00">enter your Number into the "Add remark" box</span> and "Confirm")</p>
    <img src="css/pay4.png" style="width:47%; " /><img src="css/pay5.png" style="width:47%; margin-left:6%" />
    <h1>3. 百团当天展台确认报名(Pay the fee)</h1>
    <p> 百团大战当天到展台出示序列号截图（或报序列号）和支付宝支付记录如下图（出示记录，不是截图）或现金，注册成功，现场领取新社员礼包<br />
      （In Sept. 2, show your screenshot of Number （or offer your Number) and your Alipay payment history（as following) or cash in the mathclub boost, get the gift bag for new member.</p>
      <img src="css/pay6.png" style="width:50%; " />
	</div>
</div>
<div style="width:100%; ">
	<img src="css/mathclub2.png" style="width:100%;" />
</div> 
</body>
</html>