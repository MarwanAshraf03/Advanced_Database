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
 document.getElementById("add").onclick = function () {
	// let formDiv = document.getElementById("add-form");
	// document.getElementsByClassName("add-form").style.display = "flex";
	document.querySelector(".add-form").style.display = "flex";
	// document.querySelector(".add-form").addEventListener('submit', function () {
	// 	let name = document.getElementById("name").value;
	// 	let address = document.getElementById("address").value;
	// 	let birth_date = document.getElementById("birth_date").value;
	// 	let ph_number = document.getElementById("ph_number").value;
	// 	let number_of_days = document.getElementById("number_of_days").value;
	// 	let room_id = document.getElementById("room_id").value;
	// 	document.querySelector(".add-form").style.display = "none";
	//  });
	document.getElementById("input-submit-add").onclick = function () {
		let name = document.getElementById("name").value;
		let address = document.getElementById("address").value;
		let birth_date = document.getElementById("birth_date").value;
		let ph_number = document.getElementById("ph_number").value;
		let number_of_days = document.getElementById("number_of_days").value;
		let room_id = document.getElementById("room_id").value;
		
		// Create a data object to send to the server
		const data = {
		    name: name,
		    address: address,
		    birth_date: birth_date,
		    ph_number: ph_number,
		    number_of_days: number_of_days,
		    room_id: room_id
		};
	  
		// Send a POST request to the server
		fetch('/patient-add', {
		    method: 'POST',
		    headers: {
			  'Content-Type': 'application/json'
		    },
		    body: JSON.stringify(data)
		})
		.then(response => {
		    if (!response.ok) {
			  throw new Error('Network response was not ok');
		    }
		    return response.json();
		})
		.then(data => {
		    console.log('Data sent successfully:', data);
		    // Optionally, handle the response from the server here
		})
		.catch(error => {
		    console.error('Error sending data to server:', error);
		});
	  
		// Hide the form after submitting
		document.querySelector(".add-form").style.display = "none";
	  };
	  
};
