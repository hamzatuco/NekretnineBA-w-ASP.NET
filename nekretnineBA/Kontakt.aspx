<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kontakt.aspx.cs" Inherits="WebApplication1.Kontakt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <link rel="shortcut icon" href="slike/fav.png" type="image/x-icon"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Nekretnine BA</title>

    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/colors.css"/>
    <link rel="stylesheet" href="css/responsive.css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"/>

</head>
<body>
    <!-- NAVBAR -->
    <nav id="navbar" class="navbar navbar-expand-sm" style="background-color: #1b2132; top: -2px; left: -3px;">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="slike/logo.png" alt="logo detail" />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-main">
                <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
            </button>
            <div class="collapse navbar-collapse" id="navbar-main">
                <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.html#about">O nama</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="prodaja.html">Prodaja</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#projects">Ponude</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Kontakt.aspx">Kontakt</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Admin.aspx">Admin</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="StanoviDetalji.aspx">Lokacije stanova</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Ucenici.aspx">Ucenici</a>
                    </li>


                   


                </ul>
            </div>
        </div>
    </nav>
    <br />
    <br />
    <br />
    <section id="contact" class="contact">
        <div class="container pt-5 pb-5">
            <div class="row">
                <div class="col-md-12">
                    <div class="contact-desc">
                        <h1 class="mb-5">Želite nas kontaktirati?</h1>
                        <p>Imate neko pitanje ili sugestiju u vezi naše usluge?
                            Popunite formu ispod, a naši agenti će Vam odgovoriti u što kraćem roku 😁</p>
                    </div>
                    <div class="contact-form">
    <form id="form1" runat="server">
        <div style="height: 431px">
            <center>
            <asp:TextBox ID="ime" runat="server" class="form-control" placeholder="Ime" Height="35px" Width="390px"></asp:TextBox><br />
           
            <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email adresa" Height="35px" Width="390px"></asp:TextBox><br />
            
            <asp:TextBox ID="broj" runat="server" class="form-control" placeholder="Broj telefona" Height="35px" Width="390px"></asp:TextBox><br />
            
            <asp:TextBox ID="poruka" runat="server" class="form-control" maxlength="500" placeholder="Predmet" Height="35px" Width="390px"></asp:TextBox><br />
            
            <a href="temp.html"><asp:Button ID="btnSave" class="btn btn-primary" OnClick="btnSave_Click" runat="server" Text="Podnesi" /></a>
                </center>
        </div>
        </form>
        </div>
                    
              </div> </div>       

                </div>
                    </section>

    <!-- futer -->
    <footer id="footer" class="footer footer1">
        <div class="container pt-5 pb-5">
            <div class="row">
                <div class="col-md-6 mb-5">
                    <img class="foot-logo" src="slike/logo.png" alt="Logo School">
                    <br><br>
                    
                    <img class="foot-logo"  src="slike/logoHTpng.png" alt="" srcset="">
                </div>

                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-4 foot-col mb-2">
                            <h4>O nama</h4>
                            <p>Ulica branilaca Starog Viteza <br>
                                72250, Vitez<br>
                                Telefon: 062 336 334</p>
                        </div>
                        <div class="col-md-4 foot-col mb-2">
                            <h4>Dokumentacija</h4>
                            <p><a href="#">Blog & Articles</a></p>
                            <p><a href="#">Terms and Conditions</a></p>
                            <p><a href="#">Privacy Policy</a></p>
                            <p><a href="#">Contact</a></p>
                        </div>
                        <div class="col-md-4 foot-col mb-2">
                            <h4>Navigacija</h4>
                            <p><a href="index.html#about">O nama</a></p>
                            <p><a href="prodaja.html">Prodaja</a></p>
                            <p><a href="index.html#projects">Ponude</a></p>
                            <p><a href="Kontakt.aspx">Kontakt</a></p>
                            <p><a href="Admin.aspx">Admin</a></p>
                            <p><a href="StanoviDetalji.aspx">Lokacije stanova</a></p>
                            <p><a href="Ucenici.aspx">Ucenici na projektu</a></p>
                        </div>
                    </div>
                </div>
            </div>

            
        </div>
    </footer>
       
    <footer class="footer footer2">
        <div class="container pt-3 pb-2">
            <div class="row">
                <div class="col-md-8 foot-bottom-text">
                    <p>Website služi u komercijalne svrhe - HT Studios © 2022 
                        / All Rights Reserved</p>
                </div>
                <div class="col-md-4 social-links content-right">
                    <a href="https://facebook.com/haamzat9" class="fb">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="https://twitter.com/elonmusk" class="tw">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a id="insta" href="https://instagram.com/haamzat9" class="ig">
                        <i class="fab fa-instagram"></i>
                    </a>
                </div>
            </div>
        </div>
    </footer>
    
                    
    
</body>
</html>
