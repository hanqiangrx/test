<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<%@ include file="../common/head.jspf"%>
<script type="text/javascript">
   $(function(){
   
   //调整窗口表格高度
   $(window).resize(function(){
   	 $('#table').bootstrapTable('resetView',{
   	 	height:tableHeight()
   	 });
   });
   
   	 $('#table').bootstrapTable({
	  striped: true,   //是否显示行间隔色
	  height:700,
	  idField: "id",  //标识哪个字段为id主键  
	  url:'/ssh/user/user_query.action',
	  pagination:true,//显示分页栏
	  dataField:'rows',//服务器端返回数据键值 记录是rows 总条数是total
	  pageSize:5,//单页记录数
	  contentType:"application/x-www-form-urlencoded",//请求数据内容格式
	  dataType:'json',//数据返回类型
	  method:'post',//请求方式
	  queryParamsType:'limit',//查询参数组织方式
	  queryParams:function getParams(params){
	  	params.other = 'otherInfo';
	  	return params;
	  },
	  sidePagination:"server",//服务器端 分页
	  search:true,//是否搜索
	  searchAlign:"left",//搜索栏对齐方式
	  showRefresh:true,//显示刷新按钮
	  showColumns:true,//列选择按钮
	  toolbar: "#toolbar",//指定工具栏
	  toolbarAlign:'left',//工具栏对齐方式
	  pageList:[5,10,15],
	  searchOnEnterKey: false,//回车搜索
      buttonsAlign: "left",//按钮对齐方式
     
      toolbarAlign: "right",//工具栏对齐方式
	  columns:[{
	  	field:'select',
	  	title:'全选',
	  	checkbox:true,
	  	align:'center',
	  	valign:'middle'//垂直
	  },{
	  	field:'id',
	  	title:'主键',
	  	sortable:true,//是否可排序
	  	order:"desc"//默认排序方式
	  },{
	  	field:'name',
	  	title:'用户名',
	  	sortable:true,//是否可排序
	  	titleTooltip:'用户姓名',
	  },{
	  	field:'birthday',
	  	title:'出生年月日'
	  },
	  {
	  	field:'info',
	  	title:'操作',
	  	formatter:'infomatter'
	  },{
	  	field:'name',
	  	title:'到期提醒',
	  	formatter:'infomatter2'
	  }],
	  
	  onClickRow:function(row,$element){
	  	//$element 是当前的jQuery行对象
	  	$element.css("background-color","#F5F5B3");
	  },//单击行事件
	  locale:"zh-CN",//中文支持
	  detailView:false,//是否显示详情折叠 
	  detailFormatter:function(index,row,element){
	  	var html = '';
	  	$.each(row,function(key,val){
	  		html += "<p>"+key+":"+val+"</p>";
	  	});
	  	return html;
	  },
	  });
   	
   
   		//添加事件
   	$("#addRecord").click(function(){
   		
   		$("#addModal").modal("hide");
   	});
   	
   
   
   });
   
    function tableHeight(){
   	return $(window).height()-50;
   }
   
	//列格式化函数    
   function infomatter(value,row,index){
   	return "<a href='update.action?id="+row.id+"'>修改</a>";
   }
      
   function infomatter2(value,row,index){
      
   	return "<span style='color:red'>"+row.name+"</span>";
   }
  </script>

</head>

<body>
			<div class="col-*-12">
				<div id="toolbar" class="btn-group">
					<div class="btn btn-primary" data-toggle="modal"
						data-target="#addModal"> <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>添加记录</div>
				</div>
  				<table id="table" class="table table-hover"></table>
				<div class="modal fade" id="addModal" tabindex="-1" role="dialog"
					aria-hidde="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">添加记录</h4>
							</div>
							<div class="modal-body">
								<form role="form" action="javascript:void(0)">
									<div class="form-group">
										<input type="text" class="form-control" id="name"
											placeholder="请输入名称">
									</div>
									<div class="form-group">
										<input type="text" class="form-control" id="age"
											placeholder="请输入年龄">
									</div>
								</form>
							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">取消</button>
								<button type="button" class="btn btn-primary" id="addRecord">提交</button>
							</div>

						</div>
					</div>

				</div>

			</div>
</body>
</html>
