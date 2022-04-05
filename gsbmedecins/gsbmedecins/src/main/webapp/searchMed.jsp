
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="entete.jsp"/>
<div id="contenu">
    <h2>Recherche des médecins par nom</h2>
    <form action="Control?action=listeMedecinsNom" method="post">
        <div class="corpsForm">
            <p>
                <label for="nomMed">Nom du médecin : </label>
                <input type="text" name="nomMed">
            </p>
        </div>
        <div class="piedForm">
            <p>
                <input id="ok" type="submit" value="Valider" size="20" />
                <input id="annuler" type="reset" value="Effacer" size="20" />
            </p> 
        </div>

    </form>
    <jsp:include page="pied.jsp"/>
