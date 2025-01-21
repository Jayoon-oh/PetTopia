<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" class="light scroll-smooth group" data-layout="vertical" data-sidebar="light" data-sidebar-size="lg" data-mode="light" data-topbar="light" data-skin="default" data-navbar="sticky" data-content="fluid" dir="ltr">

<head>
	<meta charset="utf-8">
    <title>PetTopia</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta content="Minimal Admin & Dashboard Template" name="description">
    <meta content="Themesdesign" name="author">
    <!-- App favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/pettopia_favicon.ico">
    <!-- Layout config Js -->
    <script src="${pageContext.request.contextPath}/assets/js/layout.js"></script>
    <!-- Tailwind CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/tailwind2.css">
	<!-- f -->
</head>
<style>
	.listHeader {width: 100%; height: 50px; }
	
	.listHeader .selectBox{width: 8%;float: left; margin-right: 0.5%;}
	.listHeader .selectBox option:hover{background-color: #666;}
	
	
	.listHeader .searchBox {max-width: 35%; min-width: 20%; float: left;}
	.listHeader .searchBox input {}
	.listHeader .searchBox btn {  }
	.listHeader .addBox {float: right;}
	
	.boardList {width: 100%;}
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
                       <h5 class="text-16">사내 게시판</h5>
                    </div>
                     <ul class="flex items-center gap-2 text-sm font-normal shrink-0">
                        <li class="relative before:content-['\ea54'] before:font-remix ltr:before:-right-1 rtl:before:-left-1  before:absolute before:text-[18px] before:-top-[3px] ltr:pr-4 rtl:pl-4 before:text-slate-400 dark:text-zink-200">
                            <a href="#!" class="text-slate-400 dark:text-zink-200">사내 게시판</a>
                        </li>
                        <li class="text-slate-700 dark:text-zink-100">
                            게시판 리스트
                        </li>
                    </ul>
                </div>
                <!-- Main content -->
                
                 <div class="card" >
                	 <div class="card-body" >
                	 <!-- listHeader 시작 -->
                	 	<div class="listHeader">
                	 	<!-- 카테고리별 분류 기능 -->
                	 	<div class="selectBox">
               	 			<form action="${pageContext.request.contextPath}/board/boardList" method="get" id="formCategory">
							    <select id="boardCategory" name="category"  class="form-select border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200">
									<option value="ALL" ${boardCategory == 'ALL' ? 'selected' : ''}>전체</option>
									<option value="SG" ${boardCategory == 'SG' ? 'selected' : ''}>건의사항</option>
									<option value="DS" ${boardCategory == 'DS' ? 'selected' : ''}>토론</option>
									<option value="CT" ${boardCategory == 'CT' ? 'selected' : ''}>잡답</option>
									<option value="IN" ${boardCategory == 'IN' ? 'selected' : ''}>정보</option>
									<option value="QA" ${boardCategory == 'QA' ? 'selected' : ''}>질문</option>
									<option value="CP" ${boardCategory == 'CP' ? 'selected' : ''}>칭찬</option>
								</select>
							</form>
							
							
               	 		</div>
	                	<!-- 검색 기능 -->
	                	 	<div class="searchBox">
		                	 	<div class="relative">
									<form method="get" action="${pageContext.request.contextPath}/board/boardList" >
										<input type="text" id="searchBoard" name="searchBoard" value="" class="ltr:pl-8 search form-input border-slate-200 focus:outline-none focus:border-custom-500 placeholder:text-slate-400" placeholder="검색어를 입력하세요" autocomplete="off">
	                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" data-lucide="search" class="lucide lucide-search inline-block size-4 absolute ltr:left-2.5 top-2.5 text-slate-500 fill-slate-100" ><circle cx="11" cy="11" r="8"></circle><path d="m21 21-4.3-4.3"></path></svg>
	                                </form>
								</div>
							</div>
	                	<!-- 글 작성 기능 --> 	
	                	 	<div class="ltr:lg:text-right rtl:lg:text-left addBox">
	                        	<a href="${pageContext.request.contextPath}/board/addBoard" type="button" class="text-white btn bg-custom-500 border-custom-500 hover:text-white hover:bg-custom-600 hover:border-custom-600 focus:text-white focus:bg-custom-600 focus:border-custom-600 focus:ring focus:ring-custom-100 active:text-white active:bg-custom-600 active:border-custom-600 active:ring active:ring-custom-100 dark:ring-custom-400/20"><i data-lucide="plus" class="inline-block size-4"></i> <span class="align-middle">글 작성</span></a>
	                        </div>
                	 	</div>
                	 	<!-- listHeader 종료 -->
                	 	
                	 
                	 <!-- boardList 시작 -->
				<div class="boardList overflow-x-auto">
				    <table class="w-full whitespace-nowrap">
				        <thead class="bg-slate-100">
				            <tr>
				                <th class="px-3.5 py-3 font-semibold border-b border-slate-200 ltr:text-center" style="width:10%;">글 번호</th>
				                <th class="px-3.5 py-3 font-semibold border-b border-slate-200 ltr:text-center" style="width:40%;">제목</th>
				                <th class="px-3.5 py-3 font-semibold border-b border-slate-200 ltr:text-center" style="width:15%;">조회수</th>
				                <th class="px-3.5 py-3 font-semibold border-b border-slate-200 ltr:text-center" style="width:15%;">추천</th>
				                <th class="px-3.5 py-3 font-semibold border-b border-slate-200 ltr:text-center" style="width:20%;">작성일</th>
				            </tr>
				        </thead>
				
				
				            <c:forEach var="bl" items="${boardList}">
				                <tr>
				                    <td class="px-3.5 py-3 border-y border-slate-200 text-center">${bl.boardNo}</td>
				                    <td class="px-3.5 py-3 border-y border-slate-200 text-center">
				                        <a href="${pageContext.request.contextPath}/board/getBoardOne?boardNo=${bl.boardNo}">[${bl.boardHeader}]&nbsp;${bl.boardTitle}
				                            <!-- 댓글 수가 0이 아니면 댓글 수 표시 -->
				                            <c:if test="${bl.commentCnt != 0}">
				                                &nbsp;[${bl.commentCnt}]
				                            </c:if>
				                        </a>
				                    </td>
				                    <td class="px-3.5 py-3 border-y border-slate-200 text-center">${bl.boardView}</td>
				                    <td class="px-3.5 py-3 border-y border-slate-200 text-center">${bl.boardLike}</td>
				                    <td class="px-3.5 py-3 border-y border-slate-200 text-center">${bl.createDate}</td>
				                </tr>
				            </c:forEach>
				       
				    </table>
				    
				    <div class="pagingBox">
				    	<c:if test="${currentPage > 5}">
				    		<a href="${pageContext.request.contextPath}/board/boardList?currentPage=${currentPage-5}">[&lt;&lt;]</a>
			    		</c:if>
			    		<c:forEach var="num" begin="${startPagingNum}" end="${endPagingNum}">
			    			<c:if test="${num == currentPage}">
			    				${num}&nbsp;
			    			</c:if>
			    			<c:if test="${num != currentPage}">
								<a href="${pageContext.request.contextPath}/board/boardList?currentPage=${num}">${num}</a>
								&nbsp;
							</c:if>	
			    		</c:forEach>
			    		<c:if test="${endPagingNum < lastPage}">
							<a href="${pageContext.request.contextPath}/board/boardList?currentPage=${currentPage+5}">
								[&gt;&gt;]
							</a>				
						</c:if>	
				    </div>
				</div>
				<!-- boardList 종료 -->
			                	 
			            <!-- Start Footer -->
					        <footer class="ltr:md:left-vertical-menu rtl:md:right-vertical-menu group-data-[sidebar-size=md]:ltr:md:left-vertical-menu-md group-data-[sidebar-size=md]:rtl:md:right-vertical-menu-md group-data-[sidebar-size=sm]:ltr:md:left-vertical-menu-sm group-data-[sidebar-size=sm]:rtl:md:right-vertical-menu-sm absolute right-0 bottom-0 px-4 h-14 group-data-[layout=horizontal]:ltr:left-0  group-data-[layout=horizontal]:rtl:right-0 left-0 border-t py-3 flex items-center dark:border-zink-600">
					        	<c:import url="/WEB-INF/view/inc/footer.jsp"></c:import>    
					        </footer>
				        <!-- End Footer -->
                	 </div>
               	 </div> 
            </div>
            
            <!-- container-fluid -->
        </div>
        <!-- End Page-content -->

		
       
        
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
<!-- jquery -->
<script src="${pageContext.request.contextPath}/assets/js/datatables/jquery-3.7.0.js"></script>
<!--dashboard ecommerce init js-->
<script src="${pageContext.request.contextPath}/assets/js/pages/dashboards-ecommerce.init.js"></script>
<!-- App js -->
<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
<script>
$(document).ready(function(){
    //console.log($('#boardCategory')); 
    $('#boardCategory').change(function(){
        $('#formCategory').submit();
        
		
    });
});
</script>
</body>

</html>