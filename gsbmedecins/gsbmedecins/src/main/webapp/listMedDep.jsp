<!-- Utilisation des tags pour iterer sur la collection et empêcher d'utiliser du code java directement -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="entete.jsp"/>
<div id="contenu">
    <!-- Retour à la page selectDep.jsp -->
    <a href="Control?action=listeMedecinsDep">Retour à la selection </a>
    <br />
    <table class="listeLegere">
         <!-- Affichage de la collection des médecins sous forme de tableau -->
        <caption>Medecins pour le departement n° ${leDep.num}</caption>
        <tr>
            <th>Nom</th>
            <th>Prenom</th>
            <th>Adresse</th>
            <th>Specialition</th>
            <th>Telephone</th>
        </tr>
        <c:forEach var="med" items="${listMeds}">
            <tr>
                <td>${med.nom}</td>
                <td>${med.prenom}</td>
                <td>${med.adresse}</td>
                <td>${med.spe}</td>
                <td>${med.tel}</td>
            </tr>
        </c:forEach>
    </table>
</div>
<jsp:include page="pied.jsp"/>
