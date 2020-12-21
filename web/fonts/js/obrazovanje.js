const listaP = "${podrucjeP}".replace("[", "").replace("]", "").split(", ");
const languageContainerP = document.getElementById("select-box16");

    listaP.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio")
        radioSpan.setAttribute('class', "checkmark")
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);
    languageContainerP.appendChild(childDiv);
 });


