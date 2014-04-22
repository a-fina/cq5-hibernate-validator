<%@include file="/libs/foundation/global.jsp"%>
<%@ page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat,
		com.webnid.hibernate-validator.dao.Car,
		java.util.Set,
		javax.validation.ConstraintViolation,
		javax.validation.Validation,
		javax.validation.Validator,
		javax.validation.ValidatorFactory,
		java.util.Date"%>
<%
	String idgruppo = "" + new Random().nextInt(10000);
	String idutente = "" + new Random().nextInt(10000);
    String validation = (String) request.getParameter("validation");
%>
<!DOCTYPE html>
<html>
<head>
	<title>Title of the document</title>
	<link rel="stylesheet" href="css/style-apparthon.css" type="text/css" media="all">
</head>

<body>
	<!--TOP-->
	<div class="containerTop">
		<% if (validation != null && validation.equals("error")) { %>
			<h1>Pagina d'errore</h1>
			<%
			Validator validator;
			ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
			validator = factory.getValidator();
			Car car = new Car( "Morris", "D", 4 );

			Set<ConstraintViolation<Car>> constraintViolations =
			validator.validate( car );
			%>
			<div><%=constraintViolations.iterator().next().getMessage()%> <b>Sooka geek</b></div>
		<% } %>
			<h1>Iscrizione al Lorem Ipsum</h1>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
				
			<div class="description_container">
				<div class="description_content left">
					<div class="description_img left"></div>
					<div class="description_text left">
						<p class="description_title">Singolo</p>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					</div>
				</div>
				<div class="description_content left">
					<div class="description_img left"></div>
					<div class="description_text left">
						<p class="description_title">Gruppo</p>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					</div>
				</div>
			</div>
	</div>
			
			
	<!--FORM-->
	<form id="DatiPersonali" name="DatiPersonali" method="POST" action="/content/hibernate-validator/grupo-<%=idgruppo%>/dati-utenti" enctype="multipart/form-data">
		<input type="hidden" name=":redirect" value="<%=currentNode.getPath()%>.validation-page.html?g=<%=idgruppo%>&u=<%=idutente%>"/>
		
		<!--BOX-->
		<div class="containerForm">
			<div class="dataBox">
			    
				<div class="row">
					<span><input id="nome-team" type="text" name="nome" placeholder="Nome team*" required autofocus></span>
				</div>
								
				<div class="row">
					<span>Numero di persone che compongono il team:*</span><br>
					<span><select id="list" name="list">
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
						</select>
					</span>
				</div>
				
				<div class="row">
					<div>
					<span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</span></div>
				
				
					<div class="left label-red">Video Youtube</div>
					<div class="left"><input id="url" type="url" name="url" placeholder="url"></div>
				</div>
				
			
				<textarea id="messaggio" name="messaggio" placeholder="Perch&egrave; volete partecipare?"></textarea>
				
				<p>Su quale delle due categorie pensi di lavorare durante l'hibernate-validator?</p>
				<div id="checkbox">
						<input type="checkbox" name="challenge1" value="challenge1"><label>CHALLENGE 1: Mobile Banking webnid</label>
						<input type="checkbox" name="challenge2" value="challenge2"><label>CHALLENGE 2: Edu-Finance-App</label>
				</div>
				<textarea id="messaggio" name="messaggio" placeholder="Qual'&egrave; la tua idea di banca innovativa?"></textarea>
			</div>
		</div>
		
		
		<!--COMPONENTE-->
		<div class="containerComponent">
		<!--BOX-->
			<div class="dataBox">
				<h2>Iscrizione primo componente (capogruppo):</h2>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
			</div>
		
		<!--BOX-->
			<div class="dataBox">
				<h3>Figura Professionale</h3>
				<p>Scegli la figura prefessionale:</p>
				<div id="checkbox">
					<input type="checkbox" name="si" value="si" id=""><label for="">Developer</label>
					<input type="checkbox" name="no" value="no"><label>Web designer</label>
					<input type="checkbox" name="no" value="no"><label>Marketing Finance Specialist</label>
				</div>
			</div>
		
		<!--BOX-->
			<div class="dataBox">
				<h3>Dati Personali:</h3>
				<div class="left"><input id="nome1" type="text" name="nome1" placeholder="Nome*" required size="100" maxlength="110"></div>
				<div class="left"><input id="cognome" type="text" name="cognome" placeholder="Cognome*" required></div>
				<div class="clear"><input id="data" type="text" name="data" placeholder="Data di nascita*" required></div>
				<div class="left"><input id="indirizzo" type="text" name="indirizzo" placeholder="Indirizzo*" required></div>
				<div class="left"><input id="num" type="text" name="num" placeholder="n."></div>
				<div class="left"><input id="cap" type="text" name="cap" placeholder="CAP"></div>
				<div class="left"><input id="citta" type="text" name="citta" placeholder="Citta"></div>
				<div class="left"><input id="provincia" type="text" name="provincia" placeholder="Provincia*" required></div>
				<div class="left"><input id="documento" type="text" name="documento" placeholder="Documento di Identita&grave;*" required></div>
				<div class="left"><input id="numero" type="text" name="numero" placeholder="Numero*" required></div>
				<div class="left"><input id="scadenza" type="text" name="scadenza" placeholder="Scadenza*" required></div>
				<div class="left"><input id="rilascio" type="text" name="rilascio" placeholder="Rilasciato da*" required></div>
				<div class="left"><input id="cf" type="text" name="cf" placeholder="Codice Fiscale*" required></div>
				
				<div class="left"><input id="email" type="email" name="email" placeholder="Indirizzo e-Mail*" autocomplete="on" required></div>
				<div class="left"><input id="tel" type="tel" name="usrtel" placeholder="Numero di telefono*"></div>
				<div class="clear"></div>
				<div class="left"><input type="file" class="custom-file-input" name="upload" accept="image/jpeg"></div>
				
				<div class="clear"></div>
				<div><textarea id="messaggio" name="messaggio" placeholder="Scrivi il tuo nome di battaglia (max 50 caratteri)"></textarea></div>
				<div id="checkbox">
					<input type="checkbox" name="si" value="si"><label>Si</label>
					<input type="checkbox" name="no" value="no"><label>No</label>
					<label>Accettazione dell'utilizzo di foto e motto nella HP del sito hibernate-validator.it</label>
				</div>
				<div><select id="list" name="list">
	  					<option value="">XL</option>
	  					<option>L</option>
	  					<option>M</option>
	  					<option>S</option>
	  				</select>
					<label>Taglia T-shirt*</label>
				</div>
			</div>
			
			<!--BOX-->
			<div class="dataBox">
				<h3>Skill Professionali:</h3>
				<div class="left label-grey">Link professionale</div>
				<div class="left"><input id="url" type="url" name="url" placeholder="url"></div>
				<div class="left plus-link"><a href="#"><img src="images/plus.png" alt="" /></a></div>
				<div class="clear"></div>
				<div class="left label-blue">Link di Linkedin</div>
				<div class="left"><input id="url" type="url" name="url" placeholder="url"></div>
				<div class="clear"></div>
				<div class="left label-red">Video Youtube</div>
				<div class="left"><input id="url" type="url" name="url" placeholder="url"></div>
				<div class="clear"></div>
				<input type="file" name="datafile" accept="image/">
				<div class="clear"></div>
			</div>
			
			<!--BOX-->
			<div class="dataBox">
				<h3>Motivazioni:</h3>
				<div><textarea id="messaggio" name="messaggio" placeholder="Perch&egrave; vuoi partecipare (max 200 caratteri)"></textarea></div>
				<p>Su quale delle due categorie pensi di lavorare durante l'hibernate-validator?</p>
				<div id="checkbox">
						<input type="checkbox" name="challenge1" value="challenge1"><label>CHALLENGE 1: Mobile Banking webnid</label>
						<input type="checkbox" name="challenge2" value="challenge2"><label>CHALLENGE 2: Edu-Finance-App</label>
				</div>
				<textarea id="messaggio" name="messaggio" placeholder="Qual'&egrave; la tua idea di banca innovativa?"></textarea>
			</div>
			
			<!--BOX-->
			<div class="dataBox">
				<h3>Finetech Accelerator:</h3>
				<textarea id="messaggio" name="messaggio" placeholder="Fai parte di una startup innovativa in ambito Financial Technologies o hai intezione di crearla? (Max 200 caratteri)"></textarea>
				<p>Sei interessato a conoscere il programma di accelerazione FinTech di webnid?</p>
					<div id="checkbox">
							<input type="checkbox" name="si" value="si"><label>si</label>
							<input type="checkbox" name="no" value="no"><label>no</label>
					</div>
				<p>Per tutte le informazioni sul Finetech Accelerator vai al sito:<br><a href="#">www.webnidgroup.com</a></p>
				<div id="checkbox">
							<input type="checkbox" name="" value=""><label>Accetto Regolamento e condizioni iniziativa</label><br>
							<input type="checkbox" name="" value=""><label>Accetto Privacy</label><br>
							<input type="checkbox" name="" value=""><label>Accetto consenso per la cessione de miei dati..</label>
				</div>
			</div>
	</div>	
	<!--SUBMIT-->
		<div class="containerSubmit">
			<button type="submit" id="iscriviti" name="iscriviti">ISCRIVITI</button>
		</div>
	<!--SUBMIT-->
	</form>
	<!--/FORM-->
</body>
</html>