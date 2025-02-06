<%-- 
    Document   : infos_user
    Created on : 10 oct. 2023, 10:48:43
    Author     : bouchaib.lemaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%-- Déclaration des des beans qui sont utilisés --%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informations des utilisateurs</title>
    </head>
    
        <jsp:useBean id="User" class="fr.devavance.metier.beans.User"/>
        <div class="info_user">
            <jsp:getProperty name="User" property="userName"/>
            <jsp:getProperty name="User" property="password"/>
            <jsp:getProperty name="User" property="profil"/>
            <jsp:getProperty name="User" property="auth"/>
            ${ user.userName }
            ${ user.password }
            ${ user.profil }
        </div>
     
        <div class="credentials">
        </div>
        
    
</html>
