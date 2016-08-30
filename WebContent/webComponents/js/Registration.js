
    function disableCS() {
        if(document.getElementById("CS").checked){
            document.getElementById("IS").disabled = true;
        }
        else{
            document.getElementById("IS").disabled = false;
        }
    }
    function disableIS() {
        // body...
        if(document.getElementById("IS").checked){
            document.getElementById("CS").disabled = true;
        }
        else{
            document.getElementById("CS").disabled = false;
        }
    }
