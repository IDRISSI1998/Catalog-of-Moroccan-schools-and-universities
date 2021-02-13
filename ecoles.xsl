<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt"
  xmlns:user="http://mycompany.com/mynamespace">
  
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link href="assets/css/main.css" rel="stylesheet" type="text/css" media="all" />
        <link href="style.css" rel="stylesheet" type="text/css" media="all" />
        
       
        
      </head>
      <body>
        
        <!-- Nav -->
        <nav id="menu">
          <ul class="links">
            <li><a href="index.html">Home</a></li>
            <li><a href="generic.html">Generic</a></li>
            <li><a href="elements.html">Elements</a></li>
          </ul>
        </nav>
        <!-- DIV PAR RAPPORT A LA NAVBAR  -->
        <div id="home" class="parent" style="margin-top:30px;background-color: #fff;color: #444;height:1500px;">
        <!-- Banner -->
        
        <section class="banner full">
          <xsl:for-each select="gestion_ecole/universite">
          <article>
            <img src="{image}" alt="" />
            <div class="inner">
              <header>
                <p><xsl:value-of select="composantes"/> (créé en <xsl:value-of select="date-creation"/>)</p>
                <h2><xsl:value-of select="nom"/></h2>
              </header>
            </div>
          </article> 
          </xsl:for-each> 
        </section>
        
    
        
        <!-- Three -->
          <section id="Rejoignez-nous" class="wrapper style2">
          <div class="inner">
            <header class="align-center">
              <p class="special">Notre communauté compte plus de 120'000 utilisateurs</p>
              <h2>Rejoignez nous !</h2>
            </header>
            <div class="gallery">
              <div>
                <div class="image fit">
                  <a href="#Rejoignez-nous"><img src="images/facebook.png" style="height:13rem" alt="" /></a>
                </div>
              </div>
              <div>
                <div class="image fit">
                  <a href="#Rejoignez-nous"><img src="images/youtube.jpg" style="height:13rem" alt="" /></a>
                </div>
              </div>
            </div>
          </div>
        </section>
        
        
        <!-- Nav -->
        <nav id="menu">
          <ul class="links">
            <li><a href="index.html">Home</a></li>
            <li><a href="generic.html">Generic</a></li>
            <li><a href="elements.html">Elements</a></li>
          </ul>
        </nav>
  
        <ul class="navbar" style="z-index:100; position: fixed">
          <li><a class="active" href="#home">Home</a></li>
          <li><a href="#universites">Universites</a></li>
          <li><a href="#ecoles">Ecoles</a></li>
          <li><a href="#contact">Tous les contacts</a></li>
          <div class="search-container" style="float: right; margin-right:400px display: inline">
            
          </div>
        </ul>
          
         
          <script><![CDATA[
          /* When the user clicks on the button,
          toggle between hiding and showing the dropdown content */
          function myFunction1() {
          document.getElementById("myDropdown").classList.toggle("show");
          }
          
          function filterFunction() {
          var input, filter, ul, li, a, i;
          input = document.getElementById("myInput");
          filter = input.value.toUpperCase();
          div = document.getElementById("myDropdown");
          a = div.getElementsByTagName("a");
          for (i = 0; i < a.length; i++){
          txtValue = a[i].textContent || a[i].innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
          a[i].style.display = "";
          } else {
          a[i].style.display = "none";
          }
          }
          }
    ]]></script>
          
          
       

      <script type="text/javascript" src="assets/js/jquery.min.js"></script>
      <script type="text/javascript" src="assets/js/jquery.scrollex.min.js"></script>
      <script type="text/javascript" src="assets/js/skel.min.js"></script>
      <script type="text/javascript" src="assets/js/util.js"></script>
      <script type="text/javascript" src="assets/js/main.js"></script>
     

        <!-- Two -->
        <section id="universites" class="wrapper style3">
          <div class="inner">
            <header class="align-center">
              <p>Votre meilleur référentiel des écoles et universités marocaines en ligne</p>
              <h2>LISTE DES UNIVERSITES MAROCAINES</h2>
            </header>
          </div>
        </section>


      <!-- One -->
      <section id="one" class="wrapper style2">
        <div class="inner">
          <div class="grid-style" style="line-height: 140%;">
            
            <xsl:for-each select="gestion_ecole/universite">
              <script>
                function plusInfoUniversitesBROUILL(acronyme) {
                document.getElementById(acronyme).innerHTML = String(<xsl:value-of select="nom[2]"/>);
                }
              </script>
          
    
              <div>
                <div class="box">
                  <div class="image fit">
                    <img src="{image}" alt="" />
                  </div>
                  <div class="content">
                    <header class="align-center">
                      <p><xsl:value-of select="composantes"/>(créé en <xsl:value-of select="date-creation"/>)</p>
                      <h2><xsl:value-of select="nom"/></h2>
                    </header>
                    <p style="color: rgb(123, 123, 138); text-align: justify;" ><xsl:value-of select="descriptif"/></p>
                    
                    <div id="{nom/@acronyme}" style="display:none; text-align: justify; color: rgb(129, 185, 240);">
                      
                      <ul>
                        <li><span style="text-decoration : underline;">adresse</span> :  <xsl:value-of select="adresse"/></li>
                        <li><span style="text-decoration : underline;">site</span> :  <xsl:value-of select="site"/></li>
                        <li><span style="text-decoration : underline;">email</span> :  <xsl:value-of select="email"/></li>
                        <li><span style="text-decoration : underline;">telephones</span> :  <xsl:for-each select="telephones/telephone"><xsl:value-of select="."/> / </xsl:for-each></li>
                        <br/>
                      </ul>
                    </div> 
                    
                    <footer class="align-center">
                      <a id="{nom/@acronyme}btn" class="button alt" onclick="plusInfoUniversites('{nom/@acronyme}')">Plus d'info</a>
                    </footer>
                  </div>
                </div>
              </div>
            </xsl:for-each> 
          </div>
        </div>
      </section>
          
          <script>
            function plusInfoUniversites(acronyme) {
            var x = document.getElementById(acronyme);
            if (x.style.display === "none") {
            x.style.display = "block";
            document.getElementById(acronyme+"btn").innerHTML = "Moins d'info";
            } else {
            x.style.display = "none";
            document.getElementById(acronyme+"btn").innerHTML = "Plus d'info";
            }
            }
          </script>
          
          
          <!-- Two -->
          <section id="ecoles" class="wrapper style3">
            <div class="inner">
              <header class="align-center">
                <p>Votre meilleur référentiel des écoles et universités marocaines en ligne</p>
                <h2>LISTE DES ECOLES MAROCAINES</h2>
              </header>
            </div>
          </section>
         
          <div style="width:80%;  margin-left:10%; margin-top: 20px; padding-bottom: 15px;">
          <input type="text" id="myInputFilter" onkeyup="myFunctionFilter()" placeholder="Chercher une école supérieur marocaine.." title="Type in a name"></input>
            <table id="myTableFilter" style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif; border-collapse: collapse;">
              <tr class="header">
                <th style="width:45%;">Nom de l'école</th>
                <th style="width:15%;">Type</th>
                <th style="width:20%;">Catégorie</th>
                <th style="width:20%;"></th>
              </tr>
              <xsl:for-each select="gestion_ecole/ecole">
              <tr>
                <td><xsl:value-of select="nom"/></td>
                <td><xsl:value-of select="@type"/></td>
                <td><xsl:value-of select="categorie"/></td>
                <td><a  style="text-decoration : underline; color: rgb(129, 185, 240);" href="#{nom}ecole">Plus info</a></td>
              </tr>
              </xsl:for-each>
            </table>
          </div>  
            <script><![CDATA[
              function myFunctionFilter() {
              var input, filter, table, tr, td, i, txtValue;
              input = document.getElementById("myInputFilter");
              filter = input.value.toUpperCase();
              table = document.getElementById("myTableFilter");
              tr = table.getElementsByTagName("tr");
              for (i = 0; i < tr.length; i++) {
              td = tr[i].getElementsByTagName("td")[0];
              if (td) {
              txtValue = td.textContent || td.innerText;
              if (txtValue.toUpperCase().indexOf(filter) > -1) {
              tr[i].style.display = "";
              } else {
              tr[i].style.display = "none";
              }
              }       
              }
              }
            ]]></script>
          
          <!-- One -->
          <section id="one" class="wrapper style2">
            <div class="inner">
              <div class="grid-style">
                
                <xsl:for-each select="gestion_ecole/ecole">
                  
                  <div id="{nom}ecole" style="width: 70rem; padding: 20px; margin-left: 7%; text-align: justify; line-height: 140%;">
                    <div class="box">
                      <div class="image fit">
                        <img src="{image}" alt="" />
                      </div>
                      <div class="content">
                        <header class="align-center">
                          <p><xsl:value-of select="categorie"/> (créé en <xsl:value-of select="date-creation"/>)</p>
                          <h2><xsl:value-of select="nom"/></h2>
                        </header>
                        <p style="margin-left: 5%; font-size: 20px; color:rgb(138, 144, 150)"><xsl:value-of select="descriptif"/></p>
                        
                        <footer class="align-center">
                          <a id="{nom/@acronyme}contactBtn" class="button alt" onclick="afficherContact('{nom/@acronyme}contact')">Afficher les contacts</a>
                          <span>&#160;&#160;</span>
                          <a id="{nom/@acronyme}formationBtn" class="button alt" onclick="afficherFormation('{nom/@acronyme}formation')">Afficher les formations disponibles</a>
                          <span>&#160;&#160;</span>
                          <a href="#ecoles" class="button alt">Retour</a>
                        </footer>
                        <br></br>
                        <div id="mytable" style="background-color:#grey; text-align: center; margin-right:36%">
                          <div id="{nom/@acronyme}contact" style="display:none">
                          <ul style="list-style-type:none; font-size: 20px; line-height: 180%; color:rgb(16, 135, 204)">
                            <li>adresse <xsl:value-of select="adresse"/></li>
                            <li>site :<xsl:value-of select="site"/>   -   email :<xsl:value-of select="email"/></li>
                            <li>tels :<xsl:for-each select="telephones/telephone"><xsl:value-of select="."/>    /   </xsl:for-each></li>
                          </ul>
                          </div>
                        </div> 
                        
                        <div id="{nom/@acronyme}formation" style="display:none;">
                        <span id="mytable" style="background-color:#grey; color:rgb(54, 97, 156); font-weight: bold; margin-left:35%; font-size: 1.4rem; text-align: center; text-decoration : underline;">Fomations offertes par l'école :</span>
                        <br></br><br></br> 
                        
                        <xsl:for-each select="diplomes/diplome">
                          <!--<span id="mytable" style="background-color:#grey; color:rgb(67, 73, 79); margin-left:40%; font-size: 1.2rem;">
                            <xsl:value-of select="nom"/></span><br />   -->
                          
                          <table id="mytable">
                            <tr bgcolor="#9acd32" style="width:100%; color:white; background-color:rgb(150, 203, 255);">
                              <td><xsl:value-of select="nom"/></td>                           
                            </tr>
                            <tr bgcolor="#9acd32">
                              <th>filiere</th>
                              <th>descriptif de la filiere</th>
                            </tr>
                            <xsl:for-each select="filieres">
                              <xsl:for-each select="filiere">  
                                <tr>
                                  <td>
                                    <xsl:value-of select="nom"/>
                                  </td>
                                  <td>
                                    <xsl:value-of select="descriptif"/>
                                  </td>
                                </tr>
                              </xsl:for-each>
                            </xsl:for-each>  
                          </table>
                        </xsl:for-each>   
                        </div>
                      </div>
                    </div>
                  </div>
                </xsl:for-each> 
              </div>
            </div>
          </section>
          
          <script>
            function afficherContact(acronyme) {
            var x = document.getElementById(acronyme);
            if (x.style.display === "none") {
            x.style.display = "block";
            document.getElementById(acronyme+"Btn").innerHTML = "Cacher les contacts";
            } else {
            x.style.display = "none";
            document.getElementById(acronyme+"Btn").innerHTML = "Afficher les contacts";
            }
            }
          </script>
          <script>
            function afficherFormation(acronyme) {
            var x = document.getElementById(acronyme);
            if (x.style.display === "none") {
            x.style.display = "block";
            document.getElementById(acronyme+"Btn").innerHTML = "Cacher les formations";
            } else {
            x.style.display = "none";
            document.getElementById(acronyme+"Btn").innerHTML = "Afficher les formations disponibles";
            }
            }
          </script>
          
          

          <!-- Two -->
          <section id="contact" class="wrapper style3" style="background-image: url(images/contact.jpg);">
            <div class="inner">
              <header class="align-center">
                <p>Votre meilleur référentiel des écoles et universités marocaines en ligne</p>
                <h2>CONTACT DES UNIVERSITES ET ECOLES MAROCAINES</h2>
              </header>
            </div>
          </section>

        
        
        
          <!-- Three -->
          <section id="three" class="wrapper style2">
            <div class="inner">
              <header class="align-center">
                <p class="special">Des données actualisées à votre service</p>
                <h2>Contact des universités marocaines</h2>
              </header>
            </div>
          </section>
  
        <table id="mytable">
          <tr bgcolor="#9acd32">
            <th>nom</th>
            <th>adresse</th>
            <th>site</th>
            <th>email</th>
            <th>telephones</th>
          </tr>
          <xsl:for-each select="gestion_ecole/universite">
            <tr>
              <td>
                <xsl:value-of select="nom"/>
              </td>
              <td>
                <xsl:value-of select="adresse"/>
              </td>
              <td>
                <xsl:value-of select="site"/>
              </td>
              <td>
                <xsl:value-of select="email"/>
              </td>
              <td>
                <xsl:for-each select="telephones/telephone">
                  <xsl:value-of select="."/> /  
                </xsl:for-each>
              </td>

            </tr>
          </xsl:for-each>
        </table>
        <p></p><p></p>
          
          
          <!-- Three -->
          <section id="three" class="wrapper style2">
            <div class="inner">
              <header class="align-center">
                <p class="special">Des données actualisées à votre service</p>
                <h2>Contact des écoles marocaines</h2>
              </header>
            </div>
          </section>
          
          <table id="mytable">
            <tr bgcolor="#9acd32">
              <th>nom</th>
              <th>adresse</th>
              <th>site</th>
              <th>email</th>
              <th>telephones</th>
            </tr>
            <xsl:for-each select="gestion_ecole/ecole">
              <tr>
                <td>
                  <xsl:value-of select="nom"/>
                </td>
                <td>
                  <xsl:value-of select="adresse"/>
                </td>
                <td>
                  <xsl:value-of select="site"/>
                </td>
                <td>
                  <xsl:value-of select="email"/>
                </td>
                <td>
                  <xsl:for-each select="telephones/telephone">
                    <xsl:value-of select="."/> /  
                  </xsl:for-each>
                </td>
                
              </tr>
            </xsl:for-each>
          </table>
          
          
          
          <!-- Footer -->
          <footer id="footer">
            <div class="container">
              <ul class="icons">
                <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                <li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
              </ul>
            </div>
            
          </footer>

        </div> <!-- div de l'ensemble pour afficher tjrs la navbar -->
        
        
        

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>