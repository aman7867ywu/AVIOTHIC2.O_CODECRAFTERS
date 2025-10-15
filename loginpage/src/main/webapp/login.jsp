

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Management System</title>
  <style>
  
* { margin:0; padding:0; box-sizing:border-box; font-family:'Poppins',sans-serif; }

body {
  overflow: hidden;
  height: 100vh;
  display:flex;
  align-items:center;
  justify-content:center;
  background: linear-gradient(-45deg,#0f0c29,#302b63,#24243e,#533483);
  background-size:400% 400%;
  animation: gradientMove 12s infinite alternate;
}

/* Floating neon circles */
.background .circle {
  position:absolute;
  border-radius:50%;
  background: radial-gradient(circle,#00ffff 10%,transparent 70%);
  animation: float 5s infinite ease-in-out;
}

.background .circle { width:200px; height:200px; top:10%; left:10%; }
.background .circle.two { width:250px; height:250px; bottom:15%; right:10%; animation-delay:3s; }
.background .circle.three { width:150px; height:150px; top:65%; left:75%; animation-delay:5s; }

/* Main container */
.main { position:relative; z-index:2; text-align:center; }

/* Title */
.title { font-size:2.4rem; color:#00ffff; text-shadow:0 0 20px #00ffff; animation: glowText 3s infinite alternate; margin-bottom:20px; }

/* Form box */
.form-box {
  background: rgba(255,255,255,0.05);
  border-radius:20px;
  padding:35px 40px;
  width:90%;
  max-width:420px;
  margin:auto;
  box-shadow:0 0 20px rgba(0,255,255,0.2);
  backdrop-filter: blur(10px);
  border: 2px solid rgba(0,255,255,0.2);
  transition: all 0.3s ease;
  animation: popUp 1.2s ease-out;
}

.form-box:hover {
  transform: translateY(-5px);
  box-shadow:0 0 40px rgba(0,255,255,0.5);
  border-color: rgba(0,255,255,0.5);
}

.form-box h2 { margin-bottom:20px; color:#00e0ff; text-shadow:0 0 10px #00ffff; }

/* Input groups with floating labels */
.input-group {
  position: relative;
  margin-bottom:20px;
}

.input-group input,
.input-group select {
  width:100%;
  padding:12px 10px;
  border:none;
  border-radius:8px;
  background: rgba(61,255,255,0.1); 
  color:#fff;
  outline:none;
  transition: all 0.3s ease;
}

.input-group label {
  position:absolute;
  left:12px;
  top:50%;
  transform: translateY(-50%);
  color:#003b3b;
  pointer-events:none;
  transition:0.3s;
}

.input-group input:focus,
.input-group input:valid,
.input-group select:focus,
.input-group select:valid {
  background: rgba(255,255,255,0.25);
  box-shadow:0 0 12px #00ffff;
}

.input-group input:focus + label,
.input-group input:valid + label,
.input-group select:focus + label,
.input-group select:valid + label {
  top:-8px;
  font-size:0.85rem;
  color:#00ffea;
}

/* Buttons */
.buttons { display:flex; justify-content:space-between; margin-top:20px; }

button {
  width:48%;
  padding:12px;
  border:none;
  border-radius:10px;
  font-weight:600;
  cursor:pointer;
  transition: all 0.3s ease;
}

button.primary {
  background: linear-gradient(45deg,#00ffff,#00ff99);
  color:#000;
  box-shadow:0 0 10px #00ffff;
  animation: buttonGlow 2s infinite alternate;
}

button.primary:hover { transform:scale(1.05); box-shadow:0 0 25px #00ffff; }

button.secondary {
  background: linear-gradient(45deg,#ff4081,#ff9100);
  color:#fff;
  box-shadow:0 0 10px #ff9100;
}

button.secondary:hover { transform:scale(1.05); box-shadow:0 0 25px #ff9100; }


/* Animations */
@keyframes gradientMove { 0%{background-position:0% 50%;} 100%{background-position:100% 50%;} }
@keyframes float { 0%,100%{transform:translateY(0);} 50%{transform:translateY(-30px);} }
@keyframes popUp { from{transform:scale(0.8);opacity:0;} to{transform:scale(1);opacity:1;} }
@keyframes glowText { from{text-shadow:0 0 15px #00ffff;} to{text-shadow:0 0 25px #00ff99,0 0 40px #00ffff;} }
@keyframes buttonGlow { from{box-shadow:0 0 10px #00ffff;} to{box-shadow:0 0 25px #00ff99;} }
  
  </style>
</head>
<body>
  <div class="background">
    <div class="circle"></div>
    <div class="circle two"></div>
    <div class="circle three"></div>
  </div>

  <section class="main">
    <h1 class="title">Student Management System</h1>

    <div class="form-box">
      <h2>Student Data Entry</h2>
      <form action ="rgpage" method = "post"  >
        <div class="input-group">
          <input type="text" required  name="name1">
          <label>Full Name</label>
        </div>

        <div class="input-group">
          <input type="text" required  name="pass1">
          <label>Roll Number</label>
        </div>

        <div class="input-group">
          <input type="text" required>
          <label>Course</label>
        </div>

        <div class="input-group">
          <select required>
            <option value="" disabled selected></option>
            <option class="fontt">1st Year</option>
            <option>2nd Year</option>
            <option>3rd Year</option>
            <option>4th Year</option>
          </select>
          <label>Year</label>
        </div>

        <div class="input-group">
          <input type="email" name="email1">
          <label>Email</label>
        </div>

        <div class="input-group">
          <input type="tel">
          <label>Phone</label>
        </div>

        <div class="buttons">
          <button type="submit" class="primary">Submit</button>
          <button type="reset" class="secondary">Reset</button>
        </div>
      </form>
    </div>
  </section>
</body>
</html>