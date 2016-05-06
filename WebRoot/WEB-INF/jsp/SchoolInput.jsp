<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <!-- Bootstrap Core CSS -->
    <link href="<%=basePath%>bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=basePath%>bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="<%=basePath%>bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="<%=basePath%>bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=basePath%>dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=basePath%>bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<title>武术竞赛管理系统</title>

<script type="text/javascript">
	function del(id){
		$.get("<%=basePath%>user/delUser?id=" + id, function(data) {
			if ("success" == data.result) {
				alert("删除成功");
				window.location.reload();
			} else {
				alert("删除失败");
			}
		});
	}
	
	$("#d").click(function(){
    alert("Tex");
  });
	function rename(){	
	
		$("#d").hide();
		$("#d2").show();
		$("#t").hide();
		$("#i").show();
		$("#i").val();	
		
	}
	
	
</script>
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">武术锦标赛</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">               
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">      
                                 <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>                    
                </li>               
            </ul>
          
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">                      
                     
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 赛事管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">賽事信息</a>
                                </li>
                                <li>
                                    <a href="morris.html">比赛项目</a>
                                </li>
                            </ul>                           
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 参赛人员报表<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">人数统计</a>
                                </li>
                                <li>
                                    <a href="morris.html">人员名单</a>
                                </li>
                            </ul>                           
                        </li>
                        <li>                        
                        <li>
                            <a href="tables.html"><i class="fa fa-table fa-fw"></i> 比赛评分</a>
                        </li>  
                    </ul>
                </div>                
            </div>            
        </nav>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">赛事信息</h1>
                </div>                
            </div>            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                                                                    学校列表
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">  
                            <div class="dataTable_wrapper">
                                <table class="table  table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>序号</th>
                                            <th>学校</th>
                                            <th>操作</th>                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd ">
                                            <td></td>
                                            <td><input  class="form-control" >  </td>
                                            <td>
                                            <button type="button" class="btn btn-info btn-sm">添加</button>&nbsp;                                            
                                            </td>                                          
                                        </tr>
                                        <tr class="odd ">
                                            <td>1</td>                                            
                                            <td id="t">广州市第九十七中学</td>
                                            <td  id="i"  style="display:none;"><input value="广州市第九十七中学" class="form-control" ></td>
                                            <td>
                                            <button type="button" class="btn btn-success btn-sm">进入</button>&nbsp;                                            
                                            <button id="d" type="button" class="btn btn-primary btn-sm" onClick="rename()">编辑</button>
                                             <button id="d2" style="display:none;" type="button" class="btn btn-primary btn-sm" onClick="updatename()">完成</button>&nbsp;
                                            <button type="button" class="btn btn-danger btn-sm">删除</button>&nbsp;                                        
                                            </td>                                          
                                        </tr>
                                        <tr class="odd ">
                                            <td>2</td>                                            
                                            <td id="t">广州市第六中学</td>
                                            <td  id="i"  style="display:none;"><input value="广州市第六中学" class="form-control" ></td>
                                            <td>
                                            <button type="button" class="btn btn-success btn-sm">进入</button>&nbsp;                                            
                                            <button id="d" type="button" class="btn btn-primary btn-sm" onClick="rename()">编辑</button>
                                             <button id="d2" style="display:none;" type="button" class="btn btn-primary btn-sm" onClick="updatename()">完成</button>&nbsp;
                                            <button type="button" class="btn btn-danger btn-sm">删除</button>                                       
                                            </td>                            
                                    </tbody>
                                </table>
                            </div> 
                        </div>                    
                    </div>                  
                </div>               
            </div>   
            </div>                           
           </div>                    
              

	<!-- jQuery -->
    <script src="<%=basePath%>bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<%=basePath%>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="<%=basePath%>bower_components/metisMenu/dist/metisMenu.min.js"></script>
    <!-- DataTables JavaScript -->
    <script src="<%=basePath%>bower_components/DataTables/media/js/jquery.dataTables.min.js"></script>
    <script src="<%=basePath%>bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<%=basePath%>dist/js/sb-admin-2.js"></script>
	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>
</body>
</html>
