<!--#include file="rutinas.asp"-->
<%
SET Conn=Conectar_ADM()
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Sabium | Aulas a un click</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

	<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
	
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
	
	<style>
	
	.slide-1 {
		position: relative;
		width: 100%;
		height: 100vh;
		overflow: hidden;
	}

	#background-video {
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		height: 100%;
		object-fit: cover;
		transform: translate(-50%, -50%);
		z-index: -1;
	}

	.container {
		position: relative;
		z-index: 1;
		/* Estilos para el contenido de tu página */
	}	
	
	.pinyon-script-regular {
	  font-family: "Pinyon Script", cursive;
	  font-weight: bold;
	  font-style: normal;
	  font-size: 24px;
	}
	
	.imperial-script-regular {
	  font-family: "Imperial Script", cursive;
	  font-weight: bold;
	  font-style: normal;
	  font-size: 28px;
	}	
	

	.roboto-quienes-somos {
	  font-family: "Roboto", sans-serif;
	  font-optical-sizing: auto;
	  font-weight: 400;
	  font-style: italic;
	  font-size: 18px;
	  font-variation-settings:
		"wdth" 100;
	}	

	.help-block {
    display: block;
	font-family: "Roboto", sans-serif;
	font-size: 14px;
    margin-top: 5px;
	margin-left: 5px;
    margin-bottom: 5px;
    color: #ff0000;
	}
	
	.envio-block {
    display: block;
	font-family: "Roboto", sans-serif;
	font-size: 16px;
    margin-top: 5px;
	margin-left: 5px;
    margin-bottom: 5px;
    color: #FC6061;
	letter-spacing: 0.1em;
	}	
	
	</style>
    
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
    
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">
      
      <div class="container-fluid">
        <div class="d-flex align-items-center">
          <div class="site-logo mr-auto w-25">
				<a href="index.asp"><img src="images/logo_top.png" style="width: 40%;height: auto;"></a>
		  </div>

          <div class="mx-auto text-center">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mx-auto d-none d-lg-block  m-0 p-0">
                <li><a href="#home-section" class="nav-link">Inicio</a></li>
                <li><a href="#courses-section" class="nav-link">Comunidad</a></li>
                <li><a href="#programs-section" class="nav-link">Ventajas</a></li>
                <li><a href="#teachers-section" class="nav-link">Quienes somos</a></li>
              </ul>
            </nav>
          </div>

          <div class="ml-auto w-25">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul style="list-style-type: none;">
                <li class="cta"><a href="#contact-section" class="nav-link"><span>Cont&aacute;ctenos</span></a></li>
              </ul>
            </nav>
            <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right"><span class="icon-menu h3"></span></a>
          </div>
        </div>
      </div>
      
    </header>

	<div class="intro-section" id="home-section">
		<div class="slide-1">
			<video autoplay muted loop id="background-video">
				<source src="images/fondo_home.mp4" type="video/mp4">
				Tu navegador no soporta el elemento de video.
			</video>
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12">
						<div class="row align-items-center">
							<div class="col-lg-6 mb-4 text-center">
								<img src="images/Sabium_Home.png" style="border:0px solid #fff">
								<p data-aos="fade-up" data-aos-delay="300"><a href="demo.html" class="btn btn-primary py-3 px-5 btn-pill">Solicitar demo</a></p>						
							</div>
							<div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
								<form action="login_valida.asp" method="post" class="form-box">
									<h3 class="h4 text-black mb-4">Ingreso al sistema</h3>
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Usuario" id="usuario" name="usuario" maxlength="8">
									</div>
									<div class="form-group">
										<input type="password" class="form-control" placeholder="Clave" id="clave" name="clave" maxlength="4">
									</div>
									<div class="form-group">
										<SELECT class="form-control campo_corto"  NAME="cb_colegio" id="cb_colegio" style="width:100%;">
										<OPTION value="" selected>Seleccione</OPTION>
										<%
										SQL_Colegios = "SELECT * FROM colegios WHERE col_baja='N' ORDER BY col_nombre"
										set rs_Colegios=Conn.Execute (sql_Colegios)
										do until rs_Colegios.eof
											%>
											<OPTION value="<%=rs_Colegios("col_id")%>"><%=ucase(rs_Colegios("col_nombre"))%></OPTION>
											<%
										rs_Colegios.movenext
										loop
										%>	
										</SELECT> 										
									</div>									
									<div class="form-group">
										<input type="submit" class="btn btn-primary btn-pill" value="Acceder">
									</div>
									<small>¿Problemas para iniciar sesión? ¿Olvidó su clave?</small>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="site-section" id="courses-section" style="background: #FC6061;">
	
	</div>
	

    <div class="site-section courses-title" id="courses-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-lg-7 text-center" data-aos="fade-up" data-aos-delay="">
            <h2 class="section-title">Comunidad</h2>
          </div>
        </div>
      </div>
    </div>
	
    <div class="site-section courses-entry-wrap"  data-aos="fade-up" data-aos-delay="100">
      <div class="container">
        <div class="row">

          <div class="owl-carousel col-12 nonloop-block-14">

            <div class="course bg-white h-100 align-self-stretch">
              <figure class="m-0">
                <a href="course-single.html"><img src="images/ventajas_1.jpg" alt="Image" class="img-fluid"></a>
              </figure>
              <div class="course-inner-text py-4 px-4" style="height:500px; background-color:#ffbec4;">
                <h3 style="text-align:center;"><a href="#" style="color:#56505e; font-weight:bold;">Equipos Directivos y Coodinadores</a></h3>
                <p style="text-align:center;color:#56505e;">¿Por qu&eacute;?</p>
				<p style="text-align:justify;">Supervisan y organizan actividades pedag&oacute;gicas y toman decisiones estrat&eacute;gicas.</p>
				<p style="padding-top:10px;"><center><span class="btn btn-primary btn-block btn-pill" style="width:50%;background-color:#e46671; border-color:#e46671;">Soluci&oacute;n<br>Sabium</span></center></p>
				<p style="text-align:center;">Supervisi&oacute;n en tiempo real, generaci&oacute;n de reportes, planificaci&oacute;n estrat&eacute;gica.</p>
			  </div>

            </div>

            <div class="course bg-white h-100 align-self-stretch">
              <figure class="m-0">
                <a href="course-single.html"><img src="images/ventajas_2.jpg" alt="Image" class="img-fluid"></a>
              </figure>
              <div class="course-inner-text py-4 px-4" style="height:500px; background-color:#ffe8a4;">
                <h3 style="text-align:center;"><a href="#" style="color:#56505e; font-weight:bold;">Docentes</a></h3>
                <p style="text-align:center;color:#56505e; padding-top:20px;">¿Por qu&eacute;?</p>
				<p style="text-align:left;">Ejecutan secuencias did&aacute;cticas y alimentan el sistema con informaci&oacute;n del proceso pedag&oacute;gico.</p>
				<p><center><span class="btn btn-primary btn-block btn-pill" style="width:50%; background-color:#dea510; border-color:#dea510;">Soluci&oacute;n<br>Sabium</span></center></p>
				<p style="text-align:center;">Calendarizaci&oacute;n de la planificaci&oacute;n, contenidos alineados con los NAP, planificaci&oacute;n como producto final, optimizaci&oacute;n del tiempo.</p>
              </div>

            </div>

            <div class="course bg-white h-100 align-self-stretch">
              <figure class="m-0">
                <a href="course-single.html"><img src="images/ventajas_3.jpg" alt="Image" class="img-fluid"></a>
              </figure>
              <div class="course-inner-text py-4 px-4" style="height:500px; background-color:#ffbec4;">
				<h3 style="text-align:center;"><a href="#" style="color:#56505e; font-weight:bold;">Instituciones Educativas</a></h3>
                <p style="text-align:center;color:#56505e; padding-top:25px;">¿Por qu&eacute;?</p>
				<p style="text-align:left;">Garantizan el cumplimiento de los objetivos institucionales y educativos.</p>
				<p style="padding-top:15px;"><center><span class="btn btn-primary btn-block btn-pill" style="width:50%; background-color:#e46671; border-color:#e46671;">Soluci&oacute;n<br>Sabium</span></center></p>
				<p style="text-align:center;">Gesti&oacute;n pedag&oacute;gica integral, estad&iacute;sticas en tiempo real con pol&iacute;ticas educativas.</p>
              </div>

            </div>

 

            <div class="course bg-white h-100 align-self-stretch">
              <figure class="m-0">
                <a href="course-single.html"><img src="images/ventajas_4.jpg" alt="Image" class="img-fluid"></a>
              </figure>
              <div class="course-inner-text py-4 px-4" style="height:500px; background-color:#ffe8a4;">
                <h3 style="text-align:center;"><a href="#" style="color:#56505e; font-weight:bold;">Organizaciones Internacionales y Escuelas Multilingues</a></h3>
                <p style="text-align:center;color:#56505e;padding-top:10px;">¿Por qu&eacute;?</p>
				<p style="text-align:left;">Buscan est&aacute;ndares educativos internacionales y evaluaciones comparativas.</p>
				<p style="padding-top:10px;"><center><span class="btn btn-primary btn-block btn-pill" style="width:50%; background-color:#dea510; border-color:#dea510;">Soluci&oacute;n<br>Sabium</span></center></p>
				<p style="text-align:center;">Evaluaciones internacionales, reportes adaptados a est&aacute;ndares globales.</p>

              </div>

            </div>





          </div>

         

        </div>
        <div class="row justify-content-center">
          <div class="col-7 text-center">
            <button class="customPrevBtn btn btn-primary m-1">Anterior</button>
            <button class="customNextBtn btn btn-primary m-1">Pr&oacute;ximo</button>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section" id="programs-section" style="background: #FFF;">
	
	</div>

    <div class="site-section" id="programs-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-lg-7 text-center"  data-aos="fade-up" data-aos-delay="">
            <h2 class="section-title">Ventajas a un click</h2>
          </div>
        </div>
        <div class="row mb-5 align-items-center">
          <div class="col-lg-7 mb-5" data-aos="fade-up" data-aos-delay="100">
            <img style="border-radius: 5%;" src="images/Publico_y_Comunidad2.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-4 ml-auto" data-aos="fade-up" data-aos-delay="200">
            <h3 class="text-black mb-4">Monitoreo pedag&oacute;gico</h3>
            <p class="mb-4">Proporciona seguimiento pedagógico en tiempo real, fomentando una mayor supervisión y mejor toma de decisiones.</p>
            <h3 class="text-black mb-4">Planificaci&oacute;n en simples pasos</h3>
            <p class="mb-4">Calendariza la ejecución de secuencias didácticas al instante, seleccionando entre índices de contenidos, todo en una misma plataforma, obteniendo la planificación como producto final.</p>
          </div>		  
        </div>

        <div class="row mb-5 align-items-center">
          <div class="col-lg-7 mb-5 order-1 order-lg-2" data-aos="fade-up" data-aos-delay="100">
            <img style="border-radius: 5%;" src="images/Publico_y_Comunidad3.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-4 mr-auto order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
            <h3 class="text-black mb-4">Optimizaci&oacute;n del tiempo</h3>
            <p class="mb-4">Posibilita a los docentes el monitoreo de secuencias didácticas de manera ágil y sencilla ahorrando tiempo valioso en la planificación y seguimiento de las actividades.</p>
            <h3 class="text-black mb-4">Información centralizada y accesible</h3>
            <p class="mb-4">Facilita la detección temprana de problemas y la coordinación entre los diferentes actores de la institución.</p>

          </div>
        </div>

        <div class="row mb-5 align-items-center">
          <div class="col-lg-7 mb-5" data-aos="fade-up" data-aos-delay="100">
            <img style="border-radius: 5%;" src="images/Publico_y_Comunidad3.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-4 ml-auto" data-aos="fade-up" data-aos-delay="200">
            <h3 class="text-black mb-4">Enfoque en la planificación estratégica</h3>
            <p class="mb-4">Permite prever acciones y optimizar procesos a través de la calendarización de la planificación.</p>
            <h3 class="text-black mb-4">Basado en los Diseños Curriculares Oficiales</h3>
            <p class="mb-4">Garantiza que los contenidos ofrecidos estén alineados con las normativas educativas oficiales.</p>

          </div>
        </div>

      </div>
    </div>
	
    <div class="site-section" id="teachers-section" style="background: #FFF;">
	
	</div>	
	

    <div class="site-section" id="teachers-section">
      <div class="container">

        <div class="row mb-5 justify-content-center">
          <div class="col-lg-12 mb-5 text-center"  data-aos="fade-up" data-aos-delay="">
            <h2 class="section-title">Quienes somos</h2>
			
			
			<p class="mb-4 text-left roboto-quienes-somos">“María tiene 48 años, es Profesora en Cs. de la Educación y, actualmente, es directora de nivel inicial y primario de una institución educativa. Tiene 3 hijos en edad escolar.</p>
			<p class="mb-4 text-left roboto-quienes-somos">El colegio es doble turno, lo cual, le ocupa mucho tiempo porque, si bien, su horario es rotativo, constantemente hay focos que atender: que hacen que se pierda la atención hacia lo pedagógico.</p>
			<p class="mb-4 text-left roboto-quienes-somos">María siente que está fallando en lo más importante, comprobar si se está enseñando bien, ya que ella piensa que la razón de ser de un colegio, son los alumnos y sus aprendizajes.</p>
			<p class="mb-4 text-left roboto-quienes-somos">Si bien disfruta mucho  de su profesión, se siente agobiada y cansada, necesita alguna herramienta que en cualquier momento y desde cualquier lugar, le permita saber cómo avanzaron, por ejemplo, en 2do B, con la secuencia de matemática, o cuánto le falta a 5to A para terminar el análisis del libro que estaban leyendo, ¿estarán preparadas las secuencias que continúan?, ¿se llegará a fin del trimestre con lo que se había proyectado o habrá que ajustar?”</p>
            <p class="mb-4 text-left" style="text-indent: 2em;">
				Por todo esto, surge Sabium.  Conocemos a María, Andrea, a Marcela, a Raul, etc., conocemos las necesidades reales de equipos directivos y docentes, conocemos el esfuerzo diario que ellos realizan para que sus alumnos aprendan contra viento y marea, conocemos la falta de tiempo, conocemos la sobre exigencia de trabajo y las situaciones urgentes, conocemos muchos de los inconvenientes que surgen en el día a día; sea cuál sea la institución en donde trabajen. Sabium está pensado por y para ellos.
			</p>
		  </div>
        </div>

        <div class="row">

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="100">
            <div class="teacher text-center">
              <img src="images/person_3.jpg" alt="Image" class="img-fluid w-50 rounded-circle mx-auto mb-4">
              <div class="py-2">
                <h3 class="text-black">Marina Alfie</h3>
                <p class="position">Licenciada en Sistemas de Información.</p>
                <p style="text-align:left;">Profesora Universitaria (en curso).</p>
				<p style="text-align:left;">Coordinadora del área de Matemática en nivel primario y secundario. </p> 
				<p style="text-align:left;">Profesora de Matemática y Programación en nivel secundario.</p>  
				<p style="text-align:left;">Miembro de la comisión directiva de una asociación civil y cultural sin fines de lucro con la educación como objeto.</p> 
				<p style="text-align:left;">Maestra de Inglés.</p> 
				<p style="text-align:left;">Instructora de yoga.</p> 
				<p style="text-align:left;">Mamá de 4 hijos.</p> 
			  </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="200">
            <div class="teacher text-center">
              <img src="images/person_3.jpg" alt="Image" class="img-fluid w-50 rounded-circle mx-auto mb-4">
              <div class="py-2">
                <h3 class="text-black">Blanca Goyenechea</h3>
                <p class="position">Physics Teacher</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro eius suscipit delectus enim iusto tempora, adipisci at provident.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="300">
            <div class="teacher text-center">
              <img src="images/person_3.jpg" alt="Image" class="img-fluid w-50 rounded-circle mx-auto mb-4">
              <div class="py-2">
                <h3 class="text-black">María Veronica Ludevid</h3>
                <p class="position">Physics Teacher</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro eius suscipit delectus enim iusto tempora, adipisci at provident.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section bg-image overlay" style="background-image: url('images/hero_1.jpg');">
      <div class="container">
        <div class="row justify-content-center align-items-center">
          <div class="col-md-8 text-center testimony">
            <img src="images/Sabium_Home.png" alt="Image" class="img-fluid w-25 mb-4 rounded-circle">
            <blockquote>
              <p>Sabium te ofrece una visión clara y en tiempo real de lo que sucede en cada aula.</p>
			  <p>Empodera a directivos y docentes con información precisa para una gestión pedagógica más efectiva.</p>
            </blockquote>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section" id="contact-section" style="background: #FFF;">
	
	</div>

    <div class="site-section bg-light" id="contact-section">
      <div class="container">

        <div class="row justify-content-center">
          <div class="col-md-7">


             
            <h2 class="section-title mb-3">Cont&aacute;ctenos</h2>
            <p class="mb-5">¿Necesitas más información? Llena el formulario y te contactaremos a la brevedad.</p>
          
            <form action="#" method="post" data-aos="fade" name="Form_Contacto" id="Form_Contacto">
			
              <div class="form-group row">
                <div class="col-md-12">
                  <input id="asunto" name="asunto" type="text" class="form-control" placeholder="Asunto">
				  <div id="error_asunto" class="help-block with-errors"></div>
                </div>
              </div>			
             <div class="form-group row">
                <div class="col-md-6 mb-3 mb-lg-0">
                  <input id="nombre" name="nombre" type="text" class="form-control" placeholder="Nombre">
				  <div id="error_nombre" class="help-block with-errors"></div>
                </div>
                <div class="col-md-6">
                  <input id="apellido" name="apellido" type="text" class="form-control" placeholder="Apellido">
				  <div id="error_apellido" class="help-block with-errors"></div>
                </div>
              </div>
             <div class="form-group row">
                <div class="col-md-12">
                  <input id="colegio" name="colegio" type="text" class="form-control" placeholder="Colegio">
				  <div id="error_colegio" class="help-block with-errors"></div>
                </div>
              </div>	
              <div class="form-group row">
                <div class="col-md-12">
                  <input id="cargo" name="cargo" type="text" class="form-control" placeholder="Cargo">
				  <div id="error_cargo" class="help-block with-errors"></div>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-md-12">
                  <input id="telefono" name="telefono" type="telefono" class="form-control" placeholder="Tel&eacute;fono">
				  <div id="error_telefono" class="help-block with-errors"></div>
                </div>
              </div>
              <div class="form-group row"> 
                <div class="col-md-12">
                  <input id="email" name="email" type="email" class="form-control" placeholder="Email">
				  <input id="key" name="key" type="hidden">
				  <div id="error_email" class="help-block with-errors"></div>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-md-12">
                  <textarea id="mensaje" name="mensaje" class="form-control" id="" cols="30" rows="10" placeholder="Escriba su mensaje aqu&iacute;."></textarea>
				  <div id="error_mensaje" class="help-block with-errors"></div>	
				</div>
              </div>

              <div class="form-group row">
                <div class="col-md-4"> 
                  <input type="button" onClick="insert_contacto2()" class="btn btn-primary py-3 px-4 btn-block btn-pill" value="Enviar mensaje">
                </div>
                <div class="col-md-8">
                  <div id="mensaje_envio_ok" class="envio-block"></div>	 
                </div>				
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
    
     
    <footer class="footer-section bg-white">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <h3>Acerca de Sabium</h3>
            <p>Es un seguimiento de lo que acontece pedagógicamente  en las aulas en tiempo real.</p>
          </div>

          <div class="col-md-3 ml-auto">
            <h3>Links</h3>
            <ul class="list-unstyled footer-links">
              <li><a href="#">Home</a></li>
              <li><a href="#">Ventajas a un click</a></li>
              <li><a href="#">Publico y Comunidad</a></li>
              <li><a href="#">Quienes somos</a></li>
            </ul>
          </div>

          <div class="col-md-4">
            <h3>Suscribirse</h3>
            <p>Completa tu direcci&oacute;n de correo para recibir las &uacute;ltimas novedades.</p>
            <form action="#" class="footer-subscribe">
              <div class="d-flex mb-5">
                <input type="text" class="form-control rounded-0" placeholder="Email" style="height: 43px !important;">
                <input type="submit" class="btn btn-primary rounded-0" value="Suscribirse">
              </div>
            </form>
          </div>

        </div>

        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
				Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Sabium</a>
			</p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>

  
    
  </div> <!-- .site-wrap -->

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/main.js"></script>
  <script src="js/funciones.js"></script>	  
  </body>
</html>