<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ page import="com.godoing.rose.http.common.*"%>
<%@ taglib uri="/WEB-INF/struts-logic" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean" prefix="bean"%>
<%@ page autoFlush="true"%>
<%
	/*ҳ������*/
	PagePys pys = (PagePys) request.getAttribute("PagePys");
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>�ޱ����ĵ�</title>
		<link href="<%=request.getContextPath()%>/css/tbls.css"
			rel="stylesheet" type="text/css">
		<script language="JavaScript"
			src="<%=request.getContextPath()%>/public/public.js"></script>
		<script language="JavaScript"
			src="<%=request.getContextPath()%>/js/jquery.js"></script>
	</head>
<script language="javascript">
function finds(){
	frmGo.submit();
}

</script>
	<body>

		<form name="frmGo" method="post"
			action="doDeviceActiveInfo.do?method=queryCallInfo">
			<table width="100%" class="table" >
               <tr>
                   <th colspan="13" nowrap="nowrap" align="left">��ɫ 
                  <!--  <input name="inset" type="button" class="but_1" accesskey="a"
							tabindex="a" value="���ӽ�ɫ" onclick="insert()"> --></th>
                </tr>         
                  <tr class="title_2">
								
					<td width="10%">
						�û�id
					</td>
					<td width="10%">
							�豸IMEI
					</td>
					<td width="10%" >
					�û��ǳ�
					</td>
					<td width="10%">
						ͨ������
					</td>
					<td width="10%">
						�绰����
					</td>
					<td width="10%">
						����ʱ��
					</td>
					<td width="10%">
						ͨ��ʱ��
					</td>
				</tr>
				<logic:iterate id="element" name="pageList">
					<tr class="tr_5" onmouseover='this.className="tr_4"' onmouseout='this.className="tr_5"' >
						<td>
							<bean:write name="element" property="id" />
						</td>
						<td>
							<bean:write name="element" property="imei" />
						</td>
						<td>
							<bean:write name="element" property="nick_name" />
						</td>
						<td>
							<logic:equal name="element" property="type" value="1">�Ѳ�ͨ</logic:equal>
							<logic:equal name="element" property="type" value="2">δ��</logic:equal>
						</td>
						<td>
							<bean:write name="element" property="phone" />
						</td>
						<td>
							<bean:write name="element" property="use_time" />
						</td>
						<td>
							<logic:empty name="element" property="call_time">��</logic:empty>
							<logic:notEmpty name="element" property="call_time">			
							<bean:write name="element" property="call_time" />
							</logic:notEmpty>
						</td>
					</tr>
				</logic:iterate>
			 	<tr class="title_3">
					<td colspan="8" align="left" >
						<%
							pys.printGoPage(response, "frmGo");
						%>
					</td>
				</tr>  
			</table>
		</form>
	</body>
</html>