document.getElementById('signup').addEventListener('submit', function(e){
  e.preventDefault();
  const email=document.getElementById('email').value.trim();
  const msg=document.getElementById('message');
  if(email){msg.textContent='Thank you — your interest has been recorded for this prototype demo.';this.reset();}
});