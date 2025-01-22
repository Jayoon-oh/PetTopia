<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en" class="light scroll-smooth group" data-layout="vertical" data-sidebar="light" data-sidebar-size="lg" data-mode="light" data-topbar="light" data-skin="default" data-navbar="sticky" data-content="fluid" dir="ltr">

<head>
	<meta charset="utf-8">
    <title>Room List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta content="Minimal Admin & Dashboard Template" name="description">
    <meta content="Themesdesign" name="author">
    <!-- App favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/pettopia_favicon.ico">
    <!-- Layout config Js -->
    <script src="${pageContext.request.contextPath}/assets/js/layout.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Tailwind CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/tailwind2.css">
</head>
<style>
.image-container {
    width: 100%; /* 고정 너비 */
    height: 250px; /* 고정 높이 */
    overflow: hidden; /* 영역을 벗어난 이미지는 숨김 처리 */
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #f0f0f0; /* 필요하면 배경색 추가 */
}

.image-container img {
    width: 100%;
    height: 100%;
    object-fit: cover; /* 크기에 맞게 확대/자르기 */
}
</style>
<body class="text-base bg-body-bg text-body font-public dark:text-zink-100 dark:bg-zink-800 group-data-[skin=bordered]:bg-body-bordered group-data-[skin=bordered]:dark:bg-zink-700">
<div class="group-data-[sidebar-size=sm]:min-h-sm group-data-[sidebar-size=sm]:relative">
    
	<!-- Left Sidebar Start -->
    <div class="app-menu w-vertical-menu bg-vertical-menu ltr:border-r rtl:border-l border-vertical-menu-border fixed bottom-0 top-0 z-[1003] transition-all duration-75 ease-linear group-data-[sidebar-size=md]:w-vertical-menu-md group-data-[sidebar-size=sm]:w-vertical-menu-sm group-data-[sidebar-size=sm]:pt-header group-data-[sidebar=dark]:bg-vertical-menu-dark group-data-[sidebar=dark]:border-vertical-menu-dark group-data-[sidebar=brand]:bg-vertical-menu-brand group-data-[sidebar=brand]:border-vertical-menu-brand group-data-[sidebar=modern]:bg-gradient-to-tr group-data-[sidebar=modern]:to-vertical-menu-to-modern group-data-[sidebar=modern]:from-vertical-menu-form-modern group-data-[layout=horizontal]:w-full group-data-[layout=horizontal]:bottom-auto group-data-[layout=horizontal]:top-header hidden md:block print:hidden group-data-[sidebar-size=sm]:absolute group-data-[sidebar=modern]:border-vertical-menu-border-modern group-data-[layout=horizontal]:dark:bg-zink-700 group-data-[layout=horizontal]:border-t group-data-[layout=horizontal]:dark:border-zink-500 group-data-[layout=horizontal]:border-r-0 group-data-[sidebar=dark]:dark:bg-zink-700 group-data-[sidebar=dark]:dark:border-zink-600 group-data-[layout=horizontal]:group-data-[navbar=scroll]:absolute group-data-[layout=horizontal]:group-data-[navbar=bordered]:top-[calc(theme('spacing.header')_+_theme('spacing.4'))] group-data-[layout=horizontal]:group-data-[navbar=bordered]:inset-x-4 group-data-[layout=horizontal]:group-data-[navbar=hidden]:top-0 group-data-[layout=horizontal]:group-data-[navbar=hidden]:h-16 group-data-[layout=horizontal]:group-data-[navbar=bordered]:w-[calc(100%_-_2rem)] group-data-[layout=horizontal]:group-data-[navbar=bordered]:[&.sticky]:top-header group-data-[layout=horizontal]:group-data-[navbar=bordered]:rounded-b-md group-data-[layout=horizontal]:shadow-md group-data-[layout=horizontal]:shadow-slate-500/10 group-data-[layout=horizontal]:dark:shadow-zink-500/10 group-data-[layout=horizontal]:opacity-0">
    	 <c:import url="/WEB-INF/view/inc/leftSidebar.jsp"></c:import>   
    </div>
    <!-- Left Sidebar End -->
    
    <div id="sidebar-overlay" class="absolute inset-0 z-[1002] bg-slate-500/30 hidden"></div>
   	<header id="page-topbar" class="ltr:md:left-vertical-menu rtl:md:right-vertical-menu group-data-[sidebar-size=md]:ltr:md:left-vertical-menu-md group-data-[sidebar-size=md]:rtl:md:right-vertical-menu-md group-data-[sidebar-size=sm]:ltr:md:left-vertical-menu-sm group-data-[sidebar-size=sm]:rtl:md:right-vertical-menu-sm group-data-[layout=horizontal]:ltr:left-0 group-data-[layout=horizontal]:rtl:right-0 fixed right-0 z-[1000] left-0 print:hidden group-data-[navbar=bordered]:m-4 group-data-[navbar=bordered]:[&.is-sticky]:mt-0 transition-all ease-linear duration-300 group-data-[navbar=hidden]:hidden group-data-[navbar=scroll]:absolute group/topbar group-data-[layout=horizontal]:z-[1004]">
       	<c:import url="/WEB-INF/view/inc/header.jsp"></c:import>
   	</header>
    
     <div class="relative min-h-screen group-data-[sidebar-size=sm]:min-h-sm">
        <div class="group-data-[sidebar-size=lg]:ltr:md:ml-vertical-menu group-data-[sidebar-size=lg]:rtl:md:mr-vertical-menu group-data-[sidebar-size=md]:ltr:ml-vertical-menu-md group-data-[sidebar-size=md]:rtl:mr-vertical-menu-md group-data-[sidebar-size=sm]:ltr:ml-vertical-menu-sm group-data-[sidebar-size=sm]:rtl:mr-vertical-menu-sm pt-[calc(theme('spacing.header')_*_1)] pb-[calc(theme('spacing.header')_*_0.8)] px-4 group-data-[navbar=bordered]:pt-[calc(theme('spacing.header')_*_1.3)] group-data-[navbar=hidden]:pt-0 group-data-[layout=horizontal]:mx-auto group-data-[layout=horizontal]:max-w-screen-2xl group-data-[layout=horizontal]:px-0 group-data-[layout=horizontal]:group-data-[sidebar-size=lg]:ltr:md:ml-auto group-data-[layout=horizontal]:group-data-[sidebar-size=lg]:rtl:md:mr-auto group-data-[layout=horizontal]:md:pt-[calc(theme('spacing.header')_*_1.6)] group-data-[layout=horizontal]:px-3 group-data-[layout=horizontal]:group-data-[navbar=hidden]:pt-[calc(theme('spacing.header')_*_0.9)]">
            <div class="container-fluid group-data-[content=boxed]:max-w-boxed mx-auto">
                <div class="flex flex-col gap-2 py-4 md:flex-row md:items-center print:hidden">
                    <div class="grow">
                        <h5 class="text-16">객실 목록</h5>
                    </div>
                    <div class="ltr:md:text-end rtl:md:text-start"> 
					    <!-- 서비스 추가 버튼, href 속성으로 addService 페이지로 이동 -->
					    <a href="${pageContext.request.contextPath}/room/getAddRoom" class="text-white btn bg-custom-500 border-custom-500 hover:text-white hover:bg-custom-600 hover:border-custom-600 focus:text-white focus:bg-custom-600 focus:border-custom-600 focus:ring focus:ring-custom-100 active:text-white active:bg-custom-600 active:border-custom-600 active:ring active:ring-custom-100 dark:ring-custom-400/20 add-btn">
					        <i class="align-bottom ri-add-line me-1"></i> 객실 등록
					    </a>
					    
					    <!-- 삭제 버튼 -->
					   
					</div>
                   <!--  <ul class="flex items-center gap-2 text-sm font-normal shrink-0">
                        <li class="relative before:font-remix ltr:before:-right-1 rtl:before:-left-1  before:absolute before:text-[18px] before:-top-[3px] ltr:pr-4 rtl:pl-4 before:text-slate-400 dark:text-zink-200">
                            <a href="#!" class="text-slate-400 dark:text-zink-200">객실 목록</a>
                        </li>
                    </ul> -->
                </div>
                <!-- Main content -->
                <div class="card">
	                <div class="card-body">
	                    <div class="overflow-x-auto">
	                    	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
							    <c:forEach var="room" items="${roomListImg}">
							        <div class="flex flex-col p-4 bg-white border rounded-md shadow-sm dark:bg-zinc-800">
							            <div class="image-container">
							                <img src="${pageContext.request.contextPath}/upload/${room.fileName}" 
							                     alt="${room.originFileName}">
							            </div>
							            <div class="mt-4">
							            	<div style="display: flex; justify-content: space-between;">
								                <h6 class="text-lg font-semibold text-slate-700 dark:text-white" style="line-height: 2;">
								                    <a href="${pageContext.request.contextPath}/room/getRoomOne?roomNo=${room.roomNo}" 
								                       class="transition-all duration-300 ease-linear hover:text-custom-500">
								                        ${room.roomName}호
								                    </a>
								                </h6>
										    	<a href="${pageContext.request.contextPath}/room/deleteRoom?roomNo=${room.roomNo}"
										    		id="deleteRoom"
											    	class="text-white bg-red-500 border-red-500 btn hover:text-white hover:bg-red-600 hover:border-red-600 focus:text-white focus:bg-red-600 focus:border-red-600 focus:ring focus:ring-red-100 active:text-white active:bg-red-600 active:border-red-600 active:ring active:ring-red-100 dark:ring-custom-400/20">
											    	<i class="ri-delete-bin-2-line"></i>
										    	</a>
							                </div>
							                <p class="text-sm text-slate-500 mt-1">타입: <span>${room.roomType}</span></p>
							                <p class="text-sm text-slate-500">수용 인원: <span>${room.roomCapacity}</span> 명 </p>
							                <p class="text-sm text-slate-500">1박 당 가격: <span><fmt:formatNumber value="${room.pricePerNight}" type="number" groupingUsed="true" /></span> 원 </p>
							                <p class="text-sm text-slate-500">설명: <span>${room.roomDesc}</span></p>
							            </div>
							        </div>
							    </c:forEach>
							</div>
	                    </div>
	                    <!-- 페이징 시작 -->
						<div class="flex justify-end mt-4">
						    <div class="flex gap-2 pagination-wrap">
						        <!-- 이전 페이지 -->
						        <c:if test="${currentPage > 1}">
						            <a class="inline-flex items-center justify-center bg-white h-8 px-3 transition-all duration-150 ease-linear border rounded border-slate-200 text-slate-500 hover:text-custom-500 hover:bg-custom-50 focus:bg-custom-50 focus:text-custom-500"
						               href="?currentPage=${currentPage - 1}&pageSize=${pageSize}">
						                이전
						            </a>
						        </c:if>
						        <c:if test="${currentPage == 1}">
						            <a class="inline-flex items-center justify-center bg-white h-8 px-3 transition-all duration-150 ease-linear border rounded border-slate-200 text-slate-500 disabled:cursor-auto disabled:text-slate-400">
						                이전
						            </a>
						        </c:if>
						
						        <!-- 페이지 번호 -->
						        <ul class="flex gap-2 mb-0">
						            <c:forEach var="num" begin="1" end="${totalPages}">
						                <c:choose>
						                    <c:when test="${num == currentPage}">
						                        <!-- 현재 페이지 -->
						                        <li class="active">
						                            <span class="inline-flex items-center justify-center bg-custom-500 border border-custom-500 text-white h-8 px-3 rounded">
						                                ${num}
						                            </span>
						                        </li>
						                    </c:when>
						                    <c:otherwise>
						                        <!-- 다른 페이지 -->
						                        <li>
						                            <a class="inline-flex items-center justify-center bg-white border border-slate-200 text-slate-500 hover:text-custom-500 hover:bg-custom-50 h-8 px-3 rounded"
						                               href="?currentPage=${num}&pageSize=${pageSize}">
						                                ${num}
						                            </a>
						                        </li>
						                    </c:otherwise>
						                </c:choose>
						            </c:forEach>
						        </ul>
						
						        <!-- 다음 페이지 -->
						        <c:if test="${currentPage < totalPages}">
						            <a class="inline-flex items-center justify-center bg-white h-8 px-3 transition-all duration-150 ease-linear border rounded border-slate-200 text-slate-500 hover:text-custom-500 hover:bg-custom-50 focus:bg-custom-50 focus:text-custom-500"
						               href="?currentPage=${currentPage + 1}&pageSize=${pageSize}">
						                다음
						            </a>
						        </c:if>
						        <c:if test="${currentPage >= totalPages}">
						            <a class="inline-flex items-center justify-center bg-white h-8 px-3 transition-all duration-150 ease-linear border rounded border-slate-200 text-slate-500 disabled:cursor-auto disabled:text-slate-400">
						                다음
						            </a>
						        </c:if>
						    </div>
						</div>
						<!-- 페이징 끝 -->
		            </div>
		          </div>
               <!-- MAIN END -->
        	</div>
        </div>
        <!-- End Page-content -->
        
		<!-- Start Footer -->
        <footer class="ltr:md:left-vertical-menu rtl:md:right-vertical-menu group-data-[sidebar-size=md]:ltr:md:left-vertical-menu-md group-data-[sidebar-size=md]:rtl:md:right-vertical-menu-md group-data-[sidebar-size=sm]:ltr:md:left-vertical-menu-sm group-data-[sidebar-size=sm]:rtl:md:right-vertical-menu-sm absolute right-0 bottom-0 px-4 h-14 group-data-[layout=horizontal]:ltr:left-0  group-data-[layout=horizontal]:rtl:right-0 left-0 border-t py-3 flex items-center dark:border-zink-600">
        	<c:import url="/WEB-INF/view/inc/footer.jsp"></c:import>    
        </footer>
        <!-- End Footer -->
    </div>
</div>
<!-- End Main Content -->
<c:import url="/WEB-INF/view/inc/customizerButton.jsp"></c:import>

<script src='${pageContext.request.contextPath}/assets/libs/choices.js/public/assets/scripts/choices.min.js'></script>
<script src="${pageContext.request.contextPath}/assets/libs/@popperjs/core/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/tippy.js/tippy-bundle.umd.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/simplebar/simplebar.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/prismjs/prism.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/lucide/umd/lucide.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/tailwick.bundle.js"></script>
<!--product Grid init js-->
<script src="${pageContext.request.contextPath}/assets/js/pages/apps-ecommerce-product-grid.init.js"></script>
<!-- App js -->
<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
<script>
	
	// 삭제 버튼
	$('#deleteRoom').on('click', function(e) {
	    e.preventDefault();
	    
	    if(confirm("정말 삭제 하시겠습니까?")) {
	        alert('삭제 성공하였습니다.');
	        window.location.href = $(this).attr('href');
	    }
	});
	});
</script>

</body>

</html>