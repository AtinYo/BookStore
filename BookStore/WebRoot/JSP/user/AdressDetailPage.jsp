<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ include file="../../index.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>AddressDetail.jsp</title>
	</head>

	<body>
		<div class="container-fluid" style="width: 100%; font-size: 1.2em;">
			<div class="panel">
				<div class="panel-body" align="center">

					<div class="panel panel-info" style="width: 80%;" align="left">
						<div class="panel-heading form-group">
							<b><font color="black">管理收貨地址</font> </b>                    
						</div>
						<div class="panel-body">
							<div class="row" style="width: 100%;">
								<div class="col-md-12">
									<form class="form-horizontal" role="form">
										<fieldset>
											<div class="form-group">
												<label class="col-sm-2 control-label" for="textinput">
													門牌號
												</label>
												<div class="col-sm-10">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label" for="textinput">
													街道
												</label>
												<div class="col-sm-10">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label" for="textinput">
													所在地區
												</label>
												<div class="col-sm-10">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label" for="textinput">
													城市
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control">
												</div>

												<label class="col-sm-2 control-label" for="textinput">
													郵編
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control">
												</div>
											</div>
											<legend>
												收貨人
											</legend>
											<div class="form-group">
												<label class="col-sm-2 control-label" for="textinput">
													姓名
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control">
												</div>
												<label class="col-sm-2 control-label" for="textinput">
													電話
												</label>
												<div class="col-sm-4">
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-offset-2 col-sm-10">
													<div class="pull-right">
														<button type="submit" class="btn btn-default">
															取消
														</button>
														<button type="submit" class="btn btn-primary">
															保存
														</button>
													</div>
												</div>
											</div>
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>
