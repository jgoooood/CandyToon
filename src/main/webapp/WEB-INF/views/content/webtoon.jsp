<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CANDYTOON</title>
        <link rel="stylesheet" href="/resources/CSS/reset.css">
        <link rel="stylesheet" href="/resources/CSS/webtoon.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bungee&display=swap" rel="stylesheet">
    </head>
    <body>
        <!-- 헤더 -->
        <header>
            <div id="logo">
                <a href="./index.jsp"><p>CANDY TOON</p></a>
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
                <div  id="customerCenter">
                    <ul>
                        <li><a href="/member/login.jsp">로그인</a></li>
                        <li><a href="/member/register.jsp">회원가입</a></li>
                        <li><a href="/customerCenter/notice.jsp">고객센터</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- 웹툰페이지 -->
        <main>
            <div id="detailHeader">
                <div id="detailContent">
                    <div id="detailCover">
                        <img src="/resources/images/cover/total-top5/totalTop1.png" alt="상수리">
                    </div>
                    <div id="detailInfo">
                        <h1>상수리나무 아래</h1>
                        <span class="writerInfo">글</span>
                        <span>서말,나무</span><span> · </span>
                        <span class="writerInfo">그림</span>
                        <span>P</span><br>
                        <span class="genre">장르</span>
                        <span>로맨스</span><br>
                        <p>총 64화 (미완결)</p>
                        <p>매주 토요일 연재</p><br>
                        <button id="likeBtn" onclick="likeBtn()"><h3>관심작품등록</h3></button>
                    </div>
                </div>
                <div id="detailStory">
                    <br><h2>작품줄거리</h2> <br>
                    웹소설 『상수리나무 아래』를 아름다운 판타지 로맨스 웹툰으로 재탄생! <br><br>
                    말더듬이 공작 영애 맥시밀리언은 아버지의 강요로 비천한 출생의 기사와 결혼하게 된다. <br>
                    결혼식을 치르고 원정을 떠나간 남편은 3년 후, <br>
                    전 대륙에 명성을 떨치는 기사가 되어 돌아오는데…. <br>
                </div>
            </div>    

            <div id="buyOpt">
                <ul>
                    <li id="lent"><a href="#">대여</a></li>
                    <li id="buy"><a href="#">소장</a></li>
                </ul>
            </div>
            <div id="option">
                <div id="listOpt">
                    <ul>
                        <li><input type="checkbox">  전체선택</li>
                        <li>최신화부터</li>
                        <li>1화부터</li>
                    </ul>
                </div>
                <div id="selectBtn">
                    <button>선택구매</button>
                </div>
            </div>
            <div id="list">
                <ul>
                    <div class="listDetail">
                        <li>
                            <div class="listBox"><input type="checkbox"></div>
                            <div class="thumbnail">
                                <img src="/resources/images/webtoonThumbnail/1.webp" alt="1화">
                            </div>
                            <div class="series">
                                <p class="title">상수리나무 아래 1화</p>
                                <p class="date">2020.08.31</p>
                            </div>
                            <div class="btn">
                                <button class="freeBtn">무료</button>
                                <!-- <button class="boughtBtn">소장중</button>
                                <button class="buyBtn">구매</button> -->
                            </div>
                        </li>
                    </div>
                    <div class="listDetail">
                        <li>
                            <div class="listBox"><input type="checkbox"></div>
                            <div class="thumbnail">
                                <img src="/resources/images/webtoonThumbnail/2.webp" alt="1화">
                            </div>
                            <div class="series">
                                <p class="title">상수리나무 아래 2화</p>
                                <p class="date">2020.08.31</p>
                            </div>
                            <div class="btn">
                                <button class="freeBtn">무료</button>
                                <!-- <button class="boughtBtn">소장중</button>
                                <button class="buyBtn">구매</button> -->
                            </div>
                        </li>
                    </div>
                    <div class="listDetail">
                        <li>
                            <div class="listBox"><input type="checkbox"></div>
                            <div class="thumbnail">
                                <img src="/resources/images/webtoonThumbnail/3.webp" alt="1화">
                            </div>
                            <div class="series">
                                <p class="title">상수리나무 아래 3화</p>
                                <p class="date">2020.08.31</p>
                            </div>
                            <div class="btn">
                                <button class="freeBtn">무료</button>
                                <!-- <button class="boughtBtn">소장중</button>
                                <button class="buyBtn">구매</button> -->
                            </div>
                        </li>
                    </div>
                    <div class="listDetail">
                        <li>
                            <div class="listBox"><input type="checkbox"></div>
                            <div class="thumbnail">
                                <img src="/resources/images/webtoonThumbnail/4.webp" alt="1화">
                            </div>
                            <div class="series">
                                <p class="title">상수리나무 아래 4화</p>
                                <p class="date">2020.09.07</p>
                            </div>
                            <div class="btn">
                                <button class="boughtBtn">소장중</button>
                                <!-- <button class="buyBtn">구매</button> -->
                            </div>
                        </li>
                    </div>
                    <div class="listDetail">
                        <li>
                            <div class="listBox"><input type="checkbox"></div>
                            <div class="thumbnail">
                                <img src="/resources/images/webtoonThumbnail/5.webp" alt="1화">
                            </div>
                            <div class="series">
                                <p class="title">상수리나무 아래 5화</p>
                                <p class="date">2020.09.14</p>
                            </div>
                            <div class="btn">
                                <button class="buyBtn">구매</button>
                            </div>
                        </li>
                    </div>
                </ul>
            </div>
            <div id="viewBtn">
                <button id="viewAll">더보기</button>
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