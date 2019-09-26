<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ZH-CN">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<link rel="stylesheet" href="${APP_PATH }/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${APP_PATH }/css/font-awesome.min.css">
	<link rel="stylesheet" href="${APP_PATH }/css/main.css">
	
	<style>
	.tree li {
        list-style-type: none;
		cursor:pointer;
	}
	table tbody tr:nth-child(odd){background:#F4F4F4;}
	table tbody td:nth-child(even){color:#C00;}
	</style>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <div><a class="navbar-brand" style="font-size:32px;" href="#">众筹平台 - 用户维护</a></div>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li style="padding-top:8px;">
				<div class="btn-group">
				  <button type="button" class="btn btn-default btn-success dropdown-toggle" data-toggle="dropdown">
					<i class="glyphicon glyphicon-user"></i> ${sessionScope.user.username} <span class="caret"></span>
				  </button>
					  <ul class="dropdown-menu" role="menu">
						<li><a href="#"><i class="glyphicon glyphicon-cog"></i> 个人设置</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-comment"></i> 消息</a></li>
						<li class="divider"></li>
						<li><a href="index.html"><i class="glyphicon glyphicon-off"></i> 退出系统</a></li>
					  </ul>
			    </div>
			</li>
            <li style="margin-left:10px;padding-top:8px;">
				<button type="button" class="btn btn-default btn-danger">
				  <span class="glyphicon glyphicon-question-sign"></span> 帮助
				</button>
			</li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
			<div class="tree">
				<ul style="padding-left:0px;" class="list-group">
					<li class="list-group-item tree-closed" >
						<a href="main.html"><i class="glyphicon glyphicon-dashboard"></i> 控制面板</a> 
					</li>
					<li class="list-group-item">
						<span><i class="glyphicon glyphicon glyphicon-tasks"></i> 权限管理 <span class="badge" style="float:right">3</span></span> 
						<ul style="margin-top:10px;">
							<li style="height:30px;">
								<a href="user.html" style="color:red;"><i class="glyphicon glyphicon-user"></i> 用户维护</a> 
							</li>
							<li style="height:30px;">
								<a href="role.html"><i class="glyphicon glyphicon-king"></i> 角色维护</a> 
							</li>
							<li style="height:30px;">
								<a href="permission.html"><i class="glyphicon glyphicon-lock"></i> 许可维护</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item tree-closed">
						<span><i class="glyphicon glyphicon-ok"></i> 业务审核 <span class="badge" style="float:right">3</span></span> 
						<ul style="margin-top:10px;display:none;">
							<li style="height:30px;">
								<a href="auth_cert.html"><i class="glyphicon glyphicon-check"></i> 实名认证审核</a> 
							</li>
							<li style="height:30px;">
								<a href="auth_adv.html"><i class="glyphicon glyphicon-check"></i> 广告审核</a> 
							</li>
							<li style="height:30px;">
								<a href="auth_project.html"><i class="glyphicon glyphicon-check"></i> 项目审核</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item tree-closed">
						<span><i class="glyphicon glyphicon-th-large"></i> 业务管理 <span class="badge" style="float:right">7</span></span> 
						<ul style="margin-top:10px;display:none;">
							<li style="height:30px;">
								<a href="cert.html"><i class="glyphicon glyphicon-picture"></i> 资质维护</a> 
							</li>
							<li style="height:30px;">
								<a href="type.html"><i class="glyphicon glyphicon-equalizer"></i> 分类管理</a> 
							</li>
							<li style="height:30px;">
								<a href="process.html"><i class="glyphicon glyphicon-random"></i> 流程管理</a> 
							</li>
							<li style="height:30px;">
								<a href="advertisement.html"><i class="glyphicon glyphicon-hdd"></i> 广告管理</a> 
							</li>
							<li style="height:30px;">
								<a href="message.html"><i class="glyphicon glyphicon-comment"></i> 消息模板</a> 
							</li>
							<li style="height:30px;">
								<a href="project_type.html"><i class="glyphicon glyphicon-list"></i> 项目分类</a> 
							</li>
							<li style="height:30px;">
								<a href="tag.html"><i class="glyphicon glyphicon-tags"></i> 项目标签</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item tree-closed" >
						<a href="param.html"><i class="glyphicon glyphicon-list-alt"></i> 参数管理</a> 
					</li>
				</ul>
			</div>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="panel panel-default">
			  <div class="panel-heading">
				<h3 class="panel-title"><i class="glyphicon glyphicon-th"></i> 数据列表</h3>
			  </div>
			  <div class="panel-body">
<form class="form-inline" role="form" style="float:left;">
  <div class="form-group has-feedback">
    <div class="input-group">
      <div class="input-group-addon">查询条件</div>
      <input class="form-control has-success" type="text" placeholder="请输入查询条件">
    </div>
  </div>
  <button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-search"></i> 查询</button>
</form>
<button type="button" class="btn btn-danger" style="float:right;margin-left:10px;"><i class=" glyphicon glyphicon-remove"></i> 删除</button>
<button type="button" class="btn btn-primary" style="float:right;" onclick="window.location.href='${APP_PATH}/user/toAdd.htm'">
	<i class="glyphicon glyphicon-plus"></i> 新增</button>
<br>
 <hr style="clear:both;">
          <div class="table-responsive">
            <table class="table  table-bordered">
              <thead>
                <tr >
                  <th width="30">#</th>
				  <th width="30"><input type="checkbox" id="allcheck"></th>
                  <th>账号</th>
                  <th>名称</th>
                  <th>邮箱地址</th>
                  <th width="100">密码</th>
                </tr>
              </thead>
              <tbody>
              
              </tbody>
			  <tfoot>
			     <tr >
				     <td colspan="6" align="center" id="td">
						
					 </td>
				 </tr>

			  </tfoot>
            </table>
          </div>
			  </div>
			</div>
        </div>
      </div>
    </div>

    <script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
    <script src="${APP_PATH }/bootstrap/js/bootstrap.min.js"></script>
	<script src="${APP_PATH }/script/docs.min.js"></script>
	<script src="${APP_PATH }/layer/layer.js"></script>
        <script type="text/javascript">
            $(function () {
			    $(".list-group-item").click(function(){
				    if ( $(this).find("ul") ) {
						$(this).toggleClass("tree-closed");
						if ( $(this).hasClass("tree-closed") ) {
							$("ul", this).hide("fast");
						} else {
							$("ul", this).show("fast");
						}
					}
				});
                $("#allcheck").click(function () {
                    var chs=$("#allcheck").prop("checked");
                    var h=$("tbody tr td input[type='checkbox']");
                        h.prop("checked",chs);
                });
                 var s=$("tbody tr td input[type='checkbox']");
                 if(s.length<1){
                     $("#allcheck").prop("checked",false);
                 }
			    
			    queryuser(1);
			    
            });
            function deleteUser(id){
                layer.confirm("您确定删除吗？",{
                    title:"提示",
                    btn:["确定","取消"]
                },function (index) {
                    layer.close(index);
                    //异步删除
                    $.ajax({
                        url:"${APP_PATH}/user/toDelete.do",
                        type:"post",
                        datatype:"json",
                        data:{"id":id},
                        success:function (data) {
                            if(data.success){
                                layer.msg("删除成功",{time:300,icon:5,shift:6});
                                window.location.reload();
                            }else{
                                layer.msg("删除失败",{time:300,icon:6,shift:5});
                            }
                        }
                    });
                    }
                ),function () {
                    //取消不做操作
                }
            }
            $("tbody .btn-success").click(function(){
                window.location.href = "assignRole.html";
            });
            $("tbody .btn-primary").click(function(){
                window.location.href = "edit.html";
            });
            function pagechage(pageno) {
            	//window.location.href = "${APP_PATH}/user/index.do?pageno="+pageno;
            	
            	queryuser(pageno);
			}
            function queryuser(pageno) {       
				$.ajax({
					url:"${APP_PATH}/user/index.do",
					type:"post",
					data:{
						"pageno":pageno,
						"pagesize":2
						},
					datatype:"json",
					beforeSend:function(){
						var loading=layer.load(3,{
							time:100
						});
						return true;
					},
					success:function(result){
						
						if(result.success){//true
							//需要进行局部刷新请求回来的page对象
							var page=result.page;
							var data=page.list;
							//需要拼接字符串显示到表格中
							var content='';
							$.each(data,function(i,n){
								content+='<tr>';
				                content+='<td>'+(i+1)+'</td>';
				                content+='<td><input type="checkbox" ></td>';
				                content+='<td>'+n.loginacct+'</td>';
				                content+='<td>'+n.username+'</td>';
				                content+='<td>'+n.email+'</td>';
				                content+='<td>'+n.userpawd+'</td>';
				                content+='<td>'+n.createtime+'</td>';
				                content+='<td>';
				                content+='<button type="button" class="btn btn-success btn-xs"><i class=" glyphicon glyphicon-check"></i></button>';
				                content+='<button type="button" onclick="window.location.href=\'${APP_PATH}/user/toUpdate.htm?id='+n.id+'\'" class="btn btn-primary btn-xs"><i class=" glyphicon glyphicon-pencil"></i></button>';
				                content+='<button type="button" class="btn btn-danger btn-xs" onclick="deleteUser('+n.id+')"><i class=" glyphicon glyphicon-remove"></i></button>';
				                content+='</td>';
								content+='</tr>';
							});
							$("tbody").html(content);
							//分页条
							var contenttar='';
							
							contenttar+='<ul class="pagination">';
							if(page.pageno==1){
								contenttar+='<li class="disabled"><a href="#">上一页</a></li>';
							}else{
								contenttar+='<li><a href="#" onclick="pagechage('+(page.pageno-1)+')">上一页</a></li>';
							}
							/*for(var i=1;i<=page.totalpage;i++){
								contenttar+='<li'; 
								if(page.pageno==i){
									contenttar+='class="active"';
								}
								contenttar+='><a href="#" onclick="pagechage('+i+')">'+i+'</a></li>';
							}*/
							if(page.pageno==page.totalpage){
								contenttar+='<li class="disabled"><a href="#">下一页</a></li>';
							}else{
								contenttar+='<li><a href="#" onclick="pagechage('+(page.pageno+1)+')">下一页</a></li>';
							}
														
									contenttar+='</ul>';
									$("#td").html(contenttar);
							
						}else{
							layer.msg(result.msString,{icon:5,shift:6,time:1000})				
							}
					}
				});
			}
        </script>
  </body>
</html>
