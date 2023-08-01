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
        <link rel="stylesheet" href="../resources/CSS/customerCenter/FAQ.css">
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
        	<c:if test="${sessionScope.memberId ne null }">
	            <div id="center">
	                <div id = "centerMenu">
	                    <ul>
	                        <li><a href="/customerCenter/notice.do">공지사항</a></li>
	                        <li><a href="/fnq/list.do">FAQ</a></li>
	                        <li><a href="/ask/list.do">1:1문의</a></li>
	                    </ul>
	                </div>
	                <div id="centerSearch">
	                    <input type="search" placeholder="궁금한 점을 검색해 보세요.">
	                    <img src="../resources/images/icons/centerSearch.png" alt="검색">
	                </div>
	            </div>
            </c:if>
            <c:if test="${sessionScope.memberId eq null }">
            	<div id="center">
	                <div id = "centerMenu">
	                    <ul>
	                        <li><a href="/customerCenter/notice.do">공지사항</a></li>
	                        <li><a href="/fnq/list.do">FAQ</a></li>
	                    </ul>
	                </div>
	                <div id="centerSearch">
	                    <input type="search" placeholder="궁금한 점을 검색해 보세요.">
	                    <img src="../resources/images/icons/centerSearch.png" alt="검색">
	                </div>
	            </div>
            </c:if>
	            <div id = "FAQ">
	                <table>
	                    <tr>
	                        <th>분류</th>
	                        <th>제목</th>
	                        <th>등록일</th>
	                    </tr>
	                    <tr>
	                        <td>회원계정</td>
	                        <td><a href="#">아이디, 비밀번호 ID/PW 찾기</a></td>
	                        <td>2023.05.01</td>
	                    </tr>
	                    <tr>
	                        <td>컨텐츠이용</td>
	                        <td><a href="#">작품 영구삭제 방법</a></td>
	                        <td>2023.02.05</td>
	                    </tr>
	                    <tr>
	                        <td>이벤트</td>
	                        <td><a href="#">출석체크 이벤트 유의사항</a></td>
	                        <td>2023.01.01</td>
	                    </tr>
	                    <tr>
	                        <td>환불</td>
	                        <td><a href="#">캔디(캐시) 충전 환불</a></td>
	                        <td>2022.12.01</td>
	                    </tr>
	                    <tr>
	                        <td>회원계정</td>
	                        <td><a href="#">회원탈퇴 방법</a></td>
	                        <td>2021.01.01</td>
	                    </tr>
	                </table>
	            </div>
	            <div id ="pages">
	                <ul>
	                    <li>1</li>
	                    <li>2</li>
	                    <li>3</li>
	                    <li>4</li>
	                </ul>
	            </div>
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
    </body>
</html>