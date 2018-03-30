<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<Script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>

<body>
	<div class="card">
		<div class="card-header">jQuery 練習</div>
		<div class="card-body">
			<!-- 每頁不同的內容從這裡開始 -->
			<table id="productTable" class="table table-bordered">
				<thead>
					<tr>
						<th>項目</th>
						<th>Account/帳號</th>
						<th>Name/姓名與職稱</th>
						<th>Email/電子信箱</th>
						<th>Title/主旨</th>
						<th>Messeage/聯絡訊息*</th>
						<th>照片</th>
						
					</tr>
				</thead>
				<tbody>

				</tbody>
				<tfoot>
					<tr>
						<form name="myForm">
							<td><input type="hidden" id="ProductID" name="ProductID"><span></span></td>
							<td><input type="text" class="form-control" id="ProductName"
								name="ProductName" placeholder="產品名稱"></td>
							<td><input type="text" style="width: 100px"
								class="form-control" id="UnitPrice" name="UnitPrice"
								placeholder="價格"></td>
							<td><input type="text" style="width: 100px"
								class="form-control" id="UnitsInStock" name="UnitsInStock"
								placeholder="庫存量"></td>
							<td><button id="buttonAdd" type="button"
									class="btn btn-primary">
									<i class="fas fa-plus"></i>
								</button>
								<button id="buttonUpdate" type="button" class="btn btn-success">
									<i class="fas fa-pencil-alt"></i>
								</button></td>
					</tr>
					</form>
				</tfoot>
			</table>
			<!-- 每頁不同的內容到這裡結束 -->
		</div>
	</div>
	</div>

</body>
</html>