const listaC = "${podrucjeC}".replace("[", "").replace("]", "").split(", ");
const languageContainerC = document.getElementById("select-box3");

    listaC.forEach( element => {
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
    languageContainerC.appendChild(childDiv);
 });


