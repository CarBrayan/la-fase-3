<?php
// index.php - Página principal de EduMeal
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sistema de gestión del restaurante escolar - IE Indalecio Vasquez">
    <title>EduMeal - Sistema de Gestión Escolar</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="font-sans text-gray-800">
    <!-- Overlay con fondo -->
    <div class="overlay min-h-screen">
        
        <!-- Navegación -->
        <nav class="bg-gradient-to-r from-green-700 to-green-600 text-white px-4 md:px-8 py-4 shadow-lg sticky top-0 z-50">
            <div class="container mx-auto flex justify-between items-center">
                <div class="flex items-center gap-3">
                    <span class="text-4xl">🍽️</span>
                    <span class="text-2xl md:text-3xl font-bold">EduMeal</span>
                </div>
                <div class="hidden md:flex space-x-6 items-center">
                    <a href="index.php" class="nav-link active">
                        <span class="text-xl">🏠</span> Inicio
                    </a>
                    <a href="admin.php" class="nav-link">
                        <span class="text-xl">🧑‍💼</span> Admin
                    </a>
                    <a href="registro.php" class="nav-link">
                        <span class="text-xl">📝</span> Registro
                    </a>
                    <a href="exportar.php" class="nav-link-btn">
                        <span class="text-xl">📊</span> Exportar
                    </a>
                </div>
                <!-- Menú móvil -->
                <button id="menuToggle" class="md:hidden text-white text-3xl focus:outline-none">
                    ☰
                </button>
            </div>
            
            <!-- Menú móvil desplegable -->
            <div id="mobileMenu" class="hidden md:hidden mt-4 space-y-3 pb-4">
                <a href="index.php" class="mobile-nav-link">🏠 Inicio</a>
                <a href="admin.php" class="mobile-nav-link">🧑‍💼 Admin</a>
                <a href="registro.php" class="mobile-nav-link">📝 Registro</a>
                <a href="exportar.php" class="mobile-nav-link">📊 Exportar</a>
            </div>
        </nav>

        <!-- Encabezado Hero -->
        <header class="hero-section text-center py-12 md:py-20 px-4">
            <div class="container mx-auto">
                <h1 class="text-4xl md:text-6xl font-bold text-green-800 mb-4 animate-fade-in">
                    Bienvenido a <span class="text-green-600">EduMeal</span>
                </h1>
                <p class="text-lg md:text-2xl text-green-900 font-medium animate-slide">
                    Donde la tecnología y la alimentación se encuentran
                </p>
                <div class="mt-8">
                    <a href="registro.php" class="cta-button">
                        Comenzar Registro →
                    </a>
                </div>
            </div>
        </header>

        <!-- Sección de contenido principal -->
        <section class="container mx-auto px-4 py-12">
            <div class="grid md:grid-cols-2 gap-8 max-w-6xl mx-auto">
                
                <!-- Card 1: Registro de Ingresos -->
                <div class="feature-card group">
                    <div class="card-icon">🥒</div>
                    <h2 class="text-2xl md:text-3xl font-bold text-green-700 mb-4">
                        Registro de Ingresos
                    </h2>
                    <p class="text-gray-700 leading-relaxed mb-6">
                        Accede al panel para registrar el ingreso de los estudiantes al restaurante escolar. 
                        Herramienta rápida, sencilla y segura para todos los grados de secundaria.
                    </p>
                    <div class="space-y-3 mb-6">
                        <div class="feature-item">✓ Registro en tiempo real</div>
                        <div class="feature-item">✓ Interface intuitiva</div>
                        <div class="feature-item">✓ Control por grados</div>
                    </div>
                    <a href="admin.php" class="card-button">
                        🍳 Ingresar al Panel
                    </a>
                </div>

                <!-- Card 2: Sobre EduMeal -->
                <div class="feature-card group">
                    <div class="card-icon">🥦</div>
                    <h2 class="text-2xl md:text-3xl font-bold text-green-700 mb-4">
                        Sobre EduMeal
                    </h2>
                    <p class="text-gray-700 leading-relaxed mb-6">
                        EduMeal es un sistema informático desarrollado para la gestión del ingreso al 
                        restaurante escolar de la Institución Educativa Indalecio Vásquez, sede principal 
                        Pesca-Boyacá. Combinando tecnología educativa con una experiencia amigable e intuitiva.
                    </p>
                    <div class="flex justify-center my-6">
                        <img src="imagenes/logo.png" 
                             alt="Logo EduMeal" 
                             class="w-64 md:w-80 rounded-lg shadow-lg transform group-hover:scale-105 transition-transform duration-300">
                    </div>
                </div>
            </div>
        </section>

        <!-- Sección de estadísticas -->
        <section class="bg-green-50 py-12 mt-8">
            <div class="container mx-auto px-4">
                <div class="grid grid-cols-2 md:grid-cols-4 gap-6 max-w-5xl mx-auto">
                    <div class="stat-card">
                        <div class="text-4xl mb-2">👥</div>
                        <div class="stat-number">500+</div>
                        <div class="stat-label">Estudiantes</div>
                    </div>
                    <div class="stat-card">
                        <div class="text-4xl mb-2">🏫</div>
                        <div class="stat-number">12</div>
                        <div class="stat-label">Cursos</div>
                    </div>
                    <div class="stat-card">
                        <div class="text-4xl mb-2">📅</div>
                        <div class="stat-number">180</div>
                        <div class="stat-label">Días activos</div>
                    </div>
                    <div class="stat-card">
                        <div class="text-4xl mb-2">✅</div>
                        <div class="stat-number">100%</div>
                        <div class="stat-label">Confiabilidad</div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Pie de página -->
        <footer class="bg-gradient-to-r from-green-800 to-green-700 text-white py-8 mt-16">
            <div class="container mx-auto px-4">
                <div class="text-center mb-6">
                    <p class="text-lg font-semibold">&copy; 2025 EduMeal - Sistema de Gestión Escolar</p>
                    <p class="text-sm text-green-200 mt-2">IE Indalecio Vásquez - Pesca, Boyacá</p>
                </div>
                
                <!-- Información del equipo -->
                <div class="max-w-3xl mx-auto bg-green-900 bg-opacity-50 rounded-lg p-6 mt-8">
                    <h3 class="text-xl font-bold text-center mb-4">🎓 Equipo de Desarrollo</h3>
                    <div class="grid md:grid-cols-2 gap-4 text-sm">
                        <div>
                            <p class="font-semibold text-green-300 mb-2">Desarrolladoras:</p>
                            <ul class="space-y-1 text-green-100">
                                <li>• Diana Camargo</li>
                                <li>• Erika Córdoba</li>
                                <li>• Ximena Herrera</li>
                                <li>• Tatiana Moreno</li>
                                <li>• Zara Pérez</li>
                            </ul>
                        </div>
                        <div>
                            <p class="font-semibold text-green-300 mb-2">Asesores:</p>
                            <ul class="space-y-1 text-green-100">
                                <li>• Mg. Oscar Emerson Becerra Amaya</li>
                                <li class="text-xs">Docente IE</li>
                                <li>• Ing. Floralba Albarracín Cristancho</li>
                                <li class="text-xs">Instructora SENA</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="text-center mt-6 text-sm text-green-200">
                    <p>Desarrollado con 💚 para la educación</p>
                </div>
            </div>
        </footer>

    </div>

    <!-- JavaScript -->
    <script>
        // Toggle menú móvil
        const menuToggle = document.getElementById('menuToggle');
        const mobileMenu = document.getElementById('mobileMenu');

        menuToggle.addEventListener('click', function() {
            mobileMenu.classList.toggle('hidden');
            this.textContent = mobileMenu.classList.contains('hidden') ? '☰' : '✕';
        });

        // Cerrar menú al hacer clic en un enlace
        const mobileLinks = document.querySelectorAll('.mobile-nav-link');
        mobileLinks.forEach(link => {
            link.addEventListener('click', function() {
                mobileMenu.classList.add('hidden');
                menuToggle.textContent = '☰';
            });
        });

        // Animación de entrada suave
        window.addEventListener('load', function() {
            document.body.classList.add('loaded');
        });
    </script>
</body>
</html>