-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2024 a las 01:15:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokemones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `usuario`, `pass`) VALUES
(1, 'admin', '12345'),
(2, 'Jose', 'poke'),
(3, 'Maria', 'pikachu12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--
CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id`, `imagen`, `tipo`, `numero`, `descripcion`) VALUES
(1, 'Bulbasaur', 'Planta', '1', 'Bulbasaur es un Pokémon de tipo Planta. Es un pequeño Pokémon de color verde claro con una planta en su espalda.'),
(2, 'Ivysaur', 'Planta', '2', 'Ivysaur es un Pokémon de tipo Planta. Es la evolución de Bulbasaur. Tiene una flor en su espalda que está en proceso de florecimiento.'),
(3, 'Venusaur', 'Planta', '3', 'Venusaur es un Pokémon de tipo Planta. Es la evolución final de Bulbasaur. Tiene una gran flor en su espalda que ha florecido completamente.'),
(4, 'Charmander', 'Fuego', '4', 'Charmander es un Pokémon de tipo Fuego. Tiene una llama en la punta de su cola y es de color naranja.'),
(5, 'Charmeleon', 'Fuego', '5', 'Charmeleon es un Pokémon de tipo Fuego. Es la evolución de Charmander. Tiene una llama más grande en la punta de su cola y es de color rojo oscuro.'),
(6, 'Charizard', 'Fuego', '6', 'Charizard es un Pokémon de tipo Fuego. Es la evolución final de Charmander. Es un poderoso dragón volador con alientos de fuego.'),
(7, 'Squirtle', 'Agua', '7', 'Squirtle es un Pokémon de tipo Agua. Es de color azul y tiene una concha en su espalda.'),
(8, 'Wartortle', 'Agua', '8', 'Wartortle es un Pokémon de tipo Agua. Es la evolución de Squirtle. Tiene una cola cubierta de piel y orejas largas.'),
(9, 'Blastoise', 'Agua', '9', 'Blastoise es un Pokémon de tipo Agua. Es la evolución final de Squirtle. Tiene cañones de agua en su espalda.'),
(10, 'Caterpie', 'Bicho', '10', 'Caterpie es un Pokémon de tipo Bicho. Es una pequeña oruga de color verde.'),
(11, 'Metapod', 'Bicho', '11', 'Metapod es un Pokémon de tipo Bicho. Es la evolución de Caterpie. Tiene una dura capa protectora y no puede moverse mucho.'),
(12, 'Butterfree', 'Bicho', '12', 'Butterfree es un Pokémon de tipo Bicho y Volador. Es la evolución final de Caterpie. Tiene grandes alas y puede lanzar polen para dormir a sus enemigos.'),
(13, 'Weedle', 'Bicho', '13', 'Weedle es un Pokémon de tipo Bicho y Veneno. Tiene un aguijón venenoso en la parte superior de su cabeza.'),
(14, 'Kakuna', 'Bicho', '14', 'Kakuna es un Pokémon de tipo Bicho y Veneno. Es la evolución de Weedle. Está envuelto en un capullo duro y apenas se mueve.'),
(15, 'Beedrill', 'Bicho', '15', 'Beedrill es un Pokémon de tipo Bicho y Veneno. Es la evolución final de Weedle. Tiene aguijones venenosos y puede volar a gran velocidad.'),
(16, 'Pidgey', 'Normal', '16', 'Pidgey es un Pokémon de tipo Normal y Volador. Es pequeño y tiene plumas marrones y blancas.'),
(17, 'Pidgeotto', 'Normal', '17', 'Pidgeotto es un Pokémon de tipo Normal y Volador. Es la evolución de Pidgey. Tiene plumas más grandes y puede volar a grandes alturas.'),
(18, 'Pidgeot', 'Normal', '18', 'Pidgeot es un Pokémon de tipo Normal y Volador. Es la evolución final de Pidgey. Tiene plumas majestuosas y es un excelente volador.'),
(19, 'Rattata', 'Normal', '19', 'Rattata es un Pokémon de tipo Normal. Es pequeño y tiene bigotes largos.'),
(20, 'Raticate', 'Normal', '20', 'Raticate es un Pokémon de tipo Normal. Es la evolución de Rattata. Tiene dientes afilados y es conocido por roer cosas.'),
(21, 'Spearow', 'Normal', '21', 'Spearow es un Pokémon de tipo Normal y Volador. Es pequeño y tiene un pico largo y afilado.'),
(22, 'Fearow', 'Normal', '22', 'Fearow es un Pokémon de tipo Normal y Volador. Es la evolución de Spearow. Tiene un pico grande y puede volar a grandes velocidades.'),
(23, 'Ekans', 'Veneno', '23', 'Ekans es un Pokémon de tipo Veneno. Es una serpiente morada con ojos amarillos y puede inflar su cuerpo para asustar a los enemigos.'),
(24, 'Arbok', 'Veneno', '24', 'Arbok es un Pokémon de tipo Veneno. Es la evolución de Ekans. Tiene una capucha que puede inflar para parecer más grande y peligroso.'),
(25, 'Pikachu', 'Electrico', '25', 'Pikachu es un Pokémon de tipo Eléctrico. Es una pequeña criatura amarilla con mejillas rojas y una cola en forma de rayo.'),
(26, 'Raichu', 'Electrico', '26', 'Raichu es un Pokémon de tipo Eléctrico. Es la evolución de Pikachu. Tiene orejas largas y puntiagudas y es capaz de generar grandes cantidades de electricidad.'),
(27, 'Sandshrew', 'Tierra', '27', 'Sandshrew es un Pokémon de tipo Tierra. Tiene un cuerpo cubierto de púas y puede enrollarse en una bola para protegerse.'),
(28, 'Sandslash', 'Tierra', '28', 'Sandslash es un Pokémon de tipo Tierra. Es la evolución de Sandshrew. Tiene púas más grandes y afiladas y es capaz de excavar rápidamente.'),
(29, 'Nidoran♀', 'Veneno', '29', 'Nidoran♀ es un Pokémon de tipo Veneno. Es una criatura rosa con orejas puntiagudas y cuernos en su espalda.'),
(30, 'Nidorina', 'Veneno', '30', 'Nidorina es un Pokémon de tipo Veneno. Es la evolución de Nidoran♀. Tiene una cola larga y es más grande que Nidoran♀.'),
(31, 'Nidoqueen', 'Veneno', '31', 'Nidoqueen es un Pokémon de tipo Veneno y Tierra. Es la evolución final de Nidoran♀. Tiene una gran corona y es robusta y poderosa.'),
(32, 'Nidoran♂', 'Veneno', '32', 'Nidoran♂ es un Pokémon de tipo Veneno. Es similar a Nidoran♀ pero de color azul y con cuernos más grandes.'),
(33, 'Nidorino', 'Veneno', '33', 'Nidorino es un Pokémon de tipo Veneno. Es la evolución de Nidoran♂. Tiene una espalda con púas y es más fuerte que Nidoran♂.'),
(34, 'Nidoking', 'Veneno', '34', 'Nidoking es un Pokémon de tipo Veneno y Tierra. Es la evolución final de Nidoran♂. Tiene una gran fuerza y ​​puede derribar edificios con su poder.'),
(35, 'Clefairy', 'Hada', '35', 'Clefairy es un Pokémon de tipo Hada. Es pequeño y de color rosa con grandes orejas y una cola esponjosa.'),
(36, 'Clefable', 'Hada', '36', 'Clefable es un Pokémon de tipo Hada. Es la evolución de Clefairy. Tiene alas y es capaz de volar.'),
(37, 'Vulpix', 'Fuego', '37', 'Vulpix es un Pokémon de tipo Fuego. Es una criatura de color naranja con seis colas y ojos azules.'),
(38, 'Ninetales', 'Fuego', '38', 'Ninetales es un Pokémon de tipo Fuego. Es la evolución de Vulpix. Tiene nueve colas y es conocido por su gracia y belleza.'),
(39, 'Jigglypuff', 'Normal', '39', 'Jigglypuff es un Pokémon de tipo Normal. Es una bola rosa con grandes ojos y orejas.'),
(40, 'Wigglytuff', 'Normal', '40', 'Wigglytuff es un Pokémon de tipo Normal y Hada. Es la evolución de Jigglypuff. Tiene una piel suave y puede cantar con una voz hipnótica.'),
(41, 'Zubat', 'Veneno', '41', 'Zubat es un Pokémon de tipo Veneno y Volador. Es un murciélago de color morado con grandes ojos y alas membranosas.'),
(42, 'Golbat', 'Veneno', '42', 'Golbat es un Pokémon de tipo Veneno y Volador. Es la evolución de Zubat. Tiene una gran boca llena de dientes afilados.'),
(43, 'Oddish', 'Planta', '43', 'Oddish es un Pokémon de tipo Planta y Veneno. Es una pequeña planta con pies y hojas en forma de cono.'),
(44, 'Gloom', 'Planta', '44', 'Gloom es un Pokémon de tipo Planta y Veneno. Es la evolución de Oddish. Tiene una flor morada en la cabeza y emite un olor desagradable.'),
(45, 'Vileplume', 'Planta', '45', 'Vileplume es un Pokémon de tipo Planta y Veneno. Es la evolución final de Oddish. Tiene una flor grande y colorida en la cabeza que emite un aroma embriagador.'),
(46, 'Paras', 'Bicho', '46', 'Paras es un Pokémon de tipo Bicho y Planta. Es un hongo con patas y tiene una seta en la espalda.'),
(47, 'Parasect', 'Bicho', '47', 'Parasect es un Pokémon de tipo Bicho y Planta. Es la evolución de Paras. La seta en su espalda ha crecido y domina su cuerpo.'),
(48, 'Venonat', 'Bicho', '48', 'Venonat es un Pokémon de tipo Bicho y Veneno. Es una criatura peluda con grandes ojos rojos.'),
(49, 'Venomoth', 'Bicho', '49', 'Venomoth es un Pokémon de tipo Bicho y Veneno. Es la evolución de Venonat. Tiene alas polvorientas y antenas largas.'),
(50, 'Diglett', 'Tierra', '50', 'Diglett es un Pokémon de tipo Tierra. Es una criatura pequeña y marrón con una cabeza redonda que sobresale de la tierra.'),
(51, 'Dugtrio', 'Tierra', '51', 'Dugtrio es un Pokémon de tipo Tierra. Es la evolución de Diglett. Consiste en tres cabezas de Diglett unidas.'),
(52, 'Meowth', 'Normal', '52', 'Meowth es un Pokémon de tipo Normal. Es un gato de color crema con monedas en la frente.'),
(53, 'Persian', 'Normal', '53', 'Persian es un Pokémon de tipo Normal. Es la evolución de Meowth. Tiene un pelaje largo y una cola larga y esponjosa.'),
(54, 'Psyduck', 'Agua', '54', 'Psyduck es un Pokémon de tipo Agua. Es un pato amarillo con una expresión confundida en su rostro.'),
(55, 'Golduck', 'Agua', '55', 'Golduck es un Pokémon de tipo Agua. Es la evolución de Psyduck. Tiene una cresta en la cabeza y es muy ágil en el agua.'),
(56, 'Mankey', 'Lucha', '56', 'Mankey es un Pokémon de tipo Lucha. Es un simio de color marrón con una actitud agresiva.'),
(57, 'Primeape', 'Lucha', '57', 'Primeape es un Pokémon de tipo Lucha. Es la evolución de Mankey. Es aún más agresivo y puede volverse violento si se enoja.'),
(58, 'Growlithe', 'Fuego', '58', 'Growlithe es un Pokémon de tipo Fuego. Es un cachorro de color naranja con rayas negras.'),
(59, 'Arcanine', 'Fuego', '59', 'Arcanine es un Pokémon de tipo Fuego. Es la evolución de Growlithe. Es majestuoso y legendario, con una melena esponjosa y fuego ardiente.'),
(60, 'Poliwag', 'Agua', '60', 'Poliwag es un Pokémon de tipo Agua. Es una criatura de color azul con una esfera rosa en su vientre.'),
(61, 'Poliwhirl', 'Agua', '61', 'Poliwhirl es un Pokémon de tipo Agua. Es la evolución de Poliwag. Tiene brazos largos y puede nadar rápidamente.'),
(62, 'Poliwrath', 'Agua', '62', 'Poliwrath es un Pokémon de tipo Agua y Lucha. Es la evolución final de Poliwhirl. Tiene músculos poderosos y es un excelente nadador.'),
(63, 'Abra', 'Psiquico', '63', 'Abra es un Pokémon de tipo Psíquico. Tiene poderes telepáticos pero es débil físicamente.'),
(64, 'Kadabra', 'Psiquico', '64', 'Kadabra es un Pokémon de tipo Psíquico. Es la evolución de Abra. Tiene una cuchara doblada que usa para canalizar sus poderes.'),
(65, 'Alakazam', 'Psiquico', '65', 'Alakazam es un Pokémon de tipo Psíquico. Es la evolución final de Abra. Tiene un IQ increíblemente alto y puede doblar cucharas con su mente.'),
(66, 'Machop', 'Lucha', '66', 'Machop es un Pokémon de tipo Lucha. Es musculoso y tiene una gran fuerza.'),
(67, 'Machoke', 'Lucha', '67', 'Machoke es un Pokémon de tipo Lucha. Es la evolución de Machop. Es aún más musculoso y fuerte.'),
(68, 'Machamp', 'Lucha', '68', 'Machamp es un Pokémon de tipo Lucha. Es la evolución final de Machoke. Tiene cuatro brazos y es increíblemente poderoso.'),
(69, 'Bellsprout', 'Planta', '69', 'Bellsprout es un Pokémon de tipo Planta y Veneno. Es una planta con forma de campana y tiene raíces en lugar de pies.'),
(70, 'Weepinbell', 'Planta', '70', 'Weepinbell es un Pokémon de tipo Planta y Veneno. Es la evolución de Bellsprout. Tiene una boca grande y babosa.'),
(71, 'Victreebel', 'Planta', '71', 'Victreebel es un Pokémon de tipo Planta y Veneno. Es la evolución final de Weepinbell. Tiene una boca enorme y puede atrapar presas fácilmente.'),
(72, 'Tentacool', 'Agua', '72', 'Tentacool es un Pokémon de tipo Agua y Veneno. Es una medusa de color azul con tentáculos largos.'),
(73, 'Tentacruel', 'Agua', '73', 'Tentacruel es un Pokémon de tipo Agua y Veneno. Es la evolución de Tentacool. Tiene tentáculos aún más largos y puede atrapar presas con facilidad.'),
(74, 'Geodude', 'Roca', '74', 'Geodude es un Pokémon de tipo Roca y Tierra. Es una roca con brazos y ojos. Puede rodar para moverse.'),
(75, 'Graveler', 'Roca', '75', 'Graveler es un Pokémon de tipo Roca y Tierra. Es la evolución de Geodude. Tiene más brazos y es más grande.'),
(76, 'Golem', 'Roca', '76', 'Golem es un Pokémon de tipo Roca y Tierra. Es la evolución final de Graveler. Es enorme y extremadamente resistente.'),
(77, 'Ponyta', 'Fuego', '77', 'Ponyta es un Pokémon de tipo Fuego. Es un caballo de fuego con una melena en llamas.'),
(78, 'Rapidash', 'Fuego', '78', 'Rapidash es un Pokémon de tipo Fuego. Es la evolución de Ponyta. Puede correr a grandes velocidades mientras deja un rastro de fuego.'),
(79, 'Slowpoke', 'Agua', '79', 'Slowpoke es un Pokémon de tipo Agua y Psíquico. Es lento y tranquilo, pero puede tener destellos de genialidad.'),
(80, 'Slowbro', 'Agua', '80', 'Slowbro es un Pokémon de tipo Agua y Psíquico. Es la evolución de Slowpoke. Tiene una concha en la cola que le otorga defensa adicional.'),
(81, 'Magnemite', 'Electrico', '81', 'Magnemite es un Pokémon de tipo Eléctrico y Acero. Es un imán flotante con un ojo en el centro.'),
(82, 'Magneton', 'Electrico', '82', 'Magneton es un Pokémon de tipo Eléctrico y Acero. Es la evolución de Magnemite. Está formado por tres imanes que se unen.'),
(83, 'Farfetch’d', 'Normal', '83', 'Farfetch’d es un Pokémon de tipo Normal y Volador. Lleva un puerro como arma y es conocido por su valentía.'),
(84, 'Doduo', 'Normal', '84', 'Doduo es un Pokémon de tipo Normal y Volador. Tiene dos cabezas que comparten un solo cuerpo y pueden correr a grandes velocidades.'),
(85, 'Dodrio', 'Normal', '85', 'Dodrio es un Pokémon de tipo Normal y Volador. Es la evolución de Doduo. Tiene tres cabezas y puede correr muy rápido.'),
(86, 'Seel', 'Agua', '86', 'Seel es un Pokémon de tipo Agua. Es una foca de color blanco con una nariz grande.'),
(87, 'Dewgong', 'Agua', '87', 'Dewgong es un Pokémon de tipo Agua y Hielo. Es la evolución de Seel. Tiene un pelaje espeso y una cola en forma de aleta.'),
(88, 'Grimer', 'Veneno', '88', 'Grimer es un Pokémon de tipo Veneno. Es una masa de lodo púrpura con ojos amarillos.'),
(89, 'Muk', 'Veneno', '89', 'Muk es un Pokémon de tipo Veneno. Es la evolución de Grimer. Tiene un cuerpo viscoso y puede desprender un hedor nauseabundo.'),
(90, 'Shellder', 'Agua', '90', 'Shellder es un Pokémon de tipo Agua. Es una concha con ojos y una lengua larga.'),
(91, 'Cloyster', 'Agua', '91', 'Cloyster es un Pokémon de tipo Agua y Hielo. Es la evolución de Shellder. Tiene una concha dura y afilada que puede cerrar herméticamente.'),
(92, 'Gastly', 'Fantasma', '92', 'Gastly es un Pokémon de tipo Fantasma y Veneno. Es una bola de gas morado con ojos y boca.'),
(93, 'Haunter', 'Fantasma', '93', 'Haunter es un Pokémon de tipo Fantasma y Veneno. Es la evolución de Gastly. Puede pasar a través de paredes y tiene una lengua larga.'),
(94, 'Gengar', 'Fantasma', '94', 'Gengar es un Pokémon de tipo Fantasma y Veneno. Es la evolución final de Gastly. Es travieso y disfruta asustando a la gente.'),
(95, 'Onix', 'Roca', '95', 'Onix es un Pokémon de tipo Roca y Tierra. Es una serpiente de roca gigante con una piel dura y escamosa.'),
(96, 'Drowzee', 'Psiquico', '96', 'Drowzee es un Pokémon de tipo Psíquico. Tiene poderes hipnóticos y le gusta comer sueños.'),
(97, 'Hypno', 'Psiquico', '97', 'Hypno es un Pokémon de tipo Psíquico. Es la evolución de Drowzee. Puede hipnotizar a sus enemigos y controlar sus sueños.'),
(98, 'Krabby', 'Agua', '98', 'Krabby es un Pokémon de tipo Agua. Es un cangrejo de color rojo con grandes pinzas.'),
(99, 'Kingler', 'Agua', '99', 'Kingler es un Pokémon de tipo Agua. Es la evolución de Krabby. Tiene pinzas enormes y puede cortar objetos con facilidad.'),
(100, 'Voltorb', 'Electrico', '100', 'Voltorb es un Pokémon de tipo Eléctrico. Es una esfera roja y blanca que puede explotar en cualquier momento.'),
(101, 'Electrode', 'Electrico', '101', 'Electrode es un Pokémon de tipo Eléctrico. Es la evolución de Voltorb. Puede rodar a gran velocidad y explotar en cualquier momento.'),
(102, 'Exeggcute', 'Planta', '102', 'Exeggcute es un Pokémon de tipo Planta y Psíquico. Son seis huevos de color blanco que forman un grupo.'),
(103, 'Exeggutor', 'Planta', '103', 'Exeggutor es un Pokémon de tipo Planta y Psíquico. Es la evolución de Exeggcute. Tiene tres cabezas y es muy alto.'),
(104, 'Cubone', 'Tierra', '104', 'Cubone es un Pokémon de tipo Tierra. Lleva una calavera en la cabeza y se cree que llora la pérdida de su madre.'),
(105, 'Marowak', 'Tierra', '105', 'Marowak es un Pokémon de tipo Tierra. Es la evolución de Cubone. Usa un hueso como arma y es muy fiel a su entrenador.'),
(106, 'Hitmonlee', 'Lucha', '106', 'Hitmonlee es un Pokémon de tipo Lucha. Es un maestro de las artes marciales y puede dar patadas poderosas.'),
(107, 'Hitmonchan', 'Lucha', '107', 'Hitmonchan es un Pokémon de tipo Lucha. Es un maestro del boxeo y puede lanzar puñetazos tan rápidos como un rayo.'),
(108, 'Lickitung', 'Normal', '108', 'Lickitung es un Pokémon de tipo Normal. Tiene una lengua extremadamente larga que puede usar para lamer a sus enemigos.'),
(109, 'Koffing', 'Veneno', '109', 'Koffing es un Pokémon de tipo Veneno. Es una bola de gas venenoso con una calavera en su cuerpo.'),
(110, 'Weezing', 'Veneno', '110', 'Weezing es un Pokémon de tipo Veneno. Es la evolución de Koffing. Tiene dos cabezas y emite gases venenosos.'),
(111, 'Rhyhorn', 'Tierra', '111', 'Rhyhorn es un Pokémon de tipo Tierra y Roca. Es un rinoceronte con piel dura y cuernos afilados.'),
(112, 'Rhydon', 'Tierra', '112', 'Rhydon es un Pokémon de tipo Tierra y Roca. Es la evolución de Rhyhorn. Tiene un cuerpo grande y puede derribar árboles con su cuerno.'),
(113, 'Chansey', 'Normal', '113', 'Chansey es un Pokémon de tipo Normal. Es un huevo rosado con ojos y patas.'),
(114, 'Tangela', 'Planta', '114', 'Tangela es un Pokémon de tipo Planta. Es una masa de enredaderas verde con ojos ocultos.'),
(115, 'Kangaskhan', 'Normal', '115', 'Kangaskhan es un Pokémon de tipo Normal. Es una mamá canguro con un bebé en su bolsa.'),
(116, 'Horsea', 'Agua', '116', 'Horsea es un Pokémon de tipo Agua. Es un pequeño caballito de mar de color azul.'),
(117, 'Seadra', 'Agua', '117', 'Seadra es un Pokémon de tipo Agua. Es la evolución de Horsea. Tiene aletas más grandes y puede nadar contra corrientes fuertes.'),
(118, 'Goldeen', 'Agua', '118', 'Goldeen es un Pokémon de tipo Agua. Es un pez dorado con una aleta en forma de cinta en la espalda.'),
(119, 'Seaking', 'Agua', '119', 'Seaking es un Pokémon de tipo Agua. Es la evolución de Goldeen. Tiene un cuerno afilado y puede nadar a grandes velocidades.'),
(120, 'Staryu', 'Agua', '120', 'Staryu es un Pokémon de tipo Agua. Es una estrella de mar con un joya en el centro de su cuerpo.'),
(121, 'Starmie', 'Agua', '121', 'Starmie es un Pokémon de tipo Agua y Psíquico. Es la evolución de Staryu. Tiene gemas en cada uno de sus brazos y puede volar a través del agua.'),
(122, 'Mr. Mime', 'Psiquico', '122', 'Mr. Mime es un Pokémon de tipo Psíquico y Hada. Es un mimo con poderes psíquicos y una barrera invisible.'),
(123, 'Scyther', 'Bicho', '123', 'Scyther es un Pokémon de tipo Bicho y Volador. Tiene cuchillas afiladas en sus brazos y es extremadamente rápido.'),
(124, 'Jynx', 'Hielo', '124', 'Jynx es un Pokémon de tipo Hielo y Psíquico. Es una mujer alta con piel de color morado y labios rojos.'),
(125, 'Electabuzz', 'Electrico', '125', 'Electabuzz es un Pokémon de tipo Eléctrico. Tiene el cuerpo cubierto de pelo y puede generar grandes cantidades de electricidad.'),
(126, 'Magmar', 'Fuego', '126', 'Magmar es un Pokémon de tipo Fuego. Tiene el cuerpo cubierto de llamas y puede lanzar bolas de fuego.'),
(127, 'Pinsir', 'Bicho', '127', 'Pinsir es un Pokémon de tipo Bicho. Tiene grandes pinzas en sus brazos y es muy fuerte.'),
(128, 'Tauros', 'Normal', '128', 'Tauros es un Pokémon de tipo Normal. Es un toro con tres cabezas y puede embestir a sus enemigos con gran fuerza.'),
(129, 'Magikarp', 'Agua', '129', 'Magikarp es un Pokémon de tipo Agua. Es débil y no puede hacer mucho en batalla, pero puede evolucionar en un poderoso Gyarados.'),
(130, 'Gyarados', 'Agua', '130', 'Gyarados es un Pokémon de tipo Agua y Volador. Es la evolución de Magikarp. Es un poderoso dragón marino que puede causar destrucción.'),
(131, 'Lapras', 'Agua', '131', 'Lapras es un Pokémon de tipo Agua e Hielo. Es un gigantesco monstruo acuático con una concha en la espalda.'),
(132, 'Ditto', 'Normal', '132', 'Ditto es un Pokémon de tipo Normal. Puede transformarse en cualquier otro Pokémon.'),
(133, 'Eevee', 'Normal', '133', 'Eevee es un Pokémon de tipo Normal. Tiene la capacidad de evolucionar en diferentes formas dependiendo de factores como la piedra que use o el lugar donde se encuentre.'),
(134, 'Vaporeon', 'Agua', '134', 'Vaporeon es un Pokémon de tipo Agua. Es una de las evoluciones de Eevee y tiene un cuerpo acuático.'),
(135, 'Jolteon', 'Electrico', '135', 'Jolteon es un Pokémon de tipo Eléctrico. Es una de las evoluciones de Eevee y está cubierto de púas eléctricas.'),
(136, 'Flareon', 'Fuego', '136', 'Flareon es un Pokémon de tipo Fuego. Es una de las evoluciones de Eevee y está cubierto de llamas.'),
(137, 'Porygon', 'Normal', '137', 'Porygon es un Pokémon de tipo Normal. Es un Pokémon artificial creado por humanos y tiene una forma geométrica.'),
(138, 'Omanyte', 'Roca', '138', 'Omanyte es un Pokémon de tipo Roca y Agua. Es un fósil de un antiguo Pokémon marino.'),
(139, 'Omastar', 'Roca', '139', 'Omastar es un Pokémon de tipo Roca y Agua. Es la evolución de Omanyte. Tiene una concha dura y espirales en la espalda.'),
(140, 'Kabuto', 'Roca', '140', 'Kabuto es un Pokémon de tipo Roca y Agua. Es un fósil de un antiguo Pokémon marino.'),
(141, 'Kabutops', 'Roca', '141', 'Kabutops es un Pokémon de tipo Roca y Agua. Es la evolución de Kabuto. Tiene cuchillas afiladas en los brazos y puede nadar rápidamente.'),
(142, 'Aerodactyl', 'Roca', '142', 'Aerodactyl es un Pokémon de tipo Roca y Volador. Es un fósil de un antiguo Pokémon volador.'),
(143, 'Snorlax', 'Normal', '143', 'Snorlax es un Pokémon de tipo Normal. Es extremadamente grande y come mucho, luego se duerme.'),
(144, 'Articuno', 'Hielo', '144', 'Articuno es un Pokémon legendario de tipo Hielo y Volador. Puede controlar el hielo y crear tormentas de nieve.'),
(145, 'Zapdos', 'Electrico', '145', 'Zapdos es un Pokémon legendario de tipo Eléctrico y Volador. Puede generar rayos y causar tormentas eléctricas.'),
(146, 'Moltres', 'Fuego', '146', 'Moltres es un Pokémon legendario de tipo Fuego y Volador. Puede crear llamas y causar incendios.'),
(147, 'Dratini', 'Dragon', '147', 'Dratini es un Pokémon de tipo Dragón. Es una serpiente de color azul con ojos grandes.'),
(148, 'Dragonair', 'Dragon', '148', 'Dragonair es un Pokémon de tipo Dragón. Es la evolución de Dratini. Tiene un cuerpo largo y elegante.'),
(149, 'Dragonite', 'Dragon', '149', 'Dragonite es un Pokémon de tipo Dragón y Volador. Es la evolución final de Dratini. Es un poderoso dragón que puede volar a grandes alturas.'),
(150, 'Mewtwo', 'Psiquico', '150', 'Mewtwo es un Pokémon legendario de tipo Psíquico. Es el resultado de experimentos genéticos y tiene un gran poder psíquico.');
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
