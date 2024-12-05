<template>
    <div class="bg-gradient-to-r from-blue-100 via-blue-200 to-blue-300 py-24 sm:py-32 flex justify-center items-center">
      <div class="max-w-7xl text-center">
        <!-- Card del estudiante -->
        <div class="bg-white rounded-3xl shadow-2xl p-16 max-w-7xl mx-auto border-4 border-gray-400 transform hover:scale-105 transition-transform duration-300">
          <div class="flex flex-col lg:flex-row items-center lg:items-start justify-between">
            <!-- Imagen del estudiante -->
            <div class="flex-shrink-0 w-72 h-72 mb-10 lg:mb-0 rounded-2xl overflow-hidden border-4 border-indigo-600 shadow-lg transform hover:scale-110 transition-transform duration-300">
              <img 
                class="w-full h-full object-cover" 
                :src="student.imageUrl" 
                alt="Foto del estudiante"
              />
            </div>
            
            <!-- Información del estudiante -->
            <div class="lg:ml-16 flex flex-col justify-between w-full">
              <h3 class="text-5xl font-extrabold text-gray-800 mb-6 drop-shadow-sm">{{ student.name }}</h3>
              <p class="text-3xl text-gray-600 font-medium mb-12 italic">{{ student.role }}</p>
  
              <!-- Botones -->
              <div class="flex flex-wrap gap-10 w-full mt-6">
                <button 
                  class="w-full sm:w-auto px-10 py-5 bg-indigo-600 text-white font-bold rounded-xl shadow-md hover:bg-indigo-700 hover:shadow-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 transition-all duration-300 text-2xl"
                >
                  ASSIGNATURES
                </button>
                <button 
                  class="w-full sm:w-auto px-10 py-5 bg-gray-600 text-white font-bold rounded-xl shadow-md hover:bg-gray-700 hover:shadow-lg focus:outline-none focus:ring-2 focus:ring-gray-500 transition-all duration-300 text-2xl"
                >
                  ENQUESTES
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  const student = {
    name: 'Leslie Alexander',
    role: 'Estudiant de 1r Batx',
    imageUrl:
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80',
  }
  </script>
  
  <style scoped>
  @import '@/assets/output.css';
  
  /* Mejoras visuales */
  .shadow-2xl {
    box-shadow: 0 25px 50px rgba(0, 0, 0, 0.2);
  }
  
  .transition-transform {
    transition: transform 0.3s ease-in-out;
  }
  
  .transition-all {
    transition: all 0.3s ease-in-out;
  }
  
  .drop-shadow-sm {
    filter: drop-shadow(2px 3px 4px rgba(0, 0, 0, 0.1));
  }
  
  .drop-shadow-lg {
    filter: drop-shadow(4px 6px 8px rgba(0, 0, 0, 0.15));
  }
  </style>
  