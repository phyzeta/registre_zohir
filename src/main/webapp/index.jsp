<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String nom="";
String errorNom="";

String cognom="";
String errorCognom="";

String email="";
String errorEmail="";

String data_naixement="";
String errorData_naixement="";

String sexe="";
String errorSexe="";

String tipus="pelicules";;
String errortipus="";

String generes="";
String errorGeneres="";

String contrasenya1="";
String errorContrasenya1="";

String contrasenya2="";
String errorContrasenya2="";

boolean SiError = false;

if(request.getParameter("boto")!=null){
	
	if(request.getParameter("nom")==""){
		errorNom="Camp buit";
		SiError = true;
	}else nom=request.getParameter("nom");
	

	if(request.getParameter("cognom")==""){
		errorCognom="Camp buit";
		SiError = true;
	}else cognom=request.getParameter("cognom");
	
	
	if(request.getParameter("email")==""){
		errorEmail="Camp buit";
		SiError = true;
	} else if (!request.getParameter("email").contains("@") || !request.getParameter("email").contains(".")) {
		errorEmail = "El format del correu electrònic no és correcte.";
		SiError = true;
	}else email=request.getParameter("email");
	
	
	if(request.getParameter("data_naixement")==""){
	}else if (2026-Integer.parseInt(request.getParameter("data_naixement").substring(0,4)) < 5){
		errorData_naixement="Data invàlida ha de ser de 5 anys com a mínim anterior a l’actual";
		SiError = true;
	}else data_naixement=request.getParameter("data_naixement");
	
	
	if(request.getParameter("sexe")==""){
		errorSexe="Camp buit";
		SiError = true;
	}else sexe=request.getParameter("sexe");
	
	if (request.getParameter("tipus") != null) {
		tipus= request.getParameter("tipus");
	}
	
	if(request.getParameter("generes")==null){
		generes= request.getParameter("generes");
	}
	
	//----------CONTRASENYA 1------------
	if(request.getParameter("contrasenya1")==""){
		errorContrasenya1="Camp buit";
		SiError = true;
	}else if (request.getParameter("contrasenya1").length()<8){
		errorContrasenya1="Ha de tenir 8 caracters minim";
		SiError=true;
	}
	
	//----------CONTRASENYA 2------------
	if(request.getParameter("contrasenya1")=="" || request.getParameter("contrasenya2")!=""){
		if(!request.getParameter("contrasenya1").equals(request.getParameter("contrasenya2"))){
			errorContrasenya2="Contrasenyes dierents";
			SiError = true;
		}
	}else {
		contrasenya1=request.getParameter("contrasenya1");
		contrasenya2=request.getParameter("contrasenya2");
	}
	
	if(!SiError){
		%><jsp:forward page="benvingut.jsp"/> <%
	}
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="#">
        <label>Nom: <input type="text" name="nom" value="<%=nom %>" ></label>
         <%
     	if (errorNom!= ""){
     	%>
        <span style="color:red" ><%=errorNom %> </span>
        <%
        }
     	%>
        <br>
        
        <label>Cognom: <input type="text" name="cognom" value="<%=cognom %>"></label>
         <%
     	if (errorCognom!= ""){
     	%>
        <span style="color:red" ><%=errorCognom %> </span>
         <%
        }
     	%>
        <br>
        
        <label>Email: <input type="text" name="email" value="<%=email %>"></label>
         <%
     	if (errorEmail!= ""){
     	%>	
        <span style="color:red" ><%=errorEmail %> </span>
        <%
        }
     	%>
        <br>
        <label>Data naixement: <input type="date" name="data_naixement" value="<%=data_naixement %>"></label>
        <%
     	if (errorData_naixement != ""){
     	%>	
        <span style="color:red" ><%=errorData_naixement %> </span>
        <%
        }
     	%>
        <br>
        <label>Sexe: 
            <select name="sexe" >
                <option value="">-- Selecciona --</option>
                <option value="home" <%if(sexe.equals("home")){%>selected<%}%>>home </option>
                <option value="dona" <%if(sexe.equals("dona")){%>selected<%}%>>dona </option>
                <option value="no_declarat" <%if(sexe.equals("no_declarat")){%>selected<%}%>>No_declarat</option>
            </select>
        <%
     	if (errorSexe != ""){
     	%>	
            <span style="color:red" ><%=errorSexe %> </span>
        <%
        }
     	%>
        </label>
        <br>
        <label>Tipus:</label> 
        <input type="radio" name="tipus" value="pelicules" checked> Pelicules 
        <input type="radio" name="tipus" value="series"> Series<br>
        <label>Generes:
        <%
     	if (errorGeneres != ""){
     	%>	
       	 	<span style="color:red" ><%=errorGeneres %> </span></label><br> 
        <%
        }
     	%><br>
        <input type="radio" name="generes" value="accion" checked="checked">  <%if(generes.equals("accion")){%>checked<%}%> accion<br> 
        <input type="radio" name="generes" value="ciencia_ficcio"> <%if(generes.equals("ciencia_ficcio")){%>checked<%}%> ciencia y ficció<br> 
        <input type="radio" name="generes" value="historica"> <%if(generes.equals("historica")){%>checked<%}%> històrica<br> 
        <input type="radio" name="generes" value="drama"> <%if(generes.equals("drama")){%>checked<%}%> Drama<br> 
        <input type="radio" name="generes" value="comedia"> <%if(generes.equals("comedia")){%>checked<%}%> Comedia<br>
        
        <label>Contrasenya: <input type="password" name="contrasenya1"></label>
        <%
     	if (errorContrasenya1 != ""){
     	%>	
        	<span style="color:red" ><%=errorContrasenya1 %> </span>
        <%
        }
     	%>
        <br>
        
        <label>Repetir contrasenya: <input type="password" name="contrasenya2"></label>
        <%
     	if (errorContrasenya2 != ""){
     	%>	
     	<span style="color:red" ><%=errorContrasenya2 %> </span>
   		<%
        }
     	%>
        <br>
        <button type="submit" name="boto">Enviar</button>

    </form>
</body>
</html>