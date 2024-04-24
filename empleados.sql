
CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `correo_electronico` varchar(50) DEFAULT NULL,
  `fijo` int(15) DEFAULT NULL,
  `celular` int(20) DEFAULT NULL,
  `whatsapp` int(20) DEFAULT NULL,
  `EPS` varchar(50) DEFAULT NULL,
  `anio_vinculacion` date DEFAULT NULL,
  `Rol` enum('ADMIN','OPERARIO','SUPERVISOR') DEFAULT 'OPERARIO',
  `usuario` varchar(50) NOT NULL,
  `contrasenia` varchar(1000) NOT NULL,
  `fondo_de_pensiones` varchar(100) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `direccion_residencia` varchar(255) DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `contacto_emergencia` varchar(150) DEFAULT NULL,
  `telefono_emergencia` int(11) DEFAULT NULL
)
