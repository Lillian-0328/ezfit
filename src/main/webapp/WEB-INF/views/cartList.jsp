<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/fontawesome-free-5.11.2-web/css/all.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/cartList_main.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>cartList</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- main -------------------------------------->
	<div id="main">
		<div class="container bg-white my-5">
			<!-- 購物車明細主體 -->
			<div id="cartListRow" class="row">
				<!-- Ttitle -->
				<div class="col-12 my-3">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<h3 class="m-0">我的購物清單</h3>
							</div>
						</div>
					</div>
				</div>
				<!-- 購物車明細標頭 -->
				<div class="col-12 my-2">
					<div class="container cartListHeader">
						<div class="row  py-1">
							<div class="col-7">商品</div>
							<div class="col-5">
								<div class="container-fuild">
									<div class="row text-right">
										<div class="col-4 text-center">數量</div>
										<div class="col-4">單價</div>
										<div class="col-4">小計</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 購物車明細內容 -->
				<!-- <div class="col-12 my-2 ">
            <div class="container">
              <div class="row customBottomBorder pb-3">
                <div class="col-7">
                  <div class="container-fuild">
                    <div class="row">
                      <div class="col-2">
                        <img
                          src="productImage/001-1.jpg"
                          alt=""
                          style="width: 100%;"
                        />
                      </div>
                      <div class="col-3">
                        包心白菜 <br />
                        600克±10%/顆
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-5">
                  <div class="container-fuild">
                    <div class="row text-right">
                      <div class="col-4">
                        <input
                          type="number"
                          name=""
                          id=""
                          style="max-width: 50%;"
                        />
                        <button type="button">刪除</button>
                      </div>
                      <div class="col-4">NT$ 88</div>
                      <div class="col-4">NT$ 176</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 my-2 ">
            <div class="container">
              <div class="row customBottomBorder pb-3">
                <div class="col-7">
                  <div class="container-fuild">
                    <div class="row">
                      <div class="col-2">
                        <img
                          src="productImage/001-1.jpg"
                          alt=""
                          style="width: 100%;"
                        />
                      </div>
                      <div class="col-3">
                        包心白菜 <br />
                        600克±10%/顆
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-5">
                  <div class="container-fuild">
                    <div class="row text-right">
                      <div class="col-4">
                        <input
                          type="number"
                          name=""
                          id=""
                          style="max-width: 50%;"
                        />
                        <button type="button">刪除</button>
                      </div>
                      <div class="col-4">NT$ 88</div>
                      <div class="col-4">NT$ 176</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div> -->
				<!-- 購物車總結 -->
				<!-- <div class="col-12 my-2">
            <div class="container">
              <div class="row">
                <div class="col-7">總計 :</div>
                <div class="col-5">
                  <div class="container-fuild">
                    <div class="row text-right">
                      <div class="col-4"></div>
                      <div class="col-4"></div>
                      <div class="col-4">NT$ 352</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div> -->
			</div>

			<form id="cartForm" method="POST"
				style="display: flex; flex-direction: column;">
				<!-- 購買人資料主體 -->
				<div class="row">
					<!-- 購買人資料 -->
					<div class="col-12 my-2">
						<div class="container cartListHeader">
							<div class="row  py-1">
								<div class="col-12">購買人資料</div>
							</div>
						</div>
					</div>
					<div class="col-12 my-2">
						<div class="container">
							<!-- 姓名 -->
							<span class="my-2 d-flex">
								<div class="w-5">
									<label for="subscriberName">姓名 </label>
								</div>
								<div>
									<input type="text" name="subscriberName" id="subscriberName"
										class="mx-5" value="${param.subscriberName}" />
									<span class="text-danger">${sessionScope.MsgMap.errorSubName}</span>
								</div>
							</span>
							<!-- 手機號碼 -->
							<span class="my-2 d-flex">
								<div class="w-5">
									<label for="subscriberPhone">手機 </label>
								</div>
								<div>
									<input type="tel" name="subscriberPhone" id="subscriberPhone"
										class="mx-5" value="${param.subscriberPhone}" />
									<span class="text-danger">${sessionScope.MsgMap.errorSubPhone}</span>
								</div>
							</span>
							<!-- email -->
							<span class="my-2 d-flex">
								<div class="w-5">
									<span><label for="subscriberEmail">email</label></span>
								</div>
								<div>
									<input type="email" name="subscriberEmail" id="subscriberEmail"
										class="mx-5" value="${param.subscriberEmail}" />
									<span class="text-danger">${sessionScope.MsgMap.errorSubEmail}</span>
								</div>
							</span>
							<!-- 選擇地區 -->
							<span class="my-2 d-flex">
								<div class="w-5">
									<label for="subscriberCity">住址 </label>
								</div>
								<div>
									<span id="subscriberTwzipcode" class="twzipcode mx-5"></span>
								</div>
							</span>
							<!-- 住址 -->
							<span class="my-2 d-flex">
								<div class="w-5">
									<label for="subscriberAddress" style="visibility: hidden;">住址
									</label>
								</div>
								<div class="w-100">
									<input type="text" name="subscriberAddress"
										id="subscriberAddress" class="mx-5 w-50"
										value="${param.subscriberAddress}" /> <span
										class="text-danger">${sessionScope.MsgMap.errorSubAddress}</span>
								</div>
							</span>
						</div>
					</div>
				</div>
				<!-- 收件人資料主體 -->
				<div class="row">
					<!-- 收件人資料 -->
					<div class="col-12 my-2">
						<div class="container cartListHeader">
							<div class="row  py-1">
								<div class="col-12">收件人資料</div>
							</div>
						</div>
					</div>
					<div class="col-12 my-2">
						<div class="container">
							<!-- 姓名 -->
							<span class="my-2 d-flex">
								<div class="w-5">
									<label for="name">姓名 </label>
								</div>
								<div>
									<input type="text" name="name" id="name" class="mx-5"
										value="${param.name}" /> <span
										class="text-danger">${MsgMap.errorShipName}</span>
								</div>
								<button id="clickBtn" type="button"
									class="btn btn-success ml-auto">
									同購買人資料</button>
							</span>
							<!-- 手機號碼 -->
							<span class="my-2 d-flex">
								<div class="w-5">
									<label for="phone">手機 </label>
								</div>
								<div>
									<input type="tel" name="phone" id="phone" class="mx-5"
										value="${param.phone}" /> <span
										class="text-danger">${MsgMap.errorShipPhone}</span>
								</div>
							</span>
							<!-- 選擇地區 -->
							<span class="my-2 d-flex">
								<div class="w-5">
									<label for="city">住址 </label>
								</div>
								<div>
									<span id="twzipcode" class="twzipcode mx-5"></span>
								</div>
							</span>
							<!-- 住址 -->
							<span class="my-2 d-flex">
								<div class="w-5">
									<label for="address" style="visibility: hidden;">住址
									</label>
								</div>
								<div class="w-100">
									<input type="text" name="address" id="address"
										class="mx-5 w-50" value="${param.address}" />
									<span class="text-danger">${MsgMap.errorShipAddress}</span>
								</div>
							</span>
							<div class="text-center my-4">
								<input type="text" name="action" id="cartListAction"
									value="bill" style="display: none;" />
								<button type="submit" id="btn-submit"
									class="btn btn-success w-100">結帳</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!--     Footer-->
	<jsp:include page="footer.jsp"></jsp:include>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.15-rc1/jquery.twzipcode.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/cartList_new.js"></script>
</body>
</html>
