<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<script type="text/javascript"
	src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-2.0.0.min.js"></script>
<script type="text/javascript"
	src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-ui"></script>
<link
	href="http://www.francescomalagrino.com/BootstrapPageGenerator/3/css/bootstrap-combined.min.css"
	rel="stylesheet" media="screen">
<script type="text/javascript"
	src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span1"></div>
			<div class="span10">
				<div class="navbar">
					<div class="navbar-inner">
						<div class="container-fluid">
							<a class="btn btn-navbar"
								data-target=".navbar-responsive-collapse" data-toggle="collapse"></a>
							<a class="brand" href="#">我的小站</a>
							<div class="nav-collapse collapse navbar-responsive-collapse">
								<ul class="nav">
									<li><a href="index">主页</a></li>
									<li><a href="category">分类</a></li>
									<li class="active"><a href="categoryManagement">管理</a></li>
									<li><a href="#">关于</a></li>
								</ul>
								<form class="form-search pull-right">
									<input class="input-medium search-query" type="text" />
									<button class="btn" type="submit">查找</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span3">
						<ul class="nav nav-stacked nav-pills">
							<li><a href="#">数据统计</a></li>
							<li><a href="categoryManagement">分类管理</a></li>
							<li class="active"><a href="articleManagement">博文管理</a></li>
						</ul>
					</div>
					<div class="span9">
						<table class="table">
							<thead>
								<tr>
									<th>文章ID</th>
									<th>文章名称</th>
									<th>创建时间</th>
									<th>阅读数量</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${as}" var="a" varStatus="st">
									<tr>
										<td>${a.id }</td>
										<td>${a.title }</td>
										<td>时间待完成</td>
										<td>阅读量待完成</td>
										<td>
										<td>
											<div class="btn-group">
												<button type="button"
													class="btn btn-primary btn-lg btn-success"
													data-toggle="modal" data-target="#myModal${c.id }">编辑</button>
												<form action="deleteCategory">
													<button type="submit" name="id" value="${c.id }"
														class="btn btn-primary btn-lg btn-danger">删除</button>
												</form>
											</div>
											<div class="modal fade" id="myModal${c.id }" tabindex="-1"
												role="dialog" aria-labelledby="myModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title" id="myModalLabel">编辑文章</h4>
														</div>
														<div class="modal-body">
															<form action="updateCategory" role="form">
																<div class="form-group">
																	<label class=" control-label">文章标题</label> <input
																		type="text" class="form-control" />
																</div>
																<div class="form-group">
																	<label for="name">文章简介</label>
																	<textarea class="form-control" rows="3"
																		name="mysumaryarea">
																	</textarea>
																</div>



																<div class="btn-group">
																	<button data-toggle="dropdown"
																		class="btn dropdown-toggle">
																		文章分类 <span class="caret"></span>
																	</button>
																	<ul class="dropdown-menu " role="menu">
																		<li><a href="#">Java Web</a></li>
																		<li><a href="#">SSM</a></li>
																		<li><a href="#">更多分类</a></li>
																	</ul>
																</div>





																<div class="form-group">
																	<label for="inputtext" class="control-label">修改名称</label>
																	<div>
																		<input type="text" class="form-control" id="inputtext"
																			name="name" placeholder="不要输入重复分类名称"> <input
																			type="hidden" name="id" value=${c.id }>
																		<button type="button" class="btn btn-default"
																			data-dismiss="modal">取消</button>
																		<button type="submit" class="btn btn-primary">
																			确认修改</button>
																	</div>
																</div>

															</form>

														</div>
													</div>
												</div>
											</div>

										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						<div class="pagination pagination-centered">
							<ul>
								<li><a href="?start=0">首页</a></li>
								<li><a
									href="?start=${(page.start-page.count)>0?(page.start-page.count-1):0}">上一页</a></li>
								<li><a
									href="?start=${(page.start+page.count)<page.last?(page.start+page.count):page.last}">下一页</a></li>
								<li><a href="?start=${page.last}">末 页</a></li>
							</ul>
						</div>
						<form action="addArticle" role="form">
							<div class="form-group ">
								<label for="name">文章标题</label><input type="text" name="title"
									class="form-control" />
							</div>
							<div class="form-group ">
								<label for="name">文章简介</label>
								<textarea class="form-control" rows="3" name="summary">
							</textarea>
							</div>
							<div class="form-group ">
								<label for="sel1">文章分类</label> <select class="form-control"
									id="sel1" name="category">
									<option selected="selected" value="其他分类"/>
									<c:forEach items="${cl}" var="c" varStatus="st">
										<option value="${c.name }">${c.name }</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label for="name">文章内容</label>
								<textarea class="form-control" rows="3" name="content">
							</textarea>
							</div>
							<button type="submit" class="btn btn-default">提交</button>
						</form>
					</div>
				</div>
			</div>
			<div class="span1"></div>
		</div>
	</div>
</body>
</html>