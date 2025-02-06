<%-- 
    Document   : infos_user
    Created on : 10 oct. 2023, 10:48:43
    Author     : bouchaib.lemaire
--%>

<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.List"%>
<%@page import="java.io.IOException"%>
<%@page import="fr.devavance.metier.beans.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%-- Déclaration des des beans qui sont utilisés --%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informations des utilisateurs</title>
    </head>
    
    <jsp:useBean id="User" scope="request" class="fr.devavance.metier.beans.User"/>
        <div class="info_user">
            <jsp:getProperty name="User" property="userName"/>
            <jsp:getProperty name="User" property="password"/>
            <jsp:getProperty name="User" property="profil"/>
            <jsp:getProperty name="User" property="auth"/>
            ${ user.userName }
            ${ user.password }
            ${ user.profil }
        </div>
     
        <div class="credentials" style="display: flex; gap: 2rem;">
            <div>
                <strong>Username</strong>
                <%
                Users users = (Users)request.getAttribute("users");
                for(int i=0; i<users.size();i++){
                    out.println("<p>" + users.get(i).getUserName() + "</p>");
                }
                %>
            </div>
            <div>
                <strong>Authorized</strong>
                <%
                for(int i=0; i<users.size();i++){
                out.println("<p>" + users.get(i).getAuth() + "</p>");
                }
                %>
            </div>
        </div>
        
    
</html>
