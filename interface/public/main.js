// document.getElementById("list-btn").onclick = function() {
// 	// Fetch patient data from the server
// 	document.getElementById("patientList").innerHTML = "";
// 	fetch('/patients')
// 	    .then(response => response.json())
// 	    .then(data => {
// 		  // Iterate through the patient data and display it
// 		  data.forEach(patient => {
// 			const patientList = document.getElementById('patientList');
// 			const patientItem = document.createElement('p');
// 			patientItem.textContent = `Name: ${patient.name}, Address: ${patient.address}`;
// 			patientList.appendChild(patientItem);
// 		  });
// 	    })
// 	    .catch(error => console.error('Error fetching patient data:', error));
//   };

  document.getElementById("list").onclick = function() {
	// Fetch patient data from the server
	document.getElementById("patientList").innerHTML = "";
	fetch('/patients')
	    .then(response => response.json())
	    .then(data => {
		  // Iterate through the patient data and display it
		  data.forEach(patient => {
			const patientList = document.getElementById('patientList');
			const patientItem = document.createElement('p');
			patientItem.textContent = `id: ${patient.id}, Name: ${patient.name}, Address: ${patient.address}, Birth Date: ${patient.birth_date}`;
			patientList.appendChild(patientItem);
		  });
	    })
	    .catch(error => console.error('Error fetching patient data:', error));
  };