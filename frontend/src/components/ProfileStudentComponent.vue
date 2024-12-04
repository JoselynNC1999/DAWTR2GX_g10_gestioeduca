<template>
    <div class="card-container">
      <div class="card">
        <div class="course-tag">CURSO 1BATX</div>
  
        <h2 class="student-name">Alumne Pepito</h2>
  
        <div class="image-container">
          <img
            src="https://via.placeholder.com/150"
            alt="Alumno Pepito"
            class="profile-image"
          />
        </div>
  
        <!-- Botones -->
        <div class="buttons-container">
          <button class="button">ASSIGNATURES</button>
          <button class="button">ENQUESTES</button>
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  //  la lógica 
  </script>
  
  <style scoped>
  .card-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-color: #e5e7eb; 
  }
  
  .card {
    background-color: white;
    padding: 2rem;
    border-radius: 16px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    width: 280px;
    text-align: center;
    position: relative;
  }
  
  
  .course-tag {
    position: absolute;
    top: 10px;
    right: 10px;
    background-color: #4c6ef5;
    color: white;
    padding: 8px 16px;
    font-weight: bold;
    font-size: 0.9rem;
    border-radius: 12px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transform: translate(10%, -10%);
  }
  
  
  .student-name {
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
    border: 4px solid #4c6ef5;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }
  
  .buttons-container {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }
  
  .button {
    background-color: #4c6ef5;
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
    background-color: #3751ff;
    transform: scale(1.05);
  }
  </style>
  