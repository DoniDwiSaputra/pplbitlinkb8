// Function to show success message
function showSuccessMessage() {
  // Create a div element for the message
  const messageDiv = document.createElement('div');
  messageDiv.textContent = 'Sukses, data berhasil ditambahkan!';
  messageDiv.classList.add('success-message');
  // Add additional style for larger popup
  messageDiv.style.fontSize = '20px';
  messageDiv.style.padding = '20px';
  messageDiv.style.backgroundColor = 'green';
  messageDiv.style.color = 'white';
  messageDiv.style.position = 'fixed';
  messageDiv.style.top = '50%';
  messageDiv.style.left = '50%';
  messageDiv.style.transform = 'translate(-50%, -50%)';
  messageDiv.style.zIndex = '9999';
  messageDiv.style.borderRadius = '10px';

  // Append the message div to the body
  document.body.appendChild(messageDiv);

  // Remove the message after 3 seconds
  setTimeout(() => {
      document.body.removeChild(messageDiv);
  }, 3000);
}

  
  // Function to validate form and show success message
  function handleSubmit(event) {
    // Perform form validation here
    // For simplicity, we assume the form is valid
    showSuccessMessage();
  }
  
  // Add event listener to form submission
  document.querySelector('form').addEventListener('submit', handleSubmit);
  