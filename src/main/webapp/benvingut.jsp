<%@ page language="java" contentType="application/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%String nom = request.getParameter("nom");%>
<%String cognom = request.getParameter("cognom");%>
<%String email = request.getParameter("email");%>
<%String data_naixement = request.getParameter("data_naixement");%>
<%String sexe = request.getParameter("sexe");%>
<%String tipus = request.getParameter("tipus");%>
<%String generes = request.getParameter("generes");%>
<%String contrasenya1 = request.getParameter("contrasenya1");%>

<%="<persona>"%>
<%=" <nom>" + nom + "</nom>"%>
<%=" <cognom>" + cognom + "</cognom>"%>
<%=" <email>" + email + "</email>"%>
<%=" <data_naixement>" + data_naixement + "</data_naixement>"%>
<%=" <sexe>" + sexe + "</sexe>"%>
<%=" <tipus>" + tipus + "</tipus>"%>
<%=" <generes>" +generes+ "</generes>"%>
<%="<contrasenya1>" +contrasenya1+ "</contrasenya1>"%>
<%="</persona>"%>

