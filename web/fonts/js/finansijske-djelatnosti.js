const listaK = "${podrucjeK}".replace("[", "").replace("]", "").split(", ");
const languageContainerK = document.getElementById("select-box11");

    listaK.forEach( element => {
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
    languageContainerK.appendChild(childDiv);
 });


