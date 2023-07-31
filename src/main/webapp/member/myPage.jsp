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
        <link rel="stylesheet" href="../resources/CSS/member/myPage.css">
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
                <div  id="customerCenter">
                    <ul>
                        <li><a href="/member/logout.do">로그아웃</a></li>
                        <li><a href="/member/myPage.jsp">마이페이지</a></li>
                        <li><a href="/customerCenter/notice.jsp">고객센터</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- 메인 -->
        <main>
            <section id="leftSection">
                <div id="userBox">
                    <div><img src="../resources/images/icons/book.png" alt="서재"></div>
                    <h1>보관함</h1>
                    <ul>
                        <li>소장작품</li>
                        <li>최근 조회한 작품</li>
                        <li>관심 작품</li>
                    </ul>
                </div>
                <div id="userPay">
                    <div><img src="../resources/images/icons/credit-card.png" alt="결제"></div>
                    <h1>결제</h1>
                    <ul>
                        <li>결제내역</li>
                        <li>캔디충전</li>
                        <li>충전내역</li>
                    </ul>
                </div>
                <div id="userInfo">
                    <div><img src="../resources/images/icons/user.png" alt="개인"></div>
                    <h1>개인</h1>
                    <ul>
                        <li>댓글관리</li>
                        <li>회원정보</li>
                    </ul>
                </div>
            </section>
            <section id="rightSection">
                <div id="topArea">
                    <div id="userAccount">
                        <div><img src="../resources/images/icons/account.png" alt="계정"></div>
                        <div>
                       		<p>candy</p>
                            <p>candy@member.com</p>
                        </div>
                    </div>
                    <div id="userCandy">
                        <div><img src="../resources/images/icons/candy.png" alt="캔디"></div>
                        <div id="candy">
                            <span>보유캔디</span>
                            <span id="have">50개</span>
                        </div>
                    </div>
                </div>
                <div id="bottomArea">
                        <ul>
                            <li><p>소장 작품<br><span class="count">35</span></p></li>
                            <li><p>최근 조회한 작품<br><span class="count">7</span></p></li>
                            <li><p>관심작품<br><span class="count">5</span></p></li>
                        </ul>
                </div>
            </section>
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