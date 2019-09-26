<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
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
          <div><a class="navbar-brand" style="font-size:32px;" href="#">众筹平台 - 角色维护</a></div>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li style="padding-top:8px;">
				<div class="btn-group">
				  <button type="button" class="btn btn-default btn-success dropdown-toggle" data-toggle="dropdown">
					<i class="glyphicon glyphicon-user"></i> 张三 <span class="caret"></span>
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
								<a href="user.html"><i class="glyphicon glyphicon-user"></i> 用户维护</a> 
							</li>
							<li style="height:30px;">
								<a href="role.html" style="color:red;"><i class="glyphicon glyphicon-king"></i> 角色维护</a> 
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
      <div class="input-group-addon">请输入名称</div>
      <input class="form-control has-success" type="text" placeholder="请输入查询条件" id="seachtext">
  </div>
  </div>
  <button type="button" class="btn btn-warning" onclick="seach()"><i class="glyphicon glyphicon-search"></i> 查询</button>
</form>
<button type="button" class="btn btn-danger" style="float:right;margin-left:10px;"><i class=" glyphicon glyphicon-remove"></i> 删除</button>
<button type="button" class="btn btn-primary" style="float:right;" onclick="window.location.href='form.html'"><i class="glyphicon glyphicon-plus"></i> 新增</button>
<br>
 <hr style="clear:both;">
          <div class="table-responsive">
            <table class="table  table-bordered">
              <thead>
                <tr >
                  <th width="30">#</th>
				  <th width="30"><input type="checkbox"></th>
                  <th>名称</th>
                  <th width="100">操作</th>
                </tr>
              </thead>
              <tbody>


              </tbody>
			  <tfoot>
			     <tr >
				     <td colspan="6" align="center" >
						 <ul class="pagination" id="td">



						 </ul>
						 <ul>
						 <li>
							 <select id="pagesize">
								 <option value="3" selected="selected">3</option>
								 <option value="5">5</option>
								 <option value="10">10</option>
							 </select>
						 </li>
						 </ul>
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

			    //动态添加select

				//ajax发送页面请求
				queryrolelist(1,3);
            });
            var datas={};
            function queryrolelist(pageno,pagesize) {
            	//页面一加载就发送异步请求
				datas["pageno"]=pageno;
				datas["pagesize"]=pagesize;
				$.ajax({
					url:"${APP_PATH}/role/index.do",
					type:"post",
					data:datas,
					dataType: "json",
					beforeSend:function(){
						//异步之前可以进行表单的检验或者加载图片
						var load=layer.load(3, {
							time:300
						});
					},
					success:function(data){
						//data是一个json对象
						if(data.success){//没有抛异常
							//解析请求来的数据
							var roles=data.page.list;
							var page=data.page;
							//字符串拼接
							var content="";
							$.each(roles,function (i,n) {
								content+='<tr>';
								content+='<td>'+n.id+'</td>';
								content+='<td><input type="checkbox"></td>';
								content+='<td>'+n.rolename+'</td>';
								content+='<td>'+n.roletime+'</td>';
								content+='<td><button type="button" class="btn btn-success btn-xs"><i class=" glyphicon glyphicon-check"></i></button>';
								content+='<button type="button" class="btn btn-primary btn-xs"><i class=" glyphicon glyphicon-pencil"></i></button>';
								content+='<button type="button" class="btn btn-danger btn-xs"><i class=" glyphicon glyphicon-remove"></i></button>';
								content+='</td>';
								content+='</tr>';
							});
								$("tbody").html(content);
							//分页
							var contenttar='';


							if(page.pageno==1){
								contenttar+='<li class="disabled"><a href="javascript:void(0);">上一页</a></li>';
							}else{
								contenttar+='<li><a href="javascript:void(0);" onclick="queryrolelist('+(page.pageno-1)+',3)">上一页</a></li>';
							}
							for(var i=1;i<=page.totalpage;i++){
								contenttar+='<li';
								if(page.pageno==i){
									contenttar+=' class="active"';
								}
								contenttar+='><a href="javascript:void(0);" onclick="queryrolelist('+i+',3)">'+i+'</a></li>';
							}
							if(page.pageno==page.totalpage){
								contenttar+='<li class="disabled"><a href="javascript:void(0);">下一页</a></li>';
							}else{
								contenttar+='<li><a href="javascript:void(0);" onclick="queryrolelist('+(page.pageno+1)+',3)">下一页</a></li>';
							}


							$("#td").html(contenttar);

						}else {
							layer.msg(data.msString,{icon:6,shift:5,time:1000});
						}
					},
					error:function(){
						layer.msg("请求数据失败",{icon:6,shift:5,time:1000});
					}
					
				});
			}
            $("tbody .btn-success").click(function(){
                window.location.href = "assignPermission.html";
            });
			$("#pagesize").change(function () {
				var pagesize=parseInt($("#pagesize  option:selected").val());
				queryrolelist(1,pagesize);
			});
			function seach() {
				var seachtext=$("#seachtext").val();
				//加入表中的值到datasjson中
				datas["seachtext"]=seachtext;
				var pagesize=parseInt($("#pagesize  option:selected").val());
				queryrolelist(1,pagesize);
				$("#seachtext").val("");
			}
        </script>
  </body>
</html>
