<!--author��Cai Jiaren
time: 2016/08/30-->
<%@LANGUAGE="VBSCRIPT"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����ɹ�</title>
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
response.write"<html><body><center><meta http-equiv='refresh' content='3;URL=index.asp'><font size=5>���䲻��Ϊ�գ���ʽ�磺san.zhang16)��3����Զ�����ע��ҳ�档<br>(The xjtlu email is empty, please resubmit)</font></center></body></html>"
'Response.Redirect"error.htm"
response.End
end if
if id=""then
response.write"<html><body><center><meta http-equiv='refresh' content='3;URL=index.asp'><font size=5>ѧ�Ų���Ϊ�գ���ʽ��1608011)��3����Զ�����ע��ҳ�档<br>(The ID No is empty, please resubmit)</font></center></body></html>"
'Response.Redirect"error.htm"
response.End
end if
if username="" or cluster="default"then
response.write"<html><body><center><meta http-equiv='refresh' content='3;URL=index.asp'><font size=5>��������Ϊ�գ������ѡ����࣬3����Զ�����ע��ҳ�档<br>(The name is empty or the cluster isn't selected, please resubmit)</font></center></body></html>"
'Response.Redirect"error.htm"
response.End
end if
if len(id)<>7 or not(isNumeric(id))then
response.write"<html><body><center><meta http-equiv='refresh' content='3;URL=index.asp'><font size=5>ѧ���������ѧ��Ϊ7λ���֣���ʽ��1608011)��3����Զ�����ע��ҳ�档<br>(The ID No has not 7 digits, please resubmit)</font></center></body></html>"
'Response.Redirect"error.htm"
response.End
end if
'�������ݿ⿪ʼ'
set conn=server.createobject("adodb.connection")
connstr="Provider=Microsoft.jet.oledb.4.0;data source="&server.mappath("database\userinfo.mdb")
conn.open connstr
'������¼����'
set rs=server.createobject("adodb.recordset")

'��֤�Ƿ��ظ����롯
sql="select num from (select count(id) as num from info where username='"&username&"' and id='"&id&"' and cluster='"&cluster&"' and mail='"&mail&"') where num<2"  
sqll="select num from (select count(id) as num from info where id='"&id&"') where num<3"
set rst=conn.execute(sql) 
set rstt=conn.execute(sqll)
if rstt.eof or rstt.bof then '����ID�ύ��������3�Σ��������ύ
response.write "<script language=javascript>"
response.write "alert('��ѧ�ţ�"&id&"���ύ�������Σ��޷����ύ��\n���������ύ�����ڰ��ŵ�����ϵ������Ա\n(Submit same id exceeds 3 times!)');"
response.write "javascript:history.go(-1);"
response.write "</script>" '��javascript�ű���ʾ�û�
elseif not(rst.eof or rst.bof) then '��û�з���ɸѡ�������ͬ��¼����<2��ʱ���������Ϣ
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
else '�������������ʱ��
response.write "<script language=javascript>"
response.write "alert('���ύ����ͬ��Ϣ�������ظ��ύ��\n(Submitted same information!');"
response.write "javascript:history.go(-1);"
response.write "</script>" '��javascript�ű���ʾ�û�
end if 
%>
<div class="wrap">
<div style="margin:50px 0; font:normal 24px/30px 'MicroSoft YaHei';">
    	<div style="width:89%; margin-left:8%; margin-right:3%; font-style:italic;">
    		<h1>2. �˶Ը�����Ϣ��<span style="color:#F00">��ͼ�������к�</span> (Check your information and <span style="color:#F00">save the page as screenshot)</span></h1>
        	<p>������Ϣ���ɷ�������д�ύ��ȡ�µ����кţ����ύ���ܳ������Ρ������뱣����Լ������кţ�����������кţ�ֻ������ٻ�ȡһ�Ρ�<br>
        Submitted successfully. Page turing. Check your information and <span style="color:#F00">save the following table as screenshot</span>(the <span style="color:#F00">Number</span> is important to be showed in the scene).</p>
    	</div>
		<center>
        �Ѿ��ɹ��ύ����˶����ĸ�����Ϣ(Check your info)
        <table width="80%" height="300" border="1">
        <tr>
        <td width="30%" height="60" align="right"><font size="16px">����(name)��</font></td>
        <td width="70%" height="60"><font size="16px"><% =username %></font>
        </td>
        </tr>
        <tr>
        <td height="60" align="right"><font size="16px">ѧ��(ID No)��</font></td>
        <td height="60"><font size="16px"><% =id %></font></td>
        </tr>
        <tr>
        <td height="60" align="right"><font size="16px">����(cluster)��</font></td>
        <td height="60"><font size="16px"><% =cluster %></font></td>
        </tr>
        <tr>
        <td height="60" align="right"><font size="16px">ѧУ����(email)��</font></td>
        <td height="60"><font size="16px"><% =mail %>@student.xjtlu.edu.cn</font></td>
        </tr>
        <td height="60" align="right"><font size="16px">���к�(Number)��</font></td>
        <td height="60"><font size="16px"><% =insert_number %></font></td>
        </tr>
        </table>
		</center>
    	<div style="width:89%; margin-left:8%; margin-right:3%; font-style:italic;">
        	<p>�뽫�˱���ͼ���棬���ֳ��󽫴˽�ͼ�е����кź�֧����֧����¼�����ֽ�֧����չʾ��������Ա��������Ա��¼���������кż���ע����Ա�ɹ���ͬʱ�ֳ���������Ա�������<br>Show your screenshot of Number and your Alipay payment history (or cash) in the mathclub boost, get the gift bag for new member.</p>
    	</div>
 	    <div style="width:89%; margin-left:8%; margin-right:3%; font-style:italic;">
        	<h1>3. ֧�����(Pay the fee)</h1>
            <p>����֧��(Pay the fee online):</p>
    <p>a. �������·���ά��ͼƬ����֧������ѡ��"ɨһɨ"������ͼ��<br>(Save left QR code picture, open your Alipay, choose "Scan")</p>
    <img src="css/QRcode.png" style="width:47%; " /><img src="css/pay1.png" style="width:47%; margin-left:6%" />
            <p>b. ���ҳ�����Ϸ�ѡ��������㣩��ѡ�񡰴����ѡȡ��ά�롱������ͼ��<br>(Click the "������" tab, select "Choose QR Code from Album")</p>
    <img src="css/pay2.png" style="width:47%; " /><img src="css/pay3.png" style="width:47%; margin-left:6%" />
            <p>c. ������ѧ���˺ţ�ȷ������ȷ�˺ź�ѡ��ת�ˡ�����ת�˽�Ϊ50�� <span style="color:#F00">���Լ����к��������ӱ�ע�������� No.123 ��������ͼ)</span>��Ȼ��ȷ��ת�ˡ�<br>
            (Make sure it is the math club's account, then choose "Transfer", and "Amount" is 50, <span style="color:#F00">enter your Number into the "Add remark" box</span> and "Confirm")</p>
    <img src="css/pay4.png" style="width:47%; " /><img src="css/pay5.png" style="width:47%; margin-left:6%" />
    <h1>3. ���ŵ���չ̨ȷ�ϱ���(Pay the fee)</h1>
    <p> ���Ŵ�ս���쵽չ̨��ʾ���кŽ�ͼ�������кţ���֧����֧����¼����ͼ����ʾ��¼�����ǽ�ͼ�����ֽ�ע��ɹ����ֳ���ȡ����Ա���<br />
      ��In Sept. 2, show your screenshot of Number ��or offer your Number) and your Alipay payment history��as following) or cash in the mathclub boost, get the gift bag for new member.</p>
      <img src="css/pay6.png" style="width:50%; " />
	</div>
</div>
<div style="width:100%; ">
	<img src="css/mathclub2.png" style="width:100%;" />
</div> 
</body>
</html>