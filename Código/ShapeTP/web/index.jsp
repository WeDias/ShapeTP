<%@page import="org.apache.catalina.User"%>
<%@page import="br.com.fatec.UserInterface"%>
<%@page import="br.com.fatec.DataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String submit = request.getParameter("shptopost");
if(submit != null){
    int res = UserInterface.optionS(submit);
    if(res == 1)
        response.sendRedirect("op/su/sucess.html");
    else if(res == 0)
        response.sendRedirect("op/er/error.html");
}
String submit2 = request.getParameter("posttoshp");
UserInterface.optionP(submit2);
%>
<!DOCTYPE html>
<html class="u-responsive-lg">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="keywords" content="ShapeTP">
        <meta name="description" content="">
        <meta name="page_type" content="np-template-header-footer-from-plugin">
        <title>ShapeTP</title>
        <link rel="stylesheet" href="nicepage.css" media="screen">
        <link rel="stylesheet" href="Página-1.css" media="screen">
        <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
        <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
        <meta name="generator" content="Nicepage 2.24.4, nicepage.com">
        <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
        <script type="application/ld+json">{
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "",
            "url": "index.html"
            }
        </script>
        <meta property="og:title" content="Página 1">
        <meta property="og:type" content="website">
        <meta name="theme-color" content="#478ac9">
        <link rel="canonical" href="index.html">
        <meta property="og:url" content="index.html">
    </head>
    <body data-home-page="Página-1.html" data-home-page-title="Página 1" class="u-body">
        <header class="u-clearfix u-header u-white u-header" id="sec-ac61">
            <img src="images/Logo_Visiona.png" alt="" class="u-image u-image-default u-image-1" data-image-width="3133" data-image-height="1003" data-href="https://nicepage.com">
            <div class="u-border-radius-50 u-custom-color-1 u-shape u-shape-round u-shape-1"></div>
            <div class="u-custom-color-1 u-expanded-width u-shape u-shape-rectangle u-shape-2"></div>
        </header>
        <section class="u-align-center u-clearfix u-grey-5 u-section-1" id="sec-57ea">
            <div class="u-clearfix u-sheet u-sheet-1">
                <div class="u-expanded-width u-tab-links-align-justify u-tabs u-tabs-1">
                    <ul class="u-spacing-0 u-tab-list u-unstyled" role="tablist">
                        <li class="u-tab-item" role="presentation">
                            <a class="u-active-white u-button-style u-grey-5 u-hover-custom-color-1 u-tab-link u-text-active-custom-color-1 u-text-body-color u-text-hover-white u-tab-link-1" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="false">Shapefile Para PostgreSQL</a>
                        </li>
                        <li class="u-tab-item" role="presentation">
                            <a class="u-active-white u-button-style u-grey-5 u-hover-custom-color-1 u-tab-link u-text-active-custom-color-1 u-text-body-color u-text-hover-white u-tab-link-2 active" id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7" aria-selected="true">PostgreSQL Para Shapefile<br>
                            </a>
                        </li>
                    </ul>
                    <div class="u-tab-content">
                        <div class="u-align-justify u-container-style u-tab-pane u-white u-tab-pane-1" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
                            <div class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-container-layout-1">
                                <p class="u-text u-text-1">Para converter um Shapefile para o nosso banco de dados, basta apenas clicar em converter e selecionar o arquivo Shapefile.</p>
                                <span class="u-icon u-icon-circle u-text-black u-icon-1">
                                    <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style="">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-5ff4"></use>
                                    </svg>
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" id="svg-5ff4">
                                        <path d="M56,400H200a40.045,40.045,0,0,0,40-40V184a8,8,0,0,0-2.343-5.657l-64-64A8,8,0,0,0,168,112H56a40.045,40.045,0,0,0-40,40V360A40.045,40.045,0,0,0,56,400ZM176,139.313,212.687,176H200a24.028,24.028,0,0,1-24-24ZM32,152a24.028,24.028,0,0,1,24-24H160v24a40.045,40.045,0,0,0,40,40h24V360a24.028,24.028,0,0,1-24,24H56a24.028,24.028,0,0,1-24-24Z"></path>
                                        <path d="M429.657,114.343A8,8,0,0,0,424,112H312a40.045,40.045,0,0,0-40,40V360a40.045,40.045,0,0,0,40,40H456a40.045,40.045,0,0,0,40-40V184a8,8,0,0,0-2.343-5.657ZM432,139.313,468.687,176H456a24.028,24.028,0,0,1-24-24ZM480,360a24.028,24.028,0,0,1-24,24H312a24.028,24.028,0,0,1-24-24V152a24.028,24.028,0,0,1,24-24H416v24a40.045,40.045,0,0,0,40,40h24Z"></path>
                                        <circle cx="352" cy="256" r="8"></circle>
                                        <circle cx="384" cy="256" r="8"></circle>
                                        <circle cx="416" cy="256" r="8"></circle>
                                        <path d="M328,72a8,8,0,0,0,8,8h40a8,8,0,0,0,8-8V32a8,8,0,0,0-16,0V47.573c-5.939-3.987-13.93-7.884-24.617-11.447C319.924,28.307,288.891,24,256,24s-63.924,4.307-87.383,12.126C135.047,47.316,128,61.811,128,72a8,8,0,0,0,16,0c0-13.048,43.631-32,112-32,55.231,0,94.312,12.368,107.294,24H336A8,8,0,0,0,328,72Z"></path>
                                        <path d="M376,432a8,8,0,0,0-8,8c0,13.048-43.631,32-112,32-55.231,0-94.312-12.368-107.294-24H176a8,8,0,0,0,0-16H136a8,8,0,0,0-8,8v40a8,8,0,0,0,16,0V464.427c5.939,3.987,13.93,7.884,24.617,11.447C192.076,483.693,223.109,488,256,488s63.924-4.307,87.383-12.126C376.953,464.684,384,450.189,384,440A8,8,0,0,0,376,432Z"></path>
                                        <path d="M120,240h64a8,8,0,0,0,0-16H120a8,8,0,0,0,0,16Z"></path>
                                        <path d="M72,288h64a8,8,0,0,0,0-16H72a8,8,0,0,0,0,16Z"></path>
                                        <path d="M184,320H136a8,8,0,0,0,0,16h48a8,8,0,0,0,0-16Z"></path>
                                        <path d="M72,240H88a8,8,0,0,0,0-16H72a8,8,0,0,0,0,16Z"></path>
                                        <path d="M184,272H168a8,8,0,0,0,0,16h16a8,8,0,0,0,0-16Z"></path>
                                        <path d="M72,336h32a8,8,0,0,0,0-16H72a8,8,0,0,0,0,16Z"></path>
                                        <path d="M72,192h32a8,8,0,0,0,0-16H72a8,8,0,0,0,0,16Z"></path>
                                    </svg>
                                </span>
                                <a href="?shptopost=true" class="u-btn u-button-style u-grey-5 u-hover-custom-color-1 u-btn-1">Converter</a>
                            </div>
                        </div>
                        <div class="u-align-justify u-container-style u-tab-pane u-white u-tab-pane-2 u-tab-active" id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
                            <div class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-container-layout-2">
                                <p class="u-text u-text-2">Para converter uma de nossas tabelas do banco de dados, basta apenas clicar em selecionar tabela e em seguida converter e selecionar onde devemos salvar o Shapefile.</p>
                                <span class="u-icon u-icon-circle u-text-black u-icon-2">
                                    <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style="">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-ee40"></use>
                                    </svg>
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" id="svg-ee40">
                                        <path d="M56,400H200a40.045,40.045,0,0,0,40-40V184a8,8,0,0,0-2.343-5.657l-64-64A8,8,0,0,0,168,112H56a40.045,40.045,0,0,0-40,40V360A40.045,40.045,0,0,0,56,400ZM176,139.313,212.687,176H200a24.028,24.028,0,0,1-24-24ZM32,152a24.028,24.028,0,0,1,24-24H160v24a40.045,40.045,0,0,0,40,40h24V360a24.028,24.028,0,0,1-24,24H56a24.028,24.028,0,0,1-24-24Z"></path>
                                        <path d="M429.657,114.343A8,8,0,0,0,424,112H312a40.045,40.045,0,0,0-40,40V360a40.045,40.045,0,0,0,40,40H456a40.045,40.045,0,0,0,40-40V184a8,8,0,0,0-2.343-5.657ZM432,139.313,468.687,176H456a24.028,24.028,0,0,1-24-24ZM480,360a24.028,24.028,0,0,1-24,24H312a24.028,24.028,0,0,1-24-24V152a24.028,24.028,0,0,1,24-24H416v24a40.045,40.045,0,0,0,40,40h24Z"></path>
                                        <circle cx="352" cy="256" r="8"></circle>
                                        <circle cx="384" cy="256" r="8"></circle>
                                        <circle cx="416" cy="256" r="8"></circle>
                                        <path d="M328,72a8,8,0,0,0,8,8h40a8,8,0,0,0,8-8V32a8,8,0,0,0-16,0V47.573c-5.939-3.987-13.93-7.884-24.617-11.447C319.924,28.307,288.891,24,256,24s-63.924,4.307-87.383,12.126C135.047,47.316,128,61.811,128,72a8,8,0,0,0,16,0c0-13.048,43.631-32,112-32,55.231,0,94.312,12.368,107.294,24H336A8,8,0,0,0,328,72Z"></path>
                                        <path d="M376,432a8,8,0,0,0-8,8c0,13.048-43.631,32-112,32-55.231,0-94.312-12.368-107.294-24H176a8,8,0,0,0,0-16H136a8,8,0,0,0-8,8v40a8,8,0,0,0,16,0V464.427c5.939,3.987,13.93,7.884,24.617,11.447C192.076,483.693,223.109,488,256,488s63.924-4.307,87.383-12.126C376.953,464.684,384,450.189,384,440A8,8,0,0,0,376,432Z"></path>
                                        <path d="M120,240h64a8,8,0,0,0,0-16H120a8,8,0,0,0,0,16Z"></path>
                                        <path d="M72,288h64a8,8,0,0,0,0-16H72a8,8,0,0,0,0,16Z"></path>
                                        <path d="M184,320H136a8,8,0,0,0,0,16h48a8,8,0,0,0,0-16Z"></path>
                                        <path d="M72,240H88a8,8,0,0,0,0-16H72a8,8,0,0,0,0,16Z"></path>
                                        <path d="M184,272H168a8,8,0,0,0,0,16h16a8,8,0,0,0,0-16Z"></path>
                                        <path d="M72,336h32a8,8,0,0,0,0-16H72a8,8,0,0,0,0,16Z"></path>
                                        <path d="M72,192h32a8,8,0,0,0,0-16H72a8,8,0,0,0,0,16Z"></path>
                                    </svg>
                                </span>
                                <form action="/ShapeTP" id="formtab" style="
                                    width: 400px;
                                    left: 270px;
                                    bottom: 33px;
                                    top: 20px;
                                    ">
                                    <label for="tab">SELECIONAR: </label>
                                    <select id="tab" name="posttoshp">
                                    <%
                                        for(String tab: UserInterface.tables()){
                                            String opt = String.format("<option value=\"%s\">%s</option>", tab, tab);
                                            out.print(opt);
                                        }
                                    %>
                                    </select>
                                    <input type="submit" value="CONVERTER" style="
                                        width: 416px;
                                        margin-left: 0px;
                                        height: 36px;
                                        margin-top: 15px;
                                        margin-right: 0px;
                                        ">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-2f79">
            <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
                <p class="u-small-text u-text u-text-variant u-text-1">Feito por alunos da Fatec-SJC</p>
                <span class="u-icon u-icon-circle u-text-black u-icon-1">
                    <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 24 24" style="">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-86b0"></use>
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 24 24" id="svg-86b0" style="">
                        <path d="m12 .5c-6.63 0-12 5.28-12 11.792 0 5.211 3.438 9.63 8.205 11.188.6.111.82-.254.82-.567 0-.28-.01-1.022-.015-2.005-3.338.711-4.042-1.582-4.042-1.582-.546-1.361-1.335-1.725-1.335-1.725-1.087-.731.084-.716.084-.716 1.205.082 1.838 1.215 1.838 1.215 1.07 1.803 2.809 1.282 3.495.981.108-.763.417-1.282.76-1.577-2.665-.295-5.466-1.309-5.466-5.827 0-1.287.465-2.339 1.235-3.164-.135-.298-.54-1.497.105-3.121 0 0 1.005-.316 3.3 1.209.96-.262 1.98-.392 3-.398 1.02.006 2.04.136 3 .398 2.28-1.525 3.285-1.209 3.285-1.209.645 1.624.24 2.823.12 3.121.765.825 1.23 1.877 1.23 3.164 0 4.53-2.805 5.527-5.475 5.817.42.354.81 1.077.81 2.182 0 1.578-.015 2.846-.015 3.229 0 .309.21.678.825.56 4.801-1.548 8.236-5.97 8.236-11.173 0-6.512-5.373-11.792-12-11.792z" fill="currentColor"></path>
                    </svg>
                </span>
                <p class="u-text u-text-default u-text-2">
                    <a class="u-btn u-button-style u-none u-text-palette-1-base u-btn-1" href="https://github.com/WeDias/ShapeTP">Projeto Integrador</a>
                </p>
            </div>
        </footer>
    </body>
</html>