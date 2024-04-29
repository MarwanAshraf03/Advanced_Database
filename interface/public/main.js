let pageName = window.location.pathname;
document.getElementById("list").onclick = function() {
	if (pageName === '/index.html')
	{
		// Fetch patient data from the server
		if (window.getComputedStyle(document.getElementById("patientList"), null).display === 'none') {
			document.getElementById("patientList").style.display = 'block';
			document.querySelector(".add-form").style.display = "none";
			document.querySelector(".update-form").style.display = "none";
			document.querySelector(".remove-form").style.display = "none";
		}
		else if (window.getComputedStyle(document.getElementById("patientList"), null).display === 'block') {
			document.getElementById("patientList").style.display = 'none';
		}
		// console.log(document.getElementById("patientList").style.display == "block");
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
	} else if (pageName === '/doctor.html') {
		// Fetch patient data from the server
		if (window.getComputedStyle(document.getElementById("doctorList"), null).display === 'none') {
			document.getElementById("doctorList").style.display = 'block';
			document.querySelector(".add-form").style.display = "none";
			document.querySelector(".update-form").style.display = "none";
			document.querySelector(".remove-form").style.display = "none";
		}
		else if (window.getComputedStyle(document.getElementById("doctorList"), null).display === 'block') {
			document.getElementById("doctorList").style.display = 'none';
		}
		// console.log(document.getElementById("patientList").style.display == "block");
		document.getElementById("doctorList").innerHTML = "";
		fetch('/doctorList')
		.then(response => response.json())
		.then(data => {
			console.log(json(data));
			// Iterate through the patient data and display it
			var doctors = {};
			for (let index = 0; index < data.length; index++) {
				var doid = data[index];
				if (!(doid.id in Object.keys(doctors))) {
					doctors[doid.id] = [
						{
						'name': doid.name,
						'address': doid.address,
						'birth date': doid.birth_date,
						'phone number': doid.ph_number,
						'specialization': doid.specialization,
						'rank': doid.rank,
					},
					{
						"patient id": doid.pid,
						"patient name": doid.pname,
						"disease id": doid.did,
						"treatment id": doid.tid,
						"treatment description": doid.description
					}
				];					
				} else {
					doctors[doid.id].push({
						"patient id": doid.pid,
						"patient name": doid.pname,
						"disease id": doid.did,
						"treatment id": doid.tid,
						"treatment description": doid.description
					});
				}
			}
			const doctorList = document.getElementById('doctorList');
			const doctorItem = document.createElement('p');
			doctorItem.textContent = Object.entries(doctors);
			console.log(doctors);
			doctorList.appendChild(doctorItem);
			// data.forEach(doctor => {
			// 	const doctorList = document.getElementById('doctorList');
			// 	const doctorItem = document.createElement('p');
			// 	const patientList = document.createElement('ul');
			// 	const patientItem = document.createElement('p');
			// 	console.log(doctor);
			// 	// doctorItem.textContent = `id: ${doctor.id}, Name: ${doctor.name}, Address: ${doctor.address}, Birth Date: ${doctor.birth_date}, Specialization: ${doctor.specialization}, Rank: ${doctor.rank}`;
			// 	const temp = Object.entries(doctor);
			// 	doctorItem.textContent = temp.map(([key, value]) => `{${key}: ${value}}`);
			// 	doctorList.appendChild(doctorItem);
			// });
		})
		.catch(error => console.error('Error fetching patient data:', error));

	}
};
document.getElementById("add").onclick = function () {
	if (document.querySelector(".add-form").style.display === "none") {
		document.querySelector(".add-form").style.display = "flex";
		document.querySelector(".update-form").style.display = "none";
		document.getElementById("patientList").style.display = 'none';
		document.querySelector(".remove-form").style.display = "none";
	}
	else if (document.querySelector(".add-form").style.display = "flex") {
		document.querySelector(".add-form").style.display = "none";
	}
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
document.getElementById("edit").onclick = function () {
	if (document.querySelector(".update-form").style.display === "none") {
		document.querySelector(".update-form").style.display = "flex";
		document.querySelector(".add-form").style.display = "none";
		document.getElementById("patientList").style.display = 'none';
		document.querySelector(".remove-form").style.display = "none";
	}
	else if (document.querySelector(".update-form").style.display = "flex") {
		document.querySelector(".update-form").style.display = "none";
	}
	document.getElementById("input-submit-edit").onclick = function () {
		let id = document.getElementById("id-edit").value;
		let name = document.getElementById("name-edit").value;
		let address = document.getElementById("address-edit").value;
		let birth_date = document.getElementById("birth_date-edit").value;
		let ph_number = document.getElementById("ph_number-edit").value;
		let number_of_days = document.getElementById("number_of_days-edit").value;
		let room_id = document.getElementById("room_id-edit").value;
		
		// Create a data object to send to the server
		const data = {
			id: id,
		    name: name,
		    address: address,
		    birth_date: birth_date,
		    ph_number: ph_number,
		    number_of_days: number_of_days,
		    room_id: room_id
		};
	  
		// Send a POST request to the server
		fetch('/patient-edit', {
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
		document.querySelector(".update-form").style.display = "none";
	  };
	  
};

document.getElementById("remove").onclick = function () {
	if (document.querySelector(".remove-form").style.display === "none") {
		document.querySelector(".remove-form").style.display = "flex";
		document.querySelector(".update-form").style.display = "none";
		document.querySelector(".add-form").style.display = "none";
		document.getElementById("patientList").style.display = 'none';
	}
	else if (document.querySelector(".remove-form").style.display = "flex") {
		document.querySelector(".remove-form").style.display = "none";
	}
	document.getElementById("input-submit-remove").onclick = function () {
		let id = document.getElementById("id-remove").value;
		
		// Create a data object to send to the server
		const data = {
			id: id,
		};
	  
		// Send a POST request to the server
		fetch('/patient-remove', {
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
		document.querySelector(".remove-form").style.display = "none";
	  };
	  
};
