<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CANDYTOON</title>
        <link rel="stylesheet" href="../resources/CSS/reset.css">
        <link rel="stylesheet" href="../resources/CSS/customerCenter/askForm.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bungee&display=swap" rel="stylesheet">
    </head>
    <body>
        <!-- 헤더 -->
        <header>
            <div id="logo">
                <a href="/index.jsp"><p>CANDY TOON</p></a>
            </div>
            <div id="searchArea">
                <div class="search">
                    <input type="text" placeholder="제목/작가로 검색할 수 있습니다.">
                    <!-- <button id="goSearch">검색</button> -->
                    <a href="#"><img src="../resources/images/icons/serch.png" alt="검색"></a>
                </div>
            </div>
            <!-- 네비게이터 -->
            <nav>
                <div id="mainMenu">
                    <ul>
                        <li><a href="../ranking/total.jsp">웹툰랭킹</a></li>
                        <li><a href="../ranking/new.jsp">신작</a></li>
                        <li><a href="../ranking/compleated.jsp">완결</a></li>
                        <li><a href="#">요일</a></li>
                        <li><a href="#">장르</a></li>
                    </ul>
                </div>
                <c:if test="${sessionScope.memberId ne null }">
	                <div  id="customerCenter">
	                    <ul>
	                        <li><a href="/member/logout.do">로그아웃</a></li>
	                        <li><a href="/member/myPage.do?memberId=${memberId }">마이페이지</a></li>
	                        <li><a href="/customerCenter/notice.do">고객센터</a></li>
	                    </ul>
	                </div>
                </c:if>
                <c:if test="${sessionScope.memberId eq null }">
	                <div  id="customerCenter">
	                    <ul>
	                        <li><a href="/member/login.do">로그인</a></li>
	                        <li><a href="/member/register.do">회원가입</a></li>
	                        <li><a href="/customerCenter/notice.do">고객센터</a></li>
	                    </ul>
	                </div>
                </c:if>
            </nav>
        </header>
        <!-- 메인 -->
        <main>
            <form action="/ask/list.do" method="post">
		        <c:if test="${sessionScope.memberId ne null }">
		            <h1>이용문의 등록</h1>
		            <div id="userAsk">
		                <table>
		                    <tr>
		                        <th id="askType">문의유형</th>
		                        <td>
		                            <select id="selectType" name="askCategory" required>
		                                <option value="결제/환불">결제/환불</option>
		                                <option value="사이트이용">사이트이용</option>
		                                <option value="이벤트">이벤트</option>
		                                <option value="기타">기타</option>
		                            </select>
		                        </td>
		                    </tr>
		                    <tr id="askTitle">
		                        <th>제목</th>
		                        <td><input type="text" name="askSubject" required placeholder="제목을 입력해주세요."></td>
		                    </tr>
		                    <tr id="askContent">
		                        <th>내용</th>
		                        <td><textarea name="askContent" placeholder="문의하실 내용을 입력해주세요." required></textarea></td>
		                    </tr>
		                </table>
		            </div>
		            <div>
		                <button id="askBtn" type="submit">등록하기</button>
		            </div>
		        </c:if>
	        </form>
        </main>
        <!-- 푸터 -->
        <footer>
            <ul>
                <li>상호 : (주)캔디툰</li>
                <li>사업자등록번호 : 123-45-67890</li>
                <li>대표전화 : 1234-5678</li>
                <li>주소 : 서울특별시 중구 캔디로 123 캔디빌딩 1층</li>
            </ul>    
        </footer>
		<!--  
        <script>
            document.querySelector("#askBtn").addEventListener("click", function(){
                alert("이용문의 등록이 완료되었습니다.");
                location.replace("./ask.jsp");
            })
        </script>-->
    </body>
</html>