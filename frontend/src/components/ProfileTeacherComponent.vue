<template>
    <div class="card-container">
      <div class="card">
        
        <div class="course-tag">ProfesSor</div>
  
        
        <h2 class="professor-name">Professor Juanito</h2>
  
        
        <div class="image-container">
          <img
            src="https://via.placeholder.com/150"
            alt="Professor Pepito"
            class="profile-image"
          />
        </div>
  
        <!-- Botones -->
        <div class="buttons-container">
          <button class="button">CURSOS</button>
          <button class="button">LLISTAT D'ALUMNES</button>
          <button class="button">FORMULARIS</button>
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  //  la lógica aquii.
  </script>
  
  <style scoped>
  .card-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-color: #f3f4f6; 
  }
  
  .card {
    background-color: white;
    padding: 2rem;
    border-radius: 16px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: center;
    position: relative;
  }
  
  .course-tag {
    position: absolute;
    top: 10px;
    right: 10px;
    background-color: #10b981;
    color: white;
    padding: 8px 16px;
    font-weight: bold;
    font-size: 0.9rem;
    border-radius: 12px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transform: translate(10%, -10%);
  }
  
  .professor-name {
    font-size: 1.8rem;
    font-weight: bold;
    color: #1f2937;
    margin-bottom: 1rem;
    font-family: 'Arial', sans-serif;
  }
  
  .image-container {
    margin-bottom: 1.5rem;
  }
  
  .profile-image {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    object-fit: cover;
    border: 4px solid #10b981;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }
  
  .buttons-container {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }
  
  .button {
    background-color: #10b981;
    color: white;
    font-size: 1.1rem;
    font-weight: bold;
    padding: 12px 24px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
  }
  
  .button:hover {
    background-color: #059669;
    transform: scale(1.05);
  }
  </style>
  