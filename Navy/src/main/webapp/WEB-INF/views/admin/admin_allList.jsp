<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/include-head.jspf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(function(){
	// 상품 디테일 페이지 보이기
	$(document).on("click","tr.tr_pro",function(){
		let p_code = $(this).data("id")
		document.location.href="${rootPath}/admin/pro_detail_view/"+p_code
		/*
		$.get("${rootPath}/admin/pro_detail_view/" + p_code,
				function(result){
			$("#admin_content").html(result)
		})
		*/
	})
	
	// 상품 등록 페이지 이동
	$(document).on("click",".ad-pro-insert",function(){
		document.location.href="${rootPath}/admin/pro_insert"
		/*
		$.get("${rootPath}/admin/pro_insert",
				function(result){
			$("#admin_content").html(result)
		})
		*/
	})
})
</script>
</head>
<body>
<%@ include file = "/WEB-INF/views/include/include-nav.jspf" %>
<article class="all-browsers">
      <div class="hr-sect">ADMIN</div>

      <div class="container">
        <!--sidebar-->
        <div class="row">
          <aside
            class="col-2 px-0"
            id="left"
            style="top: 250px; position: fixed; left: 0;"
          >
            <div class="list-group w-100">
            	<%@ include file ="/WEB-INF/views/admin/admin-include-nav.jspf" %>
            </div>
          </aside>
			<main class="col offset-2 h-100 user-main" id="admin_content">
	<!--page include-->
		<div class="row bg-light">
			<div class="col-12 py-4 text-center">
				<span style="font-size: 30px;">상품관리</span>
			</div>
		</div>
		<div class="row bg-white">
			<div class="col-12 py-4">
				<table class="table">
					<thead>
						<tr>
							<th class="in-ck-box">NO</th>
							<th class="in-ck-box">PRODUCT.CODE</th>
							<th class="in-ck-box">PRODUCT.NAME</th>
							<th class="in-ck-box">PRODUCT.PRICE</th>
							<th class="in-ck-box">PRODUCT.QTY</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty PROLIST}">
								<tr>
									<td colspan="5">상품 정보 없음</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${PROLIST}" var="pro" varStatus="i">
									<tr data-id="${pro.p_code}" class="tr_pro">
										<td>${i.count}</td>
										<td>${pro.p_code}</td>
										<td>${pro.p_name}</td>
										<td>${pro.p_price}</td>
										<td>${pro.p_qty}</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<!--button group-->
				<div class="d-flex justify-content-end mb-5">
					<button class="mr-2 bt-bbs-style ad-pro-insert btn_pro_insert"
						type="button">

						등록</button>
				</div>
				<!--button group end-->
				<!--pagination-->
				<div class="d-flex justify-content-center">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item"><a class="page-link black-text"
								href="#" aria-label="Previous">
									<span aria-hidden="true" class="black-text">&laquo;</span>
									<span class="sr-only">Previous</span>
							</a></li>
							<li class="page-item black-text"><a
								class="page-link black-text" href="#">1</a></li>
							<li class="page-item black-text"><a
								class="page-link black-text" href="#">2</a></li>
							<li class="page-item black-text"><a
								class="page-link black-text" href="#">3</a></li>
							<li class="page-item black-text"><a
								class="page-link black-text" href="#" aria-label="Next">
									<span aria-hidden="true" class="black-text">&raquo;</span>
									<span class="sr-only black-text">Next</span>
							</a></li>
						</ul>
					</nav>
				</div>
				<!--pagination end-->
			</div>
		</div>
			</main>
          
        </div>
      </div>
    </article>
</body>
<%@ include file = "/WEB-INF/views/include/include-footer.jspf" %>
</html>