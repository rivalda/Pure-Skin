<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kryefaqja.aspx.cs" Inherits="Kryefaqja" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            left: -15px;
            top: 0px;
            width: 1848px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" />

    <div class="coverGif">

<img src="img/cover.gif" width="100%" />

 </div>

    <div class="markat">
        <h1 class="auto-style1"><span>Markat tona</span></h1>
    </div>

    <div class="carosuel">

        <div class="imazhet">

                        <div class="owl-carousel owl-theme">
                <div class="item">
                    <img src="img/avene.jpg" />
                </div>
                <div class="item">
                    <img src="img/bioderma.jpg" />
                </div>
                <div class="item">
                    <img src="img/jowae.jpg" />
                </div>
                <div class="item">
                    <img src="img/La_Roche-Posay_logo_small.png" />
                </div>
                <div class="item">
                    <img src="img/lierac.jpg" />
                </div>
                <div class="item">
                    <img src="img/rilastil.jpg" />
                </div>
                <div class="item">
                  <img src="img/skincode.jpg" />
                </div>
                <div class="item">
                   <img src="img/vichy.jpg" />
                </div>
            </div>

        </div>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"></script>

<script type="text/javascript">

 $('.owl-carousel').owlCarousel({
loop:true, //mos te kete ndalim
margin:10, //hapesira
nav: false, //mos te kete shigjetat para pas
dots: false, //mos te kete pikat para pas
autoplay: true, //ne levizje te vazhdueshme
autoplayTimeout: 1000, //shpejtesia
stagePadding: 50, //gjate levizjes majtas/djathtas te kete pak pjese nga fotoja qe iken/vjen
responsive:{
0:{
items:1
},
600:{
items:3
},
1000:{ //permasat e gjeresise se faqes (gjate ndryshimit te tyre sa foto do te shfaqen)
items:5 //ne menyre qe te shfaqen 5 foto
}
}
})
</script>



    </div>

<br />
    <div class="transporti">
       <img src="img/transporti.jpg" width="1250" />
    </div>

   

</asp:Content>


