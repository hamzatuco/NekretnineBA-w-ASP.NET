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
    <link href="css/admincss.css" rel="stylesheet" />

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
    
    <br />
    <br />
    <h1 class="section-title">Pretrazite stanare</h1>
    <br />
    <br />
    <center>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Stan_ID" DataSourceID="SqlDataSource1" PageSize="5" Width="263px">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Stan_ID" HeaderText="Stan_ID" InsertVisible="False" ReadOnly="True" SortExpression="Stan_ID" />
                    <asp:BoundField DataField="Sprat" HeaderText="Sprat" SortExpression="Sprat" />
                    <asp:BoundField DataField="Broj_stana" HeaderText="Broj_stana" SortExpression="Broj_stana" />
                    <asp:BoundField DataField="Broj_soba" HeaderText="Broj_soba" SortExpression="Broj_soba" />
                    <asp:CheckBoxField DataField="Posjedovanje_ljubimca" HeaderText="Posjedovanje_ljubimca" SortExpression="Posjedovanje_ljubimca" />
                    <asp:BoundField DataField="Cijene_rezija_mjesecno" HeaderText="Cijene_rezija_mjesecno" SortExpression="Cijene_rezija_mjesecno" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nekretnineBAConnectionString %>" DeleteCommand="DELETE FROM [Stanovi] WHERE [Stan_ID] = @Stan_ID" InsertCommand="INSERT INTO [Stanovi] ([Sprat], [Broj_stana], [Broj_soba], [Posjedovanje_ljubimca], [Cijene_rezija_mjesecno]) VALUES (@Sprat, @Broj_stana, @Broj_soba, @Posjedovanje_ljubimca, @Cijene_rezija_mjesecno)" SelectCommand="SELECT * FROM [Stanovi]" UpdateCommand="UPDATE [Stanovi] SET[Posjedovanje_ljubimca] = @Posjedovanje_ljubimca, [Cijene_rezija_mjesecno] = @Cijene_rezija_mjesecno WHERE [Stan_ID] = @Stan_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Stan_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Sprat" Type="Int16" />
                    <asp:Parameter Name="Broj_stana" Type="Int32" />
                    <asp:Parameter Name="Broj_soba" Type="Int16" />
                    <asp:Parameter Name="Posjedovanje_ljubimca" Type="Boolean" />
                    <asp:Parameter Name="Cijene_rezija_mjesecno" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Posjedovanje_ljubimca" Type="Boolean" />
                    <asp:Parameter Name="Cijene_rezija_mjesecno" Type="Decimal" />
                    <asp:Parameter Name="Stan_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
         <br />
    <br />
    
    <br />
        <asp:GridView ID="GridView2" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" 
                RowStyle-CssClass="rows" runat="server" AutoGenerateColumns="False" DataKeyNames="Stanar_ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Stanar_ID" HeaderText="Stanar_ID" InsertVisible="False" ReadOnly="True" SortExpression="Stanar_ID" />
                <asp:BoundField DataField="Ime_stanara" HeaderText="Ime_stanara" SortExpression="Ime_stanara" />
                <asp:BoundField DataField="Prezime_stanara" HeaderText="Prezime_stanara" SortExpression="Prezime_stanara" />
                <asp:BoundField DataField="JMBG" HeaderText="JMBG" SortExpression="JMBG" />
                <asp:BoundField DataField="Datum_useljenja" HeaderText="Datum_useljenja" SortExpression="Datum_useljenja" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:nekretnineBAConnectionString %>" SelectCommand="SELECT * FROM [Stanari] WHERE ([Stanar_ID] = @Stanar_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Stanar_ID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
     <br />
    <br />
   </center>
   

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


