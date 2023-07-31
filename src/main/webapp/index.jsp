<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CANDY TOON</title>
        <link rel="stylesheet" href="/resources/CSS/reset.css">
        <link rel="stylesheet" href="/resources/CSS/index.css">
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
                    <a href="#"><img src="/resources/images/icons/serch.png" alt="검색"></a>
                </div>
            </div>
            <!-- 네비게이터 -->
            <nav>
                <div id="mainMenu">
                    <ul>
                        <li><a href="/ranking/total.jsp">웹툰랭킹</a></li>
                        <li><a href="/ranking/new.jsp">신작</a></li>
                        <li><a href="/ranking/compleated.jsp">완결</a></li>
                        <li><a href="#">요일</a></li>
                        <li><a href="#">장르</a></li>
                    </ul>
                </div>
                <c:if test="${sessionScope.memberId ne null }">
	                <div  id="customerCenter">
	                    <ul>
	                        <li><a href="/member/logout.do">로그아웃</a></li>
	                        <li><a href="/member/myPage.do?memberId=${sessionScope.memberId }">마이페이지</a></li>
	                        <li><a href="/customerCenter/notice.jsp">고객센터</a></li>
	                    </ul>
	                </div>
                </c:if>
                <c:if test="${memberId eq null }">
	                <div  id="customerCenter">
	                    <ul>
	                        <li><a href="/member/login.jsp">로그인</a></li>
	                        <li><a href="/member/register.jsp">회원가입</a></li>
	                        <li><a href="/customerCenter/notice.jsp">고객센터</a></li>
	                    </ul>
	                </div>
                </c:if>
            </nav>
        </header>

        <div class="main_container">
            <!-- 이벤트 배너 -->
            <div id="event">
                <div id="event-left" class="eventClass">
                    <img src="/resources/images/event/event1.png" alt="배너1">
                </div>
                <div id="event-right" class="eventClass">
                    <img src="/resources/images/event/event2.png" alt="배너2">
                    
                </div>
            </div>

            <!-- 메인 -->
            <main>
                <!-- 전체 웹툰 top5 -->
                <section>
                    <div id="total-top5-layer1">
                        <div class="top5-left"><h3>전체 웹툰 TOP5</h3></div>
                        <div class="top5-right"><h3><a href="./ranking/total.jsp">더보기</a></h3></div>
                    </div>
                    <div id="total-top5-layer2">
                        <div id="total-top1" class="top5-layer2">
                            <div class="top5-Cover">
                                <a href="/webtoon.jsp">
                                <img src="/resources/images/cover/total-top5/totalTop1.png" alt="상수리"></a>
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>1</p></div>
                                <div class="top5-info-title"><a href="/webtoon.jsp">상수리나무아래</a></div>
                                <div class="top5-info-writer"><a href="#">서말,나무 / P</a></div>
                            </div>
                        </div>
                        <div id="total-top2" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/total-top5/totalTop2.png" alt="호랑이형님">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>2</p></div>
                                <div class="top5-info-title"><a href="#">호랑이형님</a></div>
                                <div class="top5-info-writer"><a href="#">이상규</a></div>
                            </div>
                        </div>
                        <div id="total-top3" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/total-top5/totalTop3.png" alt="김부장">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>3</p></div>
                                <div class="top5-info-title"><a href="#">김부장</a></div>
                                <div class="top5-info-writer"><a href="#">토이 / 정종택</a></div>
                            </div>
                        </div>
                        <div id="total-top4" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/total-top5/totalTop4.png" alt="마루는강쥐">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>4</p></div>
                                <div class="top5-info-title"><a href="#">마루는 강쥐</a></div>
                                <div class="top5-info-writer"><a href="#">모죠</a></div>
                            </div>
                        </div>
                        <div id="total-top5" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/total-top5/totalTop5.png" alt="나노마신">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>5</p></div>
                                <div class="top5-info-title"><a href="#">나노마신</a></div>
                                <div class="top5-info-writer"><a href="#">한중월야</a></div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- 신작 -->
                <section>
                    <div id="new-top5-layer1">
                        <div class="top5-left"><h3>신작 웹툰 TOP5</h3></div>
                        <div class="top5-right"><h3><a href="./ranking/new.jsp">더보기</a></h3></div>
                    </div>
                    <div id="new-top5-layer2">
                        <div id="new-top1" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/new-top5/newTop1.png" alt="사주헌터">
                                
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>1</p></div>
                                <div class="top5-info-title"><a href="#">F급 사주헌터</a></div>
                                <div class="top5-info-writer"><a href="#">우리/아나민</a></div>
                            </div>
                        </div>
                        <div id="new-top2" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/new-top5/newTop2.png" alt="시간여행자">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>2</p></div>
                                <div class="top5-info-title"><a href="#">시간여행자</a></div>
                                <div class="top5-info-writer"><a href="#">Toma/팬더롤링</a></div>
                            </div>
                        </div>
                        <div id="new-top3" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/new-top5/newTop3.png" alt="고기자">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>3</p></div>
                                <div class="top5-info-title"><a href="#">기자생활</a></div>
                                <div class="top5-info-writer"><a href="#">고기자</a></div>
                            </div>
                        </div>
                        <div id="new-top4" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/new-top5/newTop4.png" alt="궁궐의맹수">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>4</p></div>
                                <div class="top5-info-title"><a href="#">궁궐의 맹수</a></div>
                                <div class="top5-info-writer"><a href="#">정오늘/한연</a></div>
                            </div>
                        </div>
                        <div id="new-top5" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/new-top5/newTop5.png" alt="검의구도자">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>5</p></div>
                                <div class="top5-info-title"><a href="#">검의 구도자</a></div>
                                <div class="top5-info-writer"><a href="#">윤소함/이형석</a></div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- 완결 웹툰 top5 -->
                <section>
                    <div id="compleated-top5-layer1">
                        <div class="top5-left"><h3>완결 웹툰 TOP5</h3></div>
                        <div class="top5-right"><h3><a href="/ranking/compleated.jsp">더보기</a></h3></div>
                    </div>
                    <div id="compleated-top5-layer2">
                        <div id="compleated-top1" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/compleated-top5/compleatedTop1.png" alt="화산귀환">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>1</p></div>
                                <div class="top5-info-title"><a href="#">화산귀환</a></div>
                                <div class="top5-info-writer"><a href="#">LICO/비가</a></div>
                            </div>
                        </div>
                        <div id="compleated-top2" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/compleated-top5/compleatedTop2.png" alt="캐슬">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>2</p></div>
                                <div class="top5-info-title"><a href="#">캐슬</a></div>
                                <div class="top5-info-writer"><a href="#">정연</a></div>
                            </div>
                        </div>
                        <div id="compleated-top3" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/compleated-top5/compleatedTop3.png" alt="별이삼샵">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>3</p></div>
                                <div class="top5-info-title"><a href="#">별이삼샵</a></div>
                                <div class="top5-info-writer"><a href="#">혀노</a></div>
                            </div>
                        </div>
                        <div id="compleated-top4" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/compleated-top5/compleatedTop4.png" alt="치즈인더트랩">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>4</p></div>
                                <div class="top5-info-title"><a href="#">치즈인더트랩</a></div>
                                <div class="top5-info-writer"><a href="#">순끼</a></div>
                            </div>
                        </div>
                        <div id="compleated-top5" class="top5-layer2">
                            <div class="top5-Cover">
                                <img src="/resources/images/cover/compleated-top5/compleatedTop5.png" alt="태시트">
                            </div>
                            <div class="top5-info">
                                <div class="top5-info-rank"><p>5</p></div>
                                <div class="top5-info-title"><a href="#">태시트</a></div>
                                <div class="top5-info-writer"><a href="#">김다찌</a></div>
                            </div>
                        </div>
                    </div>
                </section>
            </main>
        </div>
    
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