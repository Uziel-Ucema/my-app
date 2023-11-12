const confirmBtn = document.getElementById('confirmBtn');

confirmBtn.addEventListener('click', () => {
  const selectedFolders = Array.from(document.querySelectorAll('input[name=folder]:checked'))
    .map(checkbox => checkbox.value);

  // Send selectedFolders to the server via an API call
  fetch('/subscribe', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({ folders: selectedFolders }),
  });
});
