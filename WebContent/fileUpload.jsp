<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page session="true"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.io.FilenameUtils"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.File"%>
<%@ page import="java.lang.Exception"%>

<%
if(ServletFileUpload.isMultipartContent(request))
{
	int id=(Integer)session.getAttribute("id");

	String path="";
	
ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());
List fileItemsList = servletFileUpload.parseRequest(request);
String optionalFileName="";
FileItem fileItem= null;
Iterator it = fileItemsList.iterator();
while(it.hasNext())
{
FileItem fileItemTemp=(FileItem)it.next();
if(fileItemTemp.isFormField())
{
if(fileItemTemp.getFieldName().equals("fileName"))
optionalFileName=fileItemTemp.getString();
}
else
fileItem = fileItemTemp;
}
if(fileItem !=null)
{
String fileName = fileItem.getName();
if(fileItem.getSize()>0)
{
if(optionalFileName.trim().equals(""))
fileName=FilenameUtils.getName(fileName);
else
fileName=optionalFileName;

File saveTo=new File(path+ id+".jpg");

fileItem.write(saveTo);

}
}
}
%>
