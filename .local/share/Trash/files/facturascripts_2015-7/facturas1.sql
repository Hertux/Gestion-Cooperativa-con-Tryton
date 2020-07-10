-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2018 a las 21:54:18
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `facturas1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenciastrans`
--

CREATE TABLE `agenciastrans` (
  `codtrans` varchar(8) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `web` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agentes`
--

CREATE TABLE `agentes` (
  `apellidos` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ciudad` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin NOT NULL,
  `coddepartamento` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dnicif` varchar(15) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `idusuario` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombreap` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `seg_social` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cargo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `banco` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `f_alta` date DEFAULT NULL,
  `f_baja` date DEFAULT NULL,
  `f_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `agentes`
--

INSERT INTO `agentes` (`apellidos`, `ciudad`, `codagente`, `coddepartamento`, `codpais`, `codpostal`, `direccion`, `dnicif`, `email`, `fax`, `idprovincia`, `idusuario`, `irpf`, `nombre`, `nombreap`, `porcomision`, `provincia`, `telefono`, `seg_social`, `cargo`, `banco`, `f_alta`, `f_baja`, `f_nacimiento`) VALUES
('Pepe', 'Victoria', '1', NULL, NULL, '', '', '00000014Z', '', NULL, NULL, NULL, NULL, 'Paco', NULL, 0, 'Entre Ríos', '', '', '', '', NULL, NULL, NULL),
('Ferrari', 'Victoria', '2', NULL, NULL, '', '', '12312312', 'nuni@acme.com', NULL, NULL, NULL, NULL, 'Nuni', NULL, 0, 'Entre Ríos', '422222', '', '', '', '2018-07-01', NULL, '2018-07-01'),
('Ferrari', 'Victoria', '3', NULL, NULL, '', '', '22123123', 'acme@acme.com', NULL, NULL, NULL, NULL, 'Jose', NULL, 0, 'Entre Ríos', '423213', '', '', '', '2018-07-11', NULL, '2018-07-11'),
('b', 'Victoria', '4', NULL, NULL, '', '', '20221221224', 'acme@acme.com', NULL, NULL, NULL, NULL, 'tito', NULL, 0, 'Entre Ríos', '422222', '', '', '', '2018-08-04', NULL, '2018-08-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albaranescli`
--

CREATE TABLE `albaranescli` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(30) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `femail` date DEFAULT NULL,
  `idalbaran` int(11) NOT NULL,
  `idfactura` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL DEFAULT '0',
  `netosindto` double NOT NULL DEFAULT '0',
  `neto` double NOT NULL DEFAULT '0',
  `nombrecliente` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numero2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ptefactura` tinyint(1) NOT NULL DEFAULT '1',
  `recfinanciero` double NOT NULL DEFAULT '0',
  `tasaconv` double NOT NULL DEFAULT '1',
  `total` double NOT NULL DEFAULT '0',
  `totaleuros` double NOT NULL DEFAULT '0',
  `totalirpf` double NOT NULL DEFAULT '0',
  `totaliva` double NOT NULL DEFAULT '0',
  `totalrecargo` double NOT NULL DEFAULT '0',
  `codtrans` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `codigoenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `nombreenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `apellidosenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `direccionenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostalenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ciudadenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `provinciaenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `apartadoenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codpaisenv` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `numdocs` int(11) DEFAULT '0',
  `dtopor1` double NOT NULL DEFAULT '0',
  `dtopor2` double NOT NULL DEFAULT '0',
  `dtopor3` double NOT NULL DEFAULT '0',
  `dtopor4` double NOT NULL DEFAULT '0',
  `dtopor5` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albaranesprov`
--

CREATE TABLE `albaranesprov` (
  `cifnif` varchar(30) COLLATE utf8_bin NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idalbaran` int(11) NOT NULL,
  `idfactura` int(11) DEFAULT NULL,
  `irpf` double NOT NULL DEFAULT '0',
  `neto` double NOT NULL DEFAULT '0',
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numproveedor` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `ptefactura` tinyint(1) NOT NULL DEFAULT '1',
  `recfinanciero` double NOT NULL DEFAULT '0',
  `tasaconv` double NOT NULL DEFAULT '1',
  `total` double NOT NULL DEFAULT '0',
  `totaleuros` double NOT NULL DEFAULT '0',
  `totalirpf` double NOT NULL DEFAULT '0',
  `totaliva` double NOT NULL DEFAULT '0',
  `totalrecargo` double NOT NULL DEFAULT '0',
  `numdocs` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE `almacenes` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `contacto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `observaciones` text COLLATE utf8_bin,
  `poblacion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `porpvp` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `tipovaloracion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `altura` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacenes` (`apartado`, `codalmacen`, `codpais`, `codpostal`, `contacto`, `direccion`, `fax`, `idprovincia`, `nombre`, `observaciones`, `poblacion`, `porpvp`, `provincia`, `telefono`, `tipovaloracion`, `altura`) VALUES
(NULL, 'ALG', 'ARG', '3153', 'juan perez', 'Matanza25', '123123', NULL, 'COLEGIO PRIVADO JFK', NULL, 'Victoria', NULL, 'Entre Ríos', '123123', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `factualizado` date DEFAULT NULL,
  `bloqueado` tinyint(1) DEFAULT '0',
  `equivalencia` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `idsubcuentairpfcom` int(11) DEFAULT NULL,
  `idsubcuentacom` int(11) DEFAULT NULL,
  `stockmin` double DEFAULT '0',
  `observaciones` text COLLATE utf8_bin,
  `codbarras` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `stockfis` double DEFAULT '0',
  `stockmax` double DEFAULT '0',
  `costemedio` double DEFAULT '0',
  `preciocoste` double DEFAULT '0',
  `tipocodbarras` varchar(8) COLLATE utf8_bin DEFAULT 'Code39',
  `nostock` tinyint(1) DEFAULT '0',
  `codsubcuentacom` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin NOT NULL,
  `codsubcuentairpfcom` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `secompra` tinyint(1) DEFAULT '1',
  `codfamilia` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `codfabricante` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `imagen` text COLLATE utf8_bin,
  `controlstock` tinyint(1) DEFAULT '0',
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `pvp` double DEFAULT '0',
  `sevende` tinyint(1) DEFAULT '1',
  `publico` tinyint(1) DEFAULT '0',
  `partnumber` varchar(38) COLLATE utf8_bin DEFAULT NULL,
  `trazabilidad` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`factualizado`, `bloqueado`, `equivalencia`, `idsubcuentairpfcom`, `idsubcuentacom`, `stockmin`, `observaciones`, `codbarras`, `codimpuesto`, `stockfis`, `stockmax`, `costemedio`, `preciocoste`, `tipocodbarras`, `nostock`, `codsubcuentacom`, `descripcion`, `codsubcuentairpfcom`, `secompra`, `codfamilia`, `codfabricante`, `imagen`, `controlstock`, `referencia`, `tipo`, `pvp`, `sevende`, `publico`, `partnumber`, `trazabilidad`) VALUES
('2018-08-03', 0, NULL, NULL, NULL, 0, '', '', NULL, 0, 0, 0, 0, 'Code39', 0, NULL, 'Juan Perez Jr.', NULL, 1, '002', NULL, NULL, 1, '1', NULL, 120, 1, 0, '', 1),
('2018-08-11', 0, NULL, NULL, NULL, 0, '', '', NULL, 0, 0, 0, 0, 'Code39', 0, NULL, 'jose ferrari jr', NULL, 1, '011', NULL, NULL, 1, '2', NULL, 100, 1, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulosprov`
--

CREATE TABLE `articulosprov` (
  `id` int(11) NOT NULL,
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `refproveedor` varchar(25) COLLATE utf8_bin NOT NULL,
  `descripcion` text COLLATE utf8_bin,
  `precio` double DEFAULT NULL,
  `dto` double DEFAULT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `nostock` tinyint(1) DEFAULT '1',
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codbarras` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `partnumber` varchar(38) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_propiedades`
--

CREATE TABLE `articulo_propiedades` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_trazas`
--

CREATE TABLE `articulo_trazas` (
  `id` int(11) NOT NULL,
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL,
  `numserie` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `lote` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `idlalbventa` int(11) DEFAULT NULL,
  `idlfacventa` int(11) DEFAULT NULL,
  `idlalbcompra` int(11) DEFAULT NULL,
  `idlfaccompra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributos`
--

CREATE TABLE `atributos` (
  `codatributo` varchar(20) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` int(11) NOT NULL,
  `fs_id` int(11) NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin NOT NULL,
  `f_inicio` timestamp NOT NULL DEFAULT '2018-08-13 03:00:00',
  `d_inicio` double NOT NULL DEFAULT '0',
  `f_fin` timestamp NULL DEFAULT NULL,
  `d_fin` double DEFAULT NULL,
  `tickets` int(11) DEFAULT NULL,
  `ip` varchar(40) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`id`, `fs_id`, `codagente`, `f_inicio`, `d_inicio`, `f_fin`, `d_fin`, `tickets`, `ip`) VALUES
(1, 1, '2', '2018-08-12 12:33:19', 50, NULL, 50, 0, '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas_terminales`
--

CREATE TABLE `cajas_terminales` (
  `id` int(11) NOT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `tickets` text COLLATE utf8_bin,
  `anchopapel` int(11) DEFAULT NULL,
  `comandocorte` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `comandoapertura` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `num_tickets` int(11) DEFAULT NULL,
  `sin_comandos` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cajas_terminales`
--

INSERT INTO `cajas_terminales` (`id`, `codalmacen`, `codserie`, `codcliente`, `tickets`, `anchopapel`, `comandocorte`, `comandoapertura`, `num_tickets`, `sin_comandos`) VALUES
(1, 'ALG', 'A', NULL, 'p0\n', 40, '27.105', '27.112.48', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `capitalimpagado` double DEFAULT NULL,
  `cifnif` varchar(30) COLLATE utf8_bin NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin NOT NULL,
  `codcontacto` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentadom` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentarem` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codedi` varchar(17) COLLATE utf8_bin DEFAULT NULL,
  `codgrupo` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codtiporappel` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `contacto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `copiasfactura` int(11) DEFAULT NULL,
  `debaja` tinyint(1) DEFAULT '0',
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `fechabaja` date DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `ivaincluido` tinyint(1) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `razonsocial` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `recargo` tinyint(1) DEFAULT NULL,
  `regimeniva` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `riesgoalcanzado` double DEFAULT NULL,
  `riesgomax` double DEFAULT NULL,
  `telefono1` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `telefono2` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `tipoidfiscal` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT 'NIF',
  `personafisica` tinyint(1) DEFAULT '1',
  `web` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `diaspago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codtarifa` varchar(6) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`capitalimpagado`, `cifnif`, `codagente`, `codcliente`, `codcontacto`, `codcuentadom`, `codcuentarem`, `coddivisa`, `codedi`, `codgrupo`, `codpago`, `codserie`, `codsubcuenta`, `codtiporappel`, `contacto`, `copiasfactura`, `debaja`, `email`, `fax`, `fechabaja`, `fechaalta`, `idsubcuenta`, `ivaincluido`, `nombre`, `razonsocial`, `observaciones`, `recargo`, `regimeniva`, `riesgoalcanzado`, `riesgomax`, `telefono1`, `telefono2`, `tipoidfiscal`, `personafisica`, `web`, `diaspago`, `codproveedor`, `codtarifa`) VALUES
(NULL, '22222222', NULL, '000001', NULL, NULL, NULL, 'ARS', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2018-07-01', NULL, NULL, 'tito', 'tito', '', 0, 'General', NULL, NULL, '', '', 'DNI', 1, '', NULL, NULL, NULL),
(NULL, '302221231', NULL, '000002', NULL, NULL, NULL, 'ARS', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2018-08-01', NULL, NULL, 'Escuela JFK', 'Escuela JFK', '', 0, 'General', NULL, NULL, '', '', 'CUIT', 0, '', NULL, '000001', NULL),
(NULL, '20222123', '3', '000003', NULL, NULL, NULL, 'ARS', NULL, '000001', 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'juanperez@acme.com', '', NULL, '2018-08-03', NULL, NULL, 'Perez Juan', 'Perez Juan', '', 0, 'General', NULL, NULL, '15615615', '424242', 'DNI', 1, '', NULL, NULL, '000003'),
(NULL, '1234', '1', '000004', NULL, NULL, NULL, 'ARS', NULL, '000001', 'TRANS', NULL, NULL, NULL, NULL, NULL, 0, 'acme@gmail.com', '', NULL, '2018-08-03', NULL, NULL, 'cliente1', 'cliente1', '', 0, 'General', NULL, NULL, '1234', '', 'CUIT', 1, 'http://localhost/facturascripts_2015-master/index.php?page=ventas_clientes', NULL, NULL, NULL),
(NULL, '201221231235', NULL, '000005', NULL, NULL, NULL, 'ARS', NULL, '000001', 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'ctomattis@acme.com', '', NULL, '2018-08-11', NULL, NULL, 'Carlos Tomattis', 'Carlos Tomattis', '', 0, 'General', NULL, NULL, '422222', '', 'CUIT', 1, '', NULL, NULL, NULL),
(NULL, '201221224', NULL, '000006', NULL, NULL, NULL, 'ARS', NULL, '000002', 'RAPIPAGO', NULL, NULL, NULL, NULL, NULL, 0, 'pgomez@acme.com', '', NULL, '2018-08-11', NULL, NULL, 'Gómez Pedro', 'Gómez Pedro', '', 0, 'General', NULL, NULL, '15615623', '424242', 'CUIT/CUIL', 1, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_propiedades`
--

CREATE TABLE `cliente_propiedades` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cliente_propiedades`
--

INSERT INTO `cliente_propiedades` (`name`, `codcliente`, `text`) VALUES
('password', '000005', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_asientos`
--

CREATE TABLE `co_asientos` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codplanasiento` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `concepto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `documento` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `editable` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `idasiento` int(11) NOT NULL,
  `idconcepto` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `importe` double DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `tipodocumento` varchar(25) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_codbalances08`
--

CREATE TABLE `co_codbalances08` (
  `descripcion4ba` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `descripcion4` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nivel4` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `descripcion3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `orden3` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `nivel3` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `descripcion2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nivel2` int(11) DEFAULT NULL,
  `descripcion1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nivel1` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `naturaleza` varchar(15) COLLATE utf8_bin NOT NULL,
  `codbalance` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_conceptospar`
--

CREATE TABLE `co_conceptospar` (
  `concepto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idconceptopar` varchar(4) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_cuentas`
--

CREATE TABLE `co_cuentas` (
  `codbalance` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codepigrafe` varchar(6) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idcuenta` int(11) NOT NULL,
  `idcuentaesp` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `idepigrafe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_cuentascbba`
--

CREATE TABLE `co_cuentascbba` (
  `desccuenta` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `codbalance` varchar(15) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_cuentasesp`
--

CREATE TABLE `co_cuentasesp` (
  `codcuenta` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idcuentaesp` varchar(6) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `co_cuentasesp`
--

INSERT INTO `co_cuentasesp` (`codcuenta`, `codsubcuenta`, `descripcion`, `idcuentaesp`) VALUES
(NULL, NULL, 'Cuentas de acreedores', 'ACREED'),
(NULL, NULL, 'Cuentas de caja', 'CAJA'),
(NULL, NULL, 'Cuentas de diferencias negativas de cambio', 'CAMNEG'),
(NULL, NULL, 'Cuentas de diferencias positivas de cambio', 'CAMPOS'),
(NULL, NULL, 'Cuentas de clientes', 'CLIENT'),
(NULL, NULL, 'Cuentas de compras', 'COMPRA'),
(NULL, NULL, 'Devoluciones de compras', 'DEVCOM'),
(NULL, NULL, 'Devoluciones de ventas', 'DEVVEN'),
(NULL, NULL, 'Cuentas por diferencias positivas en divisa extranjera', 'DIVPOS'),
(NULL, NULL, 'Cuentas por diferencias negativas de conversión a la moneda local', 'EURNEG'),
(NULL, NULL, 'Cuentas por diferencias positivas de conversión a la moneda local', 'EURPOS'),
(NULL, NULL, 'Gastos por recargo financiero', 'GTORF'),
(NULL, NULL, 'Ingresos por recargo financiero', 'INGRF'),
(NULL, NULL, 'Cuentas de retenciones IRPF', 'IRPF'),
(NULL, NULL, 'Cuentas de retenciones para proveedores IRPFPR', 'IRPFPR'),
(NULL, NULL, 'Cuentas acreedoras de IVA en la regularización', 'IVAACR'),
(NULL, NULL, 'Cuentas deudoras de IVA en la regularización', 'IVADEU'),
(NULL, NULL, 'IVA en entregas intracomunitarias U.E.', 'IVAEUE'),
(NULL, NULL, 'Cuentas de IVA repercutido', 'IVAREP'),
(NULL, NULL, 'Cuentas de IVA repercutido para clientes exentos de IVA', 'IVAREX'),
(NULL, NULL, 'Cuentas de IVA soportado UE', 'IVARUE'),
(NULL, NULL, 'Cuentas de IVA repercutido en exportaciones', 'IVARXP'),
(NULL, NULL, 'Cuentas de IVA soportado en importaciones', 'IVASIM'),
(NULL, NULL, 'Cuentas de IVA soportado', 'IVASOP'),
(NULL, NULL, 'Cuentas de IVA soportado UE', 'IVASUE'),
(NULL, NULL, 'Cuentas relativas al ejercicio previo', 'PREVIO'),
(NULL, NULL, 'Cuentas de proveedores', 'PROVEE'),
(NULL, NULL, 'Pérdidas y ganancias', 'PYG'),
(NULL, NULL, 'Cuentas de ventas', 'VENTAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_epigrafes`
--

CREATE TABLE `co_epigrafes` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codepigrafe` varchar(6) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idepigrafe` int(11) NOT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  `idpadre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_gruposepigrafes`
--

CREATE TABLE `co_gruposepigrafes` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codgrupo` varchar(6) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idgrupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_partidas`
--

CREATE TABLE `co_partidas` (
  `baseimponible` double NOT NULL,
  `cifnif` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `codcontrapartida` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin NOT NULL,
  `concepto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `debe` double NOT NULL DEFAULT '0',
  `debeme` double NOT NULL,
  `documento` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `factura` double DEFAULT NULL,
  `haber` double NOT NULL DEFAULT '0',
  `haberme` double NOT NULL,
  `idasiento` int(11) NOT NULL,
  `idconcepto` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `idcontrapartida` int(11) DEFAULT NULL,
  `idpartida` int(11) NOT NULL,
  `idsubcuenta` int(11) NOT NULL,
  `iva` double NOT NULL,
  `punteada` tinyint(1) NOT NULL DEFAULT '0',
  `recargo` double NOT NULL,
  `tasaconv` double NOT NULL,
  `tipodocumento` varchar(25) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_regiva`
--

CREATE TABLE `co_regiva` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codsubcuentaacr` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentadeu` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `fechaasiento` date NOT NULL,
  `fechafin` date NOT NULL,
  `fechainicio` date NOT NULL,
  `idasiento` int(11) NOT NULL,
  `idregiva` int(11) NOT NULL,
  `idsubcuentaacr` int(11) DEFAULT NULL,
  `idsubcuentadeu` int(11) DEFAULT NULL,
  `periodo` varchar(8) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_secuencias`
--

CREATE TABLE `co_secuencias` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `idsecuencia` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `valorout` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_subcuentas`
--

CREATE TABLE `co_subcuentas` (
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin NOT NULL,
  `debe` double NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `haber` double NOT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `idsubcuenta` int(11) NOT NULL,
  `iva` double NOT NULL,
  `recargo` double NOT NULL,
  `saldo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_subcuentascli`
--

CREATE TABLE `co_subcuentascli` (
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL,
  `idsubcuenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_subcuentasprov`
--

CREATE TABLE `co_subcuentasprov` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL,
  `idsubcuenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentasbanco`
--

CREATE TABLE `cuentasbanco` (
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `iban` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `swift` varchar(11) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentasbcocli`
--

CREATE TABLE `cuentasbcocli` (
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `swift` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `ctaentidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `iban` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `agencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `entidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin NOT NULL,
  `ctaagencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `cuenta` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `principal` tinyint(1) DEFAULT NULL,
  `fmandato` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentasbcopro`
--

CREATE TABLE `cuentasbcopro` (
  `agencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `ctaagencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `ctaentidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `cuenta` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `entidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `iban` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `swift` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `principal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cuentasbcopro`
--

INSERT INTO `cuentasbcopro` (`agencia`, `codcuenta`, `codproveedor`, `ctaagencia`, `ctaentidad`, `cuenta`, `descripcion`, `entidad`, `iban`, `swift`, `principal`) VALUES
(NULL, '1', '000001', NULL, NULL, NULL, 'banco x', NULL, '', 'ksejfikmed', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dirclientes`
--

CREATE TABLE `dirclientes` (
  `codcliente` varchar(6) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `domenvio` tinyint(1) DEFAULT NULL,
  `domfacturacion` tinyint(1) DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `dirclientes`
--

INSERT INTO `dirclientes` (`codcliente`, `codpais`, `apartado`, `idprovincia`, `provincia`, `ciudad`, `codpostal`, `direccion`, `domenvio`, `domfacturacion`, `descripcion`, `id`, `fecha`) VALUES
('000001', 'ARG', '', NULL, 'Victoria', 'Victoria', '', '', 1, 1, 'Principal', 1, '2018-07-01'),
('000002', 'ARG', '25', NULL, 'Entre Ríos', 'Victoria', '3153', 'Matanza', 1, 1, 'Principal', 2, '2018-08-01'),
('000003', 'ARG', '', NULL, 'Entre Ríos', 'Victoria', '3153', 'Basualdo y Bvard. Moreno', 1, 1, 'Principal', 3, '2018-08-03'),
('000004', 'ARG', '', NULL, 'Entre Ríos', 'Victoria', '3153', 'test', 1, 1, 'Principal', 4, '2018-08-03'),
('000005', 'ARG', '', NULL, 'Entre Ríos', 'Victoria', '3153', 'Basualdo 177', 1, 1, 'Principal', 5, '2018-08-11'),
('000006', 'ARG', '', NULL, 'Entre Ríos', 'Victoria', '', 'Chacabuco 138', 1, 1, 'Principal', 6, '2018-08-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dirproveedores`
--

CREATE TABLE `dirproveedores` (
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `direccionppal` tinyint(1) DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `dirproveedores`
--

INSERT INTO `dirproveedores` (`codproveedor`, `codpais`, `apartado`, `idprovincia`, `provincia`, `ciudad`, `codpostal`, `direccion`, `direccionppal`, `descripcion`, `id`, `fecha`) VALUES
('000001', 'ARG', '25', NULL, 'Entre Ríos', 'Victoria', '3153', 'Matanza', 1, 'Principal', 1, '2018-08-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisas`
--

CREATE TABLE `divisas` (
  `bandera` text COLLATE utf8_bin,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codiso` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `simbolo` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `tasaconv_compra` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `divisas`
--

INSERT INTO `divisas` (`bandera`, `coddivisa`, `codiso`, `descripcion`, `fecha`, `simbolo`, `tasaconv`, `tasaconv_compra`) VALUES
(NULL, 'ARS', '32', 'PESOS (ARG)', NULL, 'AR$', 33.255547, 33.255547);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE `ejercicios` (
  `idasientocierre` int(11) DEFAULT NULL,
  `idasientopyg` int(11) DEFAULT NULL,
  `idasientoapertura` int(11) DEFAULT NULL,
  `plancontable` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `longsubcuenta` int(11) DEFAULT NULL,
  `estado` varchar(15) COLLATE utf8_bin NOT NULL,
  `fechafin` date NOT NULL,
  `fechainicio` date NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ejercicios`
--

INSERT INTO `ejercicios` (`idasientocierre`, `idasientopyg`, `idasientoapertura`, `plancontable`, `longsubcuenta`, `estado`, `fechafin`, `fechainicio`, `nombre`, `codejercicio`) VALUES
(NULL, NULL, NULL, '08', 10, 'ABIERTO', '2018-12-31', '2018-01-01', '2018', '2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `administrador` varchar(100) COLLATE utf8_bin NOT NULL,
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(30) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcuentarem` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codedi` varchar(17) COLLATE utf8_bin DEFAULT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `contintegrada` tinyint(1) DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `horario` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `xid` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `lema` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `logo` text COLLATE utf8_bin,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombrecorto` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `pie_factura` text COLLATE utf8_bin,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `recequivalencia` tinyint(1) DEFAULT NULL,
  `stockpedidos` tinyint(1) DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `web` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `inicioact` date DEFAULT NULL,
  `regimeniva` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `altura` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`administrador`, `apartado`, `cifnif`, `ciudad`, `codalmacen`, `codcuentarem`, `coddivisa`, `codedi`, `codejercicio`, `codpago`, `codpais`, `codpostal`, `codserie`, `contintegrada`, `direccion`, `email`, `fax`, `horario`, `id`, `idprovincia`, `xid`, `lema`, `logo`, `nombre`, `nombrecorto`, `pie_factura`, `provincia`, `recequivalencia`, `stockpedidos`, `telefono`, `web`, `inicioact`, `regimeniva`, `altura`) VALUES
('Carlos', '25', 'CUIT: 30-54050846-8', 'Victoria', 'ALG', NULL, 'ARS', NULL, '2018', 'CONT', 'ARG', '3153', 'A', 1, 'AV CONGRESO 1816', 'test@test.com', '', '8 a 18 Horas', 1, NULL, 'fiS6Z4myghnCTxbUA1jqt5VHFLROMe', 'Quien se atreve, gana.', NULL, 'INSTITUTO PRIVADO JOHN FITTZGERALD KENNEDY', 'Instituto JFKennedy', 'Gracias por estar al día', 'Entre Ríos', 0, 0, '422222', 'https://www.institutojfk.com.ar', '1970-01-01', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

CREATE TABLE `fabricantes` (
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `codfabricante` varchar(8) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`nombre`, `codfabricante`) VALUES
('OEM', 'OEM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturascli`
--

CREATE TABLE `facturascli` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `automatica` tinyint(1) DEFAULT NULL,
  `cifnif` varchar(30) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codigorect` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `deabono` tinyint(1) DEFAULT '0',
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `editable` tinyint(1) DEFAULT '0',
  `fecha` date NOT NULL,
  `vencimiento` date DEFAULT NULL,
  `femail` date DEFAULT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idasiento` int(11) DEFAULT NULL,
  `idasientop` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idfacturarect` int(11) DEFAULT NULL,
  `idpagodevol` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL DEFAULT '0',
  `netosindto` double NOT NULL DEFAULT '0',
  `neto` double NOT NULL DEFAULT '0',
  `nogenerarasiento` tinyint(1) DEFAULT NULL,
  `nombrecliente` varchar(100) COLLATE utf8_bin NOT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numero2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `pagada` tinyint(1) NOT NULL DEFAULT '0',
  `anulada` tinyint(1) NOT NULL DEFAULT '0',
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `tasaconv` double NOT NULL DEFAULT '1',
  `total` double NOT NULL DEFAULT '0',
  `totaleuros` double NOT NULL DEFAULT '0',
  `totalirpf` double NOT NULL DEFAULT '0',
  `totaliva` double NOT NULL DEFAULT '0',
  `totalrecargo` double DEFAULT NULL,
  `tpv` tinyint(1) DEFAULT NULL,
  `codtrans` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `codigoenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `nombreenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `apellidosenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `direccionenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostalenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ciudadenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `provinciaenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `apartadoenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codpaisenv` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `idimprenta` int(11) DEFAULT NULL,
  `numdocs` int(11) DEFAULT '0',
  `dtopor1` double NOT NULL DEFAULT '0',
  `dtopor2` double NOT NULL DEFAULT '0',
  `dtopor3` double NOT NULL DEFAULT '0',
  `dtopor4` double NOT NULL DEFAULT '0',
  `dtopor5` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `facturascli`
--

INSERT INTO `facturascli` (`apartado`, `automatica`, `cifnif`, `ciudad`, `codagente`, `codalmacen`, `codcliente`, `coddir`, `coddivisa`, `codejercicio`, `codigo`, `codigorect`, `codpago`, `codpais`, `codpostal`, `codserie`, `deabono`, `direccion`, `editable`, `fecha`, `vencimiento`, `femail`, `hora`, `idasiento`, `idasientop`, `idfactura`, `idfacturarect`, `idpagodevol`, `idprovincia`, `irpf`, `netosindto`, `neto`, `nogenerarasiento`, `nombrecliente`, `numero`, `numero2`, `observaciones`, `pagada`, `anulada`, `porcomision`, `provincia`, `recfinanciero`, `tasaconv`, `total`, `totaleuros`, `totalirpf`, `totaliva`, `totalrecargo`, `tpv`, `codtrans`, `codigoenv`, `nombreenv`, `apellidosenv`, `direccionenv`, `codpostalenv`, `ciudadenv`, `provinciaenv`, `apartadoenv`, `codpaisenv`, `idimprenta`, `numdocs`, `dtopor1`, `dtopor2`, `dtopor3`, `dtopor4`, `dtopor5`) VALUES
('', NULL, '22222222', 'Victoria', '1', 'ALG', '000001', 1, 'ARS', '2018', 'FAC2018A1', NULL, 'CONT', 'ARG', '', 'A', 0, '', 0, '2018-07-01', '2018-07-01', NULL, '20:29:01', NULL, NULL, 1, NULL, NULL, NULL, 0, 138.36, 138.36, NULL, 'tito', '1', '', 'factura corespondiente a mes agosto-2018', 1, 0, 0, 'Victoria', NULL, 16.684, 167.41, 10.03416, 0, 29.05, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ARG', NULL, 0, 0, 0, 0, 0, 0),
('', NULL, '20222123', 'Victoria', '2', 'ALG', '000003', 3, 'ARS', '2018', 'FAC2018A2', NULL, 'TRANS', 'ARG', '3153', 'A', 0, 'Basualdo y Bvard. Moreno', 0, '2018-08-03', '2018-09-03', NULL, '16:55:06', NULL, NULL, 2, NULL, NULL, NULL, 0, 120, 120, NULL, 'Perez Juan', '2', '', '', 0, 0, 0, 'Entre Ríos', NULL, 16.684, 120, 7.19252, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ARG', NULL, 0, 0, 0, 0, 0, 0),
('', NULL, '20222123', 'Victoria', '2', 'ALG', '000003', 3, 'ARS', '2018', 'FAC2018B1', NULL, 'RAPIPAGO', 'ARG', '3153', 'B', 0, 'Basualdo y Bvard. Moreno', 0, '2018-08-11', '2018-08-18', NULL, '13:07:35', NULL, NULL, 3, NULL, NULL, NULL, 0, 0, 0, NULL, 'Perez Juan', '1', '', '', 0, 0, 0, 'Entre Ríos', NULL, 16.684, 0, 0, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ARG', NULL, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturasprov`
--

CREATE TABLE `facturasprov` (
  `automatica` tinyint(1) DEFAULT NULL,
  `cifnif` varchar(30) COLLATE utf8_bin NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codigorect` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `deabono` tinyint(1) DEFAULT '0',
  `editable` tinyint(1) DEFAULT '0',
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idasiento` int(11) DEFAULT NULL,
  `idasientop` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idfacturarect` int(11) DEFAULT NULL,
  `idpagodevol` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `neto` double DEFAULT NULL,
  `nogenerarasiento` tinyint(1) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numproveedor` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `pagada` tinyint(1) NOT NULL DEFAULT '0',
  `anulada` tinyint(1) NOT NULL DEFAULT '0',
  `recfinanciero` double DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `total` double DEFAULT NULL,
  `totaleuros` double DEFAULT NULL,
  `totalirpf` double DEFAULT NULL,
  `totaliva` double DEFAULT NULL,
  `totalrecargo` double DEFAULT NULL,
  `numdocs` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias`
--

CREATE TABLE `familias` (
  `descripcion` varchar(100) COLLATE utf8_bin NOT NULL,
  `codfamilia` varchar(8) COLLATE utf8_bin NOT NULL,
  `madre` varchar(8) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `familias`
--

INSERT INTO `familias` (`descripcion`, `codfamilia`, `madre`) VALUES
('Estudiantes de pre-escolar', '001', NULL),
('Estudiantes Primaria', '002', NULL),
('Estudiantes Secundaria', '003', NULL),
('Estudiantes', '004', NULL),
('Preescolar cuatro años', '010', '001'),
('Preescolar cinco años', '011', '001'),
('VARIOS', 'VARI', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formaspago`
--

CREATE TABLE `formaspago` (
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `genrecibos` varchar(10) COLLATE utf8_bin NOT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `domiciliado` tinyint(1) DEFAULT NULL,
  `imprimir` tinyint(1) DEFAULT '1',
  `vencimiento` varchar(20) COLLATE utf8_bin DEFAULT '+1month'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `formaspago`
--

INSERT INTO `formaspago` (`codpago`, `descripcion`, `genrecibos`, `codcuenta`, `domiciliado`, `imprimir`, `vencimiento`) VALUES
('CONT', 'Al contado', 'Pagados', NULL, 0, 1, '+0day'),
('RAPIPAGO', 'Rapipago', 'Emitidos', NULL, 0, 1, '+1week'),
('TARJETA', 'Tarjeta de crédito', 'Pagados', NULL, 0, 1, '+0day'),
('TRANS', 'Transferencia bancaria', 'Emitidos', NULL, 0, 1, '+1month');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_access`
--

CREATE TABLE `fs_access` (
  `fs_user` varchar(12) COLLATE utf8_bin NOT NULL,
  `fs_page` varchar(30) COLLATE utf8_bin NOT NULL,
  `allow_delete` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fs_access`
--

INSERT INTO `fs_access` (`fs_user`, `fs_page`, `allow_delete`) VALUES
('cliente1', 'nueva_compra', 0),
('tito-emplead', 'nueva_venta', 1),
('tito-emplead', 'opciones_factura_detallada', 1),
('tito-emplead', 'ventas_clientes', 1),
('tito-emplead', 'ventas_clientes_opciones', 1),
('tito-emplead', 'ventas_factura', 1),
('tito-emplead', 'ventas_factura_devolucion', 1),
('tito-emplead', 'ventas_facturas', 1),
('usuario1', 'ventas_agrupar_albaranes', 1),
('usuario1', 'ventas_albaran', 1),
('usuario1', 'ventas_albaranes', 1),
('usuario1', 'ventas_articulo', 1),
('usuario1', 'ventas_articulos', 1),
('usuario1', 'ventas_atributos', 1),
('usuario1', 'ventas_cliente', 1),
('usuario1', 'ventas_cliente_articulos', 1),
('usuario1', 'ventas_clientes', 1),
('usuario1', 'ventas_clientes_opciones', 1),
('usuario1', 'ventas_factura', 1),
('usuario1', 'ventas_factura_devolucion', 1),
('usuario1', 'ventas_facturas', 1),
('usuario1', 'ventas_familia', 1),
('usuario1', 'ventas_familias', 1),
('usuario1', 'ventas_grupo', 1),
('usuario1', 'ventas_trazabilidad', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_extensions2`
--

CREATE TABLE `fs_extensions2` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `page_from` varchar(30) COLLATE utf8_bin NOT NULL,
  `page_to` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `text` text COLLATE utf8_bin,
  `params` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fs_extensions2`
--

INSERT INTO `fs_extensions2` (`name`, `page_from`, `page_to`, `type`, `text`, `params`) VALUES
('agrupar_albaranes', 'compras_agrupar_albaranes', 'compras_albaranes', 'button', '<span class="glyphicon glyphicon-duplicate"></span><span class="hidden-xs">&nbsp; Agrupar</span>', ''),
('agrupar_albaranes', 'ventas_agrupar_albaranes', 'ventas_albaranes', 'button', '<span class="glyphicon glyphicon-duplicate"></span><span class="hidden-xs">&nbsp; Agrupar</span>', ''),
('albaran_detallado_es_ES', 'albaran_detallado', 'ventas_albaran', 'pdf', '<span class="glyphicon glyphicon-print"></span>&nbsp; Remito detallado es_ES', '&codidioma=es_ES'),
('albaran_ticket_print_job', 'print_to_ticket', 'ventas_albaran', 'modal', '<i class="fa fa-print" aria-hidden="true"></i><span class="hidden-xs">&nbsp; Ticket</span>', '&tipo=albaran'),
('albaranes_agente', 'compras_albaranes', 'admin_agente', 'button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Remitos de proveedor', ''),
('albaranes_agente', 'ventas_albaranes', 'admin_agente', 'button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Remitos de cliente', ''),
('albaranes_articulo', 'compras_albaranes', 'ventas_articulo', 'tab_button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Remitos de proveedor', ''),
('albaranes_articulo', 'ventas_albaranes', 'ventas_articulo', 'tab_button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Remitos de cliente', ''),
('albaranes_cliente', 'ventas_albaranes', 'ventas_cliente', 'button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Remitos', ''),
('albaranes_proveedor', 'compras_albaranes', 'compras_proveedor', 'button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Remitos', ''),
('api_remote_printer', 'tpv_recambios', NULL, 'api', 'remote_printer', NULL),
('articulo_subcuentas', 'articulo_subcuentas', 'ventas_articulo', 'tab', '<span class="glyphicon glyphicon-book" aria-hidden="true"></span><span class="hidden-xs">&nbsp; Subcuentas</span>', NULL),
('btn_albaran', 'compras_actualiza_arts', 'compras_albaran', 'tab', '<span class="glyphicon glyphicon-share" aria-hidden="true"></span><span class="hidden-xs">&nbsp; Actualizar</span>', '&doc=albaran'),
('btn_atributos', 'ventas_atributos', 'ventas_articulos', 'button', '<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span><span class="hidden-xs">&nbsp; Atributos</span>', NULL),
('btn_balances', 'editar_balances', 'informe_contabilidad', 'button', '<span class="glyphicon glyphicon-wrench"></span><span class="hidden-xs">&nbsp; Balances</a>', NULL),
('btn_cliente', 'portal_clientes', 'ventas_cliente', 'tab', '<i class="fa fa-globe" aria-hidden="true"></i><span class="hidden-xs">&nbsp; Portal web</span>', NULL),
('btn_fabricantes', 'ventas_fabricantes', 'ventas_articulos', 'button', '<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span><span class="hidden-xs"> &nbsp; Fabricantes</span>', NULL),
('btn_familias', 'ventas_familias', 'ventas_articulos', 'button', '<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span><span class="hidden-xs"> &nbsp; Familias</span>', NULL),
('btn_pedido', 'compras_actualiza_arts', 'compras_pedido', 'tab', '<span class="glyphicon glyphicon-share" aria-hidden="true"></span><span class="hidden-xs">&nbsp; Actualizar</span>', '&doc=pedido'),
('cosmo', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-cosmo.min.css', ''),
('darkly', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-darkly.min.css', ''),
('email_albaran', 'ventas_imprimir', 'ventas_albaran', 'email', 'Remito simple', '&albaran=TRUE'),
('email_albaran_proveedor', 'compras_imprimir', 'compras_albaran', 'email', 'Albarán simple', '&albaran=TRUE'),
('email_factura', 'ventas_imprimir', 'ventas_factura', 'email', 'Factura simple', '&factura=TRUE&tipo=simple'),
('enviar_factura_detallada_es_ES', 'factura_detallada', 'ventas_factura', 'email', 'Factura detallada es_ES', '&codidioma=es_ES'),
('factura_detallada_es_ES', 'factura_detallada', 'ventas_factura', 'pdf', '<span class="glyphicon glyphicon-print"></span>&nbsp; Factura detallada es_ES', '&codidioma=es_ES'),
('factura_ticket_print_job', 'print_to_ticket', 'ventas_factura', 'modal', '<i class="fa fa-print" aria-hidden="true"></i><span class="hidden-xs">&nbsp; Ticket</span>', '&tipo=factura'),
('facturas_agente', 'compras_facturas', 'admin_agente', 'button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Facturas de proveedor', ''),
('facturas_agente', 'ventas_facturas', 'admin_agente', 'button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Facturas de cliente', ''),
('facturas_articulo', 'compras_facturas', 'ventas_articulo', 'tab_button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Facturas de proveedor', ''),
('facturas_articulo', 'ventas_facturas', 'ventas_articulo', 'tab_button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Facturas de cliente', ''),
('facturas_cliente', 'ventas_facturas', 'ventas_cliente', 'button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Facturas', ''),
('facturas_proveedor', 'compras_facturas', 'compras_proveedor', 'button', '<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp; Facturas', ''),
('flatly', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-flatly.min.css', ''),
('imprimir_albaran', 'ventas_imprimir', 'ventas_albaran', 'pdf', '<span class="glyphicon glyphicon-print"></span>&nbsp; Remito simple', '&albaran=TRUE'),
('imprimir_albaran_noval', 'ventas_imprimir', 'ventas_albaran', 'pdf', '<span class="glyphicon glyphicon-print"></span>&nbsp; Remito sin valorar', '&albaran=TRUE&noval=TRUE'),
('imprimir_albaran_proveedor', 'compras_imprimir', 'compras_albaran', 'pdf', 'Albarán simple', '&albaran=TRUE'),
('imprimir_factura', 'ventas_imprimir', 'ventas_factura', 'pdf', '<span class="glyphicon glyphicon-print"></span>&nbsp; Factura simple', '&factura=TRUE&tipo=simple'),
('imprimir_factura_carta', 'ventas_imprimir', 'ventas_factura', 'pdf', '<span class="glyphicon glyphicon-print"></span>&nbsp; Modelo carta', '&factura=TRUE&tipo=carta'),
('imprimir_factura_proveedor', 'compras_imprimir', 'compras_factura', 'pdf', 'Factura simple', '&factura=TRUE'),
('lumen', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-lumen.min.css', ''),
('maquetar_albaran', 'ventas_maquetar', 'ventas_albaran', 'pdf', '<i class="fa fa-magic"></i>&nbsp; Maquetar', '&albaran=TRUE'),
('maquetar_factura', 'ventas_maquetar', 'ventas_factura', 'pdf', '<i class="fa fa-magic"></i>&nbsp; Maquetar', '&factura=TRUE'),
('menu_facturas', 'pclientes_facturas', NULL, 'public_menu_link', 'Facturas', NULL),
('opciones_clientes', 'ventas_clientes_opciones', 'ventas_clientes', 'button', '<span class="glyphicon glyphicon-wrench" aria-hidden="true" title="Opciones para nuevos clientes"></span><span class="hidden-xs">&nbsp; Opciones</span>', NULL),
('opciones_fac_detallada', 'opciones_factura_detallada', 'admin_empresa', 'button', '<span class="glyphicon glyphicon-print" aria-hidden="true"></span> &nbsp; Factura Detallada', NULL),
('paper', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-paper.min.css', ''),
('pedido_ticket_print_job', 'print_to_ticket', 'ventas_pedido', 'modal', '<i class="fa fa-print" aria-hidden="true"></i><span class="hidden-xs">&nbsp; Ticket</span>', '&tipo=pedido'),
('sandstone', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-sandstone.min.css', ''),
('simplex', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-simplex.min.css', ''),
('spacelab', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-spacelab.min.css', ''),
('tab_devoluciones', 'compras_factura_devolucion', 'compras_factura', 'tab', '<span class="glyphicon glyphicon-share" aria-hidden="true"></span><span class="hidden-xs">&nbsp; Devoluciones</span>', NULL),
('tab_devoluciones', 'ventas_factura_devolucion', 'ventas_factura', 'tab', '<span class="glyphicon glyphicon-share" aria-hidden="true"></span><span class="hidden-xs">&nbsp; Devoluciones</span>', NULL),
('tab_divisas', 'google_divisas', 'admin_divisas', 'modal', '<i class="fa fa-globe"></i><span class="hidden-xs">&nbsp; Google</span>', NULL),
('tab_editar_factura', 'compras_factura_devolucion', 'editar_factura_prov', 'tab', '<span class="glyphicon glyphicon-share" aria-hidden="true"></span><span class="hidden-xs">&nbsp; Devoluciones</span>', NULL),
('tab_editar_factura', 'ventas_factura_devolucion', 'editar_factura', 'tab', '<span class="glyphicon glyphicon-share" aria-hidden="true"></span><span class="hidden-xs">&nbsp; Devoluciones</span>', NULL),
('tab_portal', 'portal_clientes', 'ventas_clientes', 'tab', '<i class="fa fa-globe" aria-hidden="true"></i><span class="hidden-xs"> Portal web</span>', NULL),
('tab_ventas_cliente_articulos', 'ventas_cliente_articulos', 'ventas_cliente', 'tab', '<i class="fa fa-cubes" aria-hidden="true"></i>&nbsp; Artículos', NULL),
('united', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-united.min.css', ''),
('yeti', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-yeti.min.css', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_logs`
--

CREATE TABLE `fs_logs` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8_bin NOT NULL,
  `detalle` text COLLATE utf8_bin NOT NULL,
  `fecha` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `usuario` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `ip` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `alerta` tinyint(1) DEFAULT NULL,
  `controlador` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fs_logs`
--

INSERT INTO `fs_logs` (`id`, `tipo`, `detalle`, `fecha`, `usuario`, `ip`, `alerta`, `controlador`) VALUES
(1, 'error', 'Dependencias incumplidas: <b>facturacion_base</b>. Puedes descargar este plugin desde la <b>pestaña descargas</b>.', '2018-07-02 03:59:35', 'admin', '::1', 0, NULL),
(2, 'error', 'Dependencias incumplidas: <b>facturacion_base</b>. Puedes descargar este plugin desde la <b>pestaña descargas</b>.', '2018-07-01 23:04:01', 'admin', '::1', 0, NULL),
(3, 'error', 'No se encuentran subcuentas para el ejercicio 2018 ¿<a href="index.php?page=contabilidad_ejercicio&cod=2018">Has importado los datos de contabilidad</a>?', '2018-07-01 23:05:19', 'admin', '::1', 0, NULL),
(4, 'error', 'No se encuentra ninguna cuenta especial para clientes en el ejercicio 2018 ¿<a href="index.php?page=contabilidad_ejercicio&cod=2018">Has importado los datos del ejercicio</a>?', '2018-07-01 23:29:01', NULL, NULL, 0, NULL),
(5, 'error', 'Las contraseñas no coinciden.', '2018-07-01 23:43:58', 'admin', '::1', 0, NULL),
(6, 'login', 'Se ha cambiado la contraseña del usuario admin', '2018-07-01 23:44:56', 'admin', '::1', 1, NULL),
(7, 'error', '¡Albarán de cliente no encontrada!', '2018-07-04 21:49:34', 'admin', '::1', 0, NULL),
(8, 'error', '¡Factura de cliente no encontrada!', '2018-07-04 21:49:34', 'admin', '::1', 0, NULL),
(9, 'error', '¡Albarán de cliente no encontrada!', '2018-07-04 21:50:16', 'admin', '::1', 0, NULL),
(10, 'error', '¡Factura de cliente no encontrada!', '2018-07-04 21:50:16', 'admin', '::1', 0, NULL),
(11, 'login', 'Usuario tito creado correctamente.', '2018-07-06 15:26:20', 'admin', '::1', 1, NULL),
(12, 'login', 'El usuario ha cerrado la sesión.', '2018-07-06 15:26:35', NULL, NULL, 0, NULL),
(13, 'error', '¡Albarán de cliente no encontrada!', '2018-07-06 15:27:29', 'tito', '::1', 0, NULL),
(14, 'error', '¡Factura de cliente no encontrada!', '2018-07-06 15:27:29', 'tito', '::1', 0, NULL),
(15, 'error', '¡Albarán de cliente no encontrada!', '2018-07-06 15:27:34', 'tito', '::1', 0, NULL),
(16, 'error', '¡Factura de cliente no encontrada!', '2018-07-06 15:27:34', 'tito', '::1', 0, NULL),
(17, 'error', 'Dependencias incumplidas: <b>facturae</b>. Puedes descargar este plugin desde la <b>pestaña descargas</b>.', '2018-07-11 21:08:15', 'tito', '::1', 0, NULL),
(18, 'error', 'Archivo no encontrado. ¿Pesa más de 99 MB? Ese es el límite que tienes configurado en tu servidor.', '2018-07-11 21:15:46', 'tito', '::1', 0, NULL),
(19, 'login', 'Usuario tito-emplead creado correctamente.', '2018-07-11 21:23:49', 'tito', '::1', 1, NULL),
(20, 'login', 'El usuario ha cerrado la sesión.', '2018-07-11 21:26:29', NULL, NULL, 0, NULL),
(21, 'login', 'Login correcto.', '2018-07-11 21:26:39', NULL, NULL, 0, NULL),
(22, 'login', 'El usuario ha cerrado la sesión.', '2018-07-11 21:31:06', NULL, NULL, 0, NULL),
(23, 'error', '¡Albarán de cliente no encontrada!', '2018-07-11 21:53:42', 'admin', '::1', 0, NULL),
(24, 'error', '¡Factura de cliente no encontrada!', '2018-07-11 21:53:43', 'admin', '::1', 0, NULL),
(25, 'error', '¡Albarán de cliente no encontrada!', '2018-07-11 21:53:50', 'admin', '::1', 0, NULL),
(26, 'error', '¡Factura de cliente no encontrada!', '2018-07-11 21:53:50', 'admin', '::1', 0, NULL),
(27, 'login', '¡Contraseña incorrecta! (admin)', '2018-08-01 17:31:25', NULL, NULL, 1, NULL),
(28, 'error', 'Dependencias incumplidas: <b>facturae</b>. Puedes descargar este plugin desde la <b>pestaña descargas</b>.', '2018-08-01 17:36:00', 'admin', '::1', 0, NULL),
(29, 'error', '¡Albarán de cliente no encontrada!', '2018-08-01 18:12:55', 'admin', '::1', 0, NULL),
(30, 'error', '¡Factura de cliente no encontrada!', '2018-08-01 18:12:55', 'admin', '::1', 0, NULL),
(31, 'error', '¡Albarán de cliente no encontrada!', '2018-08-01 18:24:34', 'admin', '::1', 0, NULL),
(32, 'error', '¡Factura de cliente no encontrada!', '2018-08-01 18:24:34', 'admin', '::1', 0, NULL),
(33, 'error', '¡Albarán de cliente no encontrada!', '2018-08-01 18:59:34', 'admin', '::1', 0, NULL),
(34, 'error', '¡Factura de cliente no encontrada!', '2018-08-01 18:59:34', 'admin', '::1', 0, NULL),
(35, 'error', '¡Albarán de cliente no encontrada!', '2018-08-01 20:07:24', 'admin', '::1', 0, NULL),
(36, 'error', '¡Factura de cliente no encontrada!', '2018-08-01 20:07:24', 'admin', '::1', 0, NULL),
(37, 'error', '¡Albarán de cliente no encontrada!', '2018-08-01 20:07:39', 'admin', '::1', 0, NULL),
(38, 'error', '¡Factura de cliente no encontrada!', '2018-08-01 20:07:39', 'admin', '::1', 0, NULL),
(39, 'error', '¡Albarán de cliente no encontrada!', '2018-08-01 20:39:51', 'admin', '::1', 0, 'opciones_factura_detallada'),
(40, 'error', '¡Factura de cliente no encontrada!', '2018-08-01 20:39:51', 'admin', '::1', 0, 'opciones_factura_detallada'),
(41, 'login', 'El usuario ha cerrado la sesión.', '2018-08-01 20:44:51', NULL, '::1', 0, 'admin_empresa'),
(42, 'login', 'El usuario ha cerrado la sesión.', '2018-08-01 20:44:55', NULL, '::1', 0, 'admin_empresa'),
(43, 'login', 'El usuario ha cerrado la sesión.', '2018-08-01 20:45:02', NULL, '::1', 0, 'admin_empresa'),
(44, 'error', 'Cliente no encontrado.', '2018-08-01 20:45:26', NULL, '::1', 0, 'portada_clientes'),
(45, 'error', 'Cliente no encontrado.', '2018-08-01 20:45:50', NULL, '::1', 0, 'portada_clientes'),
(46, 'error', 'No se encuentra ninguna cuenta especial para clientes en el ejercicio 2018 ¿&lt;a href=&quot;index.php?page=contabilidad_ejercicio&cod=2018&quot;&gt;Has importado los datos del ejercicio&lt;/a&gt;?', '2018-08-03 19:55:58', 'admin', '::1', 0, 'nueva_venta'),
(47, 'error', 'Sin resultados.', '2018-08-03 23:02:32', 'admin', '::1', 0, 'informe_facturas'),
(48, 'login', 'Se ha cambiado la contraseña del usuario cliente1', '2018-08-03 23:07:15', 'admin', '::1', 1, 'admin_user'),
(49, 'error', 'Cliente no encontrado.', '2018-08-03 23:07:46', NULL, '192.168.1.6', 0, 'portada_clientes'),
(50, 'error', 'Cliente no encontrado.', '2018-08-03 23:08:16', NULL, '192.168.1.6', 0, 'portada_clientes'),
(51, 'error', 'Cliente no encontrado.', '2018-08-03 23:11:46', NULL, '192.168.1.6', 0, 'portada_clientes'),
(52, 'error', 'Cliente no encontrado.', '2018-08-03 23:11:56', NULL, '192.168.1.6', 0, 'portada_clientes'),
(53, 'error', 'Cliente no encontrado.', '2018-08-03 23:12:08', NULL, '192.168.1.6', 0, 'portada_clientes'),
(54, 'error', 'Cliente no encontrado.', '2018-08-03 23:21:40', NULL, '192.168.1.6', 0, 'portada_clientes'),
(55, 'error', 'Archivo model/table/ciclo.xml no encontrado.', '2018-08-04 13:01:27', 'admin', '::1', 0, 'admin_almacenes'),
(56, 'error', 'Error con el xml.', '2018-08-04 13:01:27', 'admin', '::1', 0, 'admin_almacenes'),
(57, 'error', 'No se ha podido conectar por email. ¿La contraseña es correcta?', '2018-08-04 14:11:22', 'admin', '::1', 0, 'admin_empresa'),
(58, 'error', 'Aunque la contraseña de gmail sea correcta, en ciertas situaciones los servidores de gmail bloquean la conexión. Para superar esta situación debes crear y usar una &lt;a href=&quot;https://support.google.com/accounts/answer/185833?hl=es&quot; target=&quot;_blank&quot;&gt;contraseña de aplicación&lt;/a&gt;', '2018-08-04 14:11:22', 'admin', '::1', 0, 'admin_empresa'),
(59, 'error', 'Error al enviar el email: Invalid address:  (addAnAddress bcc): Si', '2018-08-04 14:37:44', 'admin', '::1', 0, 'factura_detallada'),
(60, 'error', 'Plugin summernote activado correctamente.', '2018-08-04 18:12:18', 'admin', '::1', 0, 'admin_home'),
(61, 'error', 'Plugin summernote desactivado correctamente.', '2018-08-04 18:13:14', 'admin', '::1', 0, 'admin_home'),
(62, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 15:16:35', 'admin', '::1', 0, 'dashboard'),
(63, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 15:17:11', 'admin', '::1', 0, 'dashboard'),
(64, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 15:19:23', 'admin', '::1', 0, 'dashboard'),
(65, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 15:20:18', 'admin', '::1', 0, 'dashboard'),
(66, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 15:26:29', 'admin', '::1', 0, 'dashboard'),
(67, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 15:33:04', 'admin', '::1', 0, 'dashboard'),
(68, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 15:34:10', 'admin', '::1', 0, 'dashboard'),
(69, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 15:34:25', 'admin', '::1', 0, 'dashboard'),
(70, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 15:35:18', 'admin', '::1', 0, 'dashboard'),
(71, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 15:42:46', 'admin', '::1', 0, 'dashboard'),
(72, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 16:46:39', 'admin', '::1', 0, 'dashboard'),
(73, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 17:34:53', 'admin', '::1', 0, 'dashboard'),
(74, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 17:37:42', 'admin', '::1', 0, 'dashboard'),
(75, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 17:55:18', 'admin', '::1', 0, 'dashboard'),
(76, 'login', 'El usuario ha cerrado la sesión.', '2018-08-04 17:57:34', NULL, '::1', 0, 'ventas_facturas'),
(77, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 17:58:23', 'admin', '::1', 0, 'dashboard'),
(78, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 18:05:50', 'admin', '::1', 0, 'dashboard'),
(79, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 18:11:34', 'admin', '::1', 0, 'dashboard'),
(80, 'login', 'Se ha cambiado la contraseña del usuario tito', '2018-08-04 18:20:08', 'admin', '::1', 1, 'admin_user'),
(81, 'login', 'El usuario ha cerrado la sesión.', '2018-08-04 18:21:43', NULL, '::1', 0, 'admin_rol'),
(82, 'login', 'El usuario ha cerrado la sesión.', '2018-08-04 18:31:39', NULL, '::1', 0, 'admin_users'),
(83, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 18:31:53', 'admin', '::1', 0, 'dashboard'),
(84, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 18:39:27', 'admin', '::1', 0, 'dashboard'),
(85, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-04 18:39:31', 'admin', '::1', 0, 'dashboard'),
(86, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-05 15:02:50', 'admin', '::1', 0, 'dashboard'),
(87, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-10 19:23:39', 'admin', '::1', 0, 'dashboard'),
(88, 'error', 'Plugin adminlte activado correctamente.', '2018-08-11 00:41:50', 'admin', '::1', 0, 'admin_home'),
(89, 'error', 'Plugin argentina desactivado correctamente.', '2018-08-11 18:23:55', 'admin', '::1', 0, 'admin_home'),
(90, 'error', 'Ya hay facturas con esta serie, no puedes cambiar la numeración inicial.', '2018-08-11 15:55:57', 'admin', '::1', 0, 'contabilidad_series'),
(91, 'error', '¡Remito de cliente no encontrada!', '2018-08-11 23:13:43', 'admin', '::1', 0, 'albaran_detallado'),
(92, 'error', 'No se encuentran subcuentas para el ejercicio 2018 ¿&lt;a href=&quot;index.php?page=contabilidad_ejercicio&cod=2018&quot;&gt;Has importado los datos de contabilidad&lt;/a&gt;?', '2018-08-11 23:14:08', 'admin', '::1', 0, 'base_wizard'),
(93, 'error', 'Plugin remote-printer2 eliminado correctamente.', '2018-08-12 02:53:33', 'admin', '::1', 0, 'admin_home'),
(94, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-12 17:42:46', 'admin', '::1', 0, 'dashboard'),
(95, 'error', 'Plugin plugins eliminado correctamente.', '2018-08-12 20:47:08', 'admin', '::1', 0, 'admin_home'),
(96, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-13 23:04:59', 'admin', '::1', 0, 'dashboard'),
(97, 'error', 'No se ha podido conectar por email. ¿La contraseña es correcta?', '2018-08-14 16:39:10', 'admin', '::1', 0, 'admin_empresa'),
(98, 'error', 'Aunque la contraseña de gmail sea correcta, en ciertas situaciones los servidores de gmail bloquean la conexión. Para superar esta situación debes crear y usar una &lt;a href=&quot;https://support.google.com/accounts/answer/185833?hl=es&quot; target=&quot;_blank&quot;&gt;contraseña de aplicación&lt;/a&gt;', '2018-08-14 16:39:10', 'admin', '::1', 0, 'admin_empresa'),
(99, 'error', 'Plugin google_divisas activado correctamente.', '2018-08-14 19:40:55', 'admin', '::1', 0, 'admin_home'),
(100, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-14 17:01:38', 'admin', '::1', 0, 'dashboard'),
(101, 'login', 'El usuario ha cerrado la sesión.', '2018-08-14 17:11:06', NULL, '::1', 0, 'admin_user'),
(102, 'login', 'Login correcto.', '2018-08-14 17:11:19', 'usuario1', '::1', 0, 'portada_clientes'),
(103, 'login', 'El usuario ha cerrado la sesión.', '2018-08-14 18:27:42', NULL, '::1', 0, 'ventas_clientes'),
(104, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-14 18:28:39', 'admin', '::1', 0, 'dashboard'),
(105, 'login', 'El usuario ha cerrado la sesión.', '2018-08-14 18:45:44', NULL, '::1', 0, 'admin_home'),
(106, 'login', 'Login correcto.', '2018-08-14 18:46:01', 'usuario1', '::1', 0, 'portada_clientes'),
(107, 'login', 'El usuario ha cerrado la sesión.', '2018-08-14 18:46:50', NULL, '::1', 0, 'ventas_albaranes'),
(108, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-14 18:47:11', 'admin', '::1', 0, 'dashboard'),
(109, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-14 19:34:52', 'admin', '::1', 0, 'dashboard'),
(110, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-14 19:35:25', 'admin', '::1', 0, 'dashboard'),
(111, 'login', 'El usuario ha cerrado la sesión.', '2018-08-14 19:48:52', NULL, '::1', 0, 'ventas_fabricantes'),
(112, 'login', 'Login correcto.', '2018-08-14 19:49:07', 'usuario1', '::1', 0, 'portada_clientes'),
(113, 'login', 'El usuario ha cerrado la sesión.', '2018-08-14 19:50:16', NULL, '::1', 0, 'ventas_fabricantes'),
(114, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-16 21:51:46', 'admin', '::1', 0, 'dashboard'),
(115, 'error', 'Plugin FSDK activado correctamente.', '2018-08-17 00:54:45', 'admin', '::1', 0, 'admin_home'),
(116, 'error', 'Plugin Alumno activado correctamente.', '2018-08-17 00:56:28', 'admin', '::1', 0, 'admin_home'),
(117, 'error', 'FS_COMMUNITY_URL/index.php?page=community_changelog&json=TRUE - Could not resolve host: FS_COMMUNITY_URL', '2018-08-21 19:15:12', 'admin', '::1', 0, 'dashboard');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_pages`
--

CREATE TABLE `fs_pages` (
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `title` varchar(40) COLLATE utf8_bin NOT NULL,
  `folder` varchar(15) COLLATE utf8_bin NOT NULL,
  `version` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `show_on_menu` tinyint(1) NOT NULL DEFAULT '1',
  `important` tinyint(1) NOT NULL DEFAULT '0',
  `orden` int(11) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fs_pages`
--

INSERT INTO `fs_pages` (`name`, `title`, `folder`, `version`, `show_on_menu`, `important`, `orden`) VALUES
('Alumno', 'Alumno', 'admin', '2017.903', 1, 0, 100),
('admin_agente', 'Empleado', 'admin', '2017.031', 0, 0, 100),
('admin_agentes', 'Empleados', 'admin', '2017.031', 1, 0, 100),
('admin_almacenes', 'Almacenes', 'admin', '2017.031', 1, 0, 100),
('admin_argentina', 'Argentina', 'admin', '2017.903', 1, 0, 100),
('admin_divisas', 'Divisas', 'admin', '2017.903', 1, 0, 100),
('admin_empresa', 'Empresa', 'admin', '2017.031', 1, 0, 100),
('admin_home', 'Panel de control', 'admin', NULL, 1, 0, 100),
('admin_info', 'Información del sistema', 'admin', '2017.031', 1, 0, 100),
('admin_kdb', 'Entrada', 'KDB', '2017.031', 1, 0, 100),
('admin_orden_menu', 'Ordenar menú', 'admin', '2017.031', 1, 0, 100),
('admin_paises', 'Paises', 'admin', '2017.903', 1, 0, 100),
('admin_rol', 'Editar rol', 'admin', '2017.031', 0, 0, 100),
('admin_user', 'Usuario', 'admin', '2017.031', 0, 0, 100),
('admin_users', 'Usuarios', 'admin', '2017.031', 1, 0, 100),
('albaran_detallado', 'Remito Detallado', 'ventas', '2017.031', 0, 0, 100),
('articulo_subcuentas', 'Subcuentas', 'ventas', '2017.031', 0, 0, 100),
('articulo_trazabilidad', '', 'ventas', '2017.903', 0, 0, 100),
('base_wizard', 'Asistente de instalación', 'admin', '2017.903', 0, 0, 100),
('compras_actualiza_arts', 'Artículos documento', 'compras', '2017.903', 0, 0, 100),
('compras_agrupar_albaranes', 'Agrupar remitos', 'compras', '2017.903', 0, 0, 100),
('compras_albaran', 'remito de proveedor', 'compras', '2017.903', 0, 0, 100),
('compras_albaranes', 'Remitos', 'compras', '2017.903', 1, 0, 100),
('compras_factura', 'Factura de proveedor', 'compras', '2017.903', 0, 0, 100),
('compras_factura_devolucion', 'Devoluciones de factura de compra', 'compras', '2017.903', 0, 0, 100),
('compras_facturas', 'Facturas', 'compras', '2017.031', 1, 0, 100),
('compras_imprimir', 'imprimir', 'compras', '2017.031', 0, 0, 100),
('compras_proveedor', 'Proveedor', 'compras', '2017.031', 0, 0, 100),
('compras_proveedores', 'Proveedores / Acreedores', 'compras', '2017.031', 1, 0, 100),
('compras_trazabilidad', 'Trazabilidad', 'compras', '2017.903', 0, 0, 100),
('contabilidad_asiento', 'Asiento', 'contabilidad', '2017.903', 0, 0, 100),
('contabilidad_asientos', 'Asientos', 'contabilidad', '2017.031', 1, 0, 100),
('contabilidad_cuenta', 'Cuenta', 'contabilidad', '2017.903', 0, 0, 100),
('contabilidad_cuentas', 'Cuentas', 'contabilidad', '2017.031', 1, 0, 100),
('contabilidad_ejercicio', 'Ejercicio', 'contabilidad', '2017.031', 0, 0, 100),
('contabilidad_ejercicios', 'Ejercicios', 'contabilidad', '2017.031', 1, 0, 100),
('contabilidad_epigrafes', 'Grupos y epígrafes', 'contabilidad', '2017.903', 1, 0, 100),
('contabilidad_formas_pago', 'Formas de Pago', 'contabilidad', '2017.031', 1, 0, 100),
('contabilidad_impuestos', 'Impuestos', 'contabilidad', '2017.031', 1, 0, 100),
('contabilidad_nuevo_asiento', 'Nuevo asiento', 'contabilidad', '2017.903', 0, 1, 100),
('contabilidad_series', 'Series', 'contabilidad', '2017.031', 1, 0, 100),
('contabilidad_subcuenta', 'Subcuenta', 'contabilidad', '2017.903', 0, 0, 100),
('cuentas_especiales', 'Cuentas Especiales', 'contabilidad', '2017.903', 0, 0, 100),
('dashboard', 'Dashboard', 'informes', '2017.031', 1, 1, 100),
('edit_kdb', 'Entrada', 'KDB', '2017.031', 0, 0, 100),
('editar_balances', 'Editar balances', 'informes', '2017.903', 0, 0, 100),
('editar_transferencia_stock', 'Editar transferencia', 'ventas', '2017.903', 0, 0, 100),
('factura_detallada', 'Factura Detallada', 'ventas', '2017.031', 0, 0, 100),
('fsdk_home', 'FSDK', 'admin', '2017.903', 1, 0, 100),
('fsdk_plan_contable', 'Plan contable', 'admin', '2017.903', 0, 0, 100),
('fsdk_tabla', 'Tabla', 'admin', '2017.903', 0, 0, 100),
('google_divisas', 'Google Divisas', 'admin', '2017.903', 0, 0, 100),
('informe_albaranes', 'Remitos', 'informes', '2017.031', 1, 0, 100),
('informe_articulos', 'Artículos', 'informes', '2017.031', 1, 0, 100),
('informe_contabilidad', 'Contabilidad', 'informes', '2017.031', 1, 0, 100),
('informe_errores', 'Errores', 'informes', '2017.031', 1, 0, 100),
('informe_facturas', 'Facturas', 'informes', '2017.031', 1, 0, 100),
('nueva_compra', 'Nueva compra...', 'compras', '2017.031', 0, 1, 100),
('nueva_venta', 'Nueva venta...', 'ventas', '2017.031', 0, 1, 100),
('opciones_factura_detallada', 'Factura Detallada', 'admin', '2017.031', 0, 0, 100),
('pclientes_facturas', 'home', '', '2017.031', 0, 0, 100),
('pclientes_servicios', 'home', '', '2017.031', 0, 0, 100),
('portada_clientes', 'Portada clientes', 'admin', '2017.031', 0, 0, 100),
('portal_clientes', 'Portal clientes', 'admin', '2017.031', 0, 0, 100),
('print_to_ticket', 'Configurar ticket', 'admin', '2017.031', 1, 0, 100),
('sql_editor', 'SQL Editor', 'admin', '2017.031', 1, 0, 100),
('subcuenta_asociada', 'Asignar subcuenta...', 'contabilidad', '2017.031', 0, 0, 100),
('tpv_caja', 'Arqueos y terminales', 'TPV', '2017.903', 1, 0, 100),
('tpv_recambios', 'TPV Genérico', 'TPV', '2017.903', 1, 0, 100),
('ventas_agrupar_albaranes', 'Agrupar remitos', 'ventas', '2017.903', 0, 0, 100),
('ventas_albaran', 'remito de cliente', 'ventas', '2017.903', 0, 0, 100),
('ventas_albaranes', 'Remitos', 'ventas', '2017.903', 1, 0, 100),
('ventas_articulo', 'Articulo', 'ventas', '2017.031', 0, 0, 100),
('ventas_articulos', 'Artículos', 'ventas', '2017.031', 1, 0, 100),
('ventas_atributos', 'Atributos de artículos', 'ventas', '2017.031', 0, 0, 100),
('ventas_cliente', 'Cliente', 'ventas', '2017.031', 0, 0, 100),
('ventas_cliente_articulos', 'Articulos vendidos al cliente', 'ventas', '2017.031', 0, 0, 100),
('ventas_clientes', 'Clientes', 'ventas', '2017.031', 1, 0, 100),
('ventas_clientes_opciones', 'Opciones', 'clientes', '2017.031', 0, 0, 100),
('ventas_fabricantes', 'Fabricantes', 'ventas', '2017.903', 0, 0, 100),
('ventas_factura', 'Factura de cliente', 'ventas', '2017.031', 0, 0, 100),
('ventas_factura_devolucion', 'Devoluciones de factura de venta', 'ventas', '2017.031', 0, 0, 100),
('ventas_facturas', 'Facturas', 'ventas', '2017.031', 1, 0, 100),
('ventas_familia', 'Familia', 'ventas', '2017.031', 0, 0, 100),
('ventas_familias', 'Familias', 'ventas', '2017.031', 0, 0, 100),
('ventas_grupo', 'Grupo', 'ventas', '2017.031', 0, 0, 100),
('ventas_imprimir', 'imprimir', 'ventas', '2017.031', 0, 0, 100),
('ventas_maquetar', 'Maquetar', 'ventas', '2017.903', 0, 0, 100),
('ventas_trazabilidad', 'Trazabilidad', 'ventas', '2017.031', 0, 0, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_roles`
--

CREATE TABLE `fs_roles` (
  `codrol` varchar(20) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fs_roles`
--

INSERT INTO `fs_roles` (`codrol`, `descripcion`) VALUES
('001', 'usuario con permisos para afcturar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_roles_access`
--

CREATE TABLE `fs_roles_access` (
  `codrol` varchar(20) COLLATE utf8_bin NOT NULL,
  `fs_page` varchar(30) COLLATE utf8_bin NOT NULL,
  `allow_delete` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fs_roles_access`
--

INSERT INTO `fs_roles_access` (`codrol`, `fs_page`, `allow_delete`) VALUES
('001', 'ventas_facturas', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_roles_users`
--

CREATE TABLE `fs_roles_users` (
  `codrol` varchar(20) COLLATE utf8_bin NOT NULL,
  `fs_user` varchar(12) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fs_roles_users`
--

INSERT INTO `fs_roles_users` (`codrol`, `fs_user`) VALUES
('001', 'cliente1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_users`
--

CREATE TABLE `fs_users` (
  `nick` varchar(12) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `log_key` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `last_login_time` time DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `last_browser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fs_page` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `css` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fs_users`
--

INSERT INTO `fs_users` (`nick`, `password`, `log_key`, `admin`, `enabled`, `codagente`, `last_login`, `last_login_time`, `last_ip`, `last_browser`, `fs_page`, `css`, `email`) VALUES
('admin', '229101b8f872656c7c9b24421bdd46f2a167046a', 'b691e55dddf717c331655be5dddffaeb96e94ee3', 1, 1, '2', '2018-08-21', '16:15:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'dashboard', 'view/css/bootstrap-cosmo.min.css', 'cburgosster@gmail.com'),
('cliente1', 'd94019fd760a71edf11844bb5c601a4de95aacaf', NULL, 0, 1, '3', NULL, NULL, NULL, '', NULL, 'view/css/bootstrap-simplex.min.css', 'acme@gmail.com'),
('tito', 'f5276fb0b29741f04c2acaa55e40da5b45c2dacf', '88547be1130859cf095ec35f890a1a53eafa9ac2', 1, 1, NULL, '2018-08-04', '15:31:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'ventas_facturas', 'view/css/bootstrap-spacelab.min.css', 'cburgosster@gmail.com'),
('tito-emplead', '293abb6b76d7791c0732cc517d38c4b5c734b87f', 'ebed9c8f2abc8e5c320859c5fcb528734599d269', 0, 1, '3', '2018-07-11', '18:26:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'ventas_clientes', 'view/css/bootstrap-yeti.min.css', 'cburgosster@gmail.com'),
('usuario1', 'b665e217b51994789b02b1838e730d6b93baa30f', '2c995d097a80369df69e7a06ed84710d9bae0ffa', 0, 1, '4', '2018-08-14', '16:49:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'ventas_albaranes', 'view/css/bootstrap-yeti.min.css', 'cburgosster@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_vars`
--

CREATE TABLE `fs_vars` (
  `name` varchar(35) COLLATE utf8_bin NOT NULL,
  `varchar` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fs_vars`
--

INSERT INTO `fs_vars` (`name`, `varchar`) VALUES
('f_detallada_agrupa_albaranes', '1'),
('f_detallada_color', 'azul'),
('f_detallada_color_b', '0'),
('f_detallada_color_g', '0'),
('f_detallada_color_r', '192'),
('f_detallada_imprime_albaran', '1'),
('f_detallada_maquetar_negrita', '1'),
('f_detallada_print_may_min', '1'),
('google_divisas_cron', '1'),
('install_step', '5'),
('mail_albaran', 'Buenos días, le adjunto su #DOCUMENTO#.\r\n#FIRMA#'),
('mail_bcc', 'Si'),
('mail_enc', 'ssl'),
('mail_factura', 'Buenos días, le adjunto su #DOCUMENTO#.\r\n#FIRMA#'),
('mail_firma', '---\r\nEnviado con Facturas-Coopevic Ltda'),
('mail_host', 'smtp.gmail.com'),
('mail_low_security', '1'),
('mail_mailer', 'smtp'),
('mail_password', 'ayNgXrlfN3HJZ9PUXa'),
('mail_pedido', 'Buenos días, le adjunto su #DOCUMENTO#.\n#FIRMA#'),
('mail_port', '465'),
('mail_presupuesto', 'Buenos días, le adjunto su #DOCUMENTO#.\n#FIRMA#'),
('mail_user', 'cburgosster@gmail.com'),
('nuevocli_cifnif_req', '1'),
('nuevocli_ciudad', '1'),
('nuevocli_ciudad_req', '0'),
('nuevocli_codgrupo', '000002'),
('nuevocli_codpostal', '1'),
('nuevocli_codpostal_req', '0'),
('nuevocli_direccion', '1'),
('nuevocli_direccion_req', '1'),
('nuevocli_email', '1'),
('nuevocli_email_req', '0'),
('nuevocli_pais', '0'),
('nuevocli_pais_req', '0'),
('nuevocli_provincia', '1'),
('nuevocli_provincia_req', '0'),
('nuevocli_telefono1', '1'),
('nuevocli_telefono1_req', '0'),
('nuevocli_telefono2', '1'),
('nuevocli_telefono2_req', '0'),
('numeracion_personalizada', '1'),
('print_alb', '0'),
('print_dto', '1'),
('print_formapago', '1'),
('print_ref', '1'),
('updates', 'true');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gruposclientes`
--

CREATE TABLE `gruposclientes` (
  `codgrupo` varchar(6) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `codtarifa` varchar(6) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `gruposclientes`
--

INSERT INTO `gruposclientes` (`codgrupo`, `nombre`, `codtarifa`) VALUES
('000001', 'JFK-Primaria', NULL),
('000002', 'JFK_Secundaria', NULL),
('000003', 'JFK_Jardines', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas_fac_det`
--

CREATE TABLE `idiomas_fac_det` (
  `codidioma` varchar(10) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `telefono` varchar(100) COLLATE utf8_bin DEFAULT 'teléfono',
  `fax` varchar(100) COLLATE utf8_bin DEFAULT 'fax',
  `email` varchar(100) COLLATE utf8_bin DEFAULT 'email',
  `web` varchar(100) COLLATE utf8_bin DEFAULT 'web',
  `factura` varchar(100) COLLATE utf8_bin DEFAULT 'factura',
  `albaran` varchar(100) COLLATE utf8_bin DEFAULT 'albarán',
  `pedido` varchar(100) COLLATE utf8_bin DEFAULT 'pedido',
  `pagina` varchar(100) COLLATE utf8_bin DEFAULT 'página',
  `fecha` varchar(100) COLLATE utf8_bin DEFAULT 'fecha',
  `num_cliente` varchar(100) COLLATE utf8_bin DEFAULT 'nº de cliente',
  `cliente` varchar(100) COLLATE utf8_bin DEFAULT 'cliente',
  `forma_pago` varchar(100) COLLATE utf8_bin DEFAULT 'forma de pago',
  `vencimiento` varchar(100) COLLATE utf8_bin DEFAULT 'vencimiento',
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT 'descripción',
  `cant` varchar(100) COLLATE utf8_bin DEFAULT 'cant',
  `precio` varchar(100) COLLATE utf8_bin DEFAULT 'precio',
  `dto` varchar(100) COLLATE utf8_bin DEFAULT 'dto',
  `iva` varchar(100) COLLATE utf8_bin DEFAULT 'iva',
  `importe` varchar(100) COLLATE utf8_bin DEFAULT 'importe',
  `importes` varchar(100) COLLATE utf8_bin DEFAULT 'importes',
  `neto` varchar(100) COLLATE utf8_bin DEFAULT 'neto',
  `rec_equiv` varchar(100) COLLATE utf8_bin DEFAULT 'rec. equiv.',
  `irpf` varchar(100) COLLATE utf8_bin DEFAULT 'irpf',
  `total` varchar(100) COLLATE utf8_bin DEFAULT 'total',
  `suma_sigue` varchar(100) COLLATE utf8_bin DEFAULT 'suma y sigue',
  `observaciones` varchar(100) COLLATE utf8_bin DEFAULT 'observaciones'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `idiomas_fac_det`
--

INSERT INTO `idiomas_fac_det` (`codidioma`, `nombre`, `activo`, `telefono`, `fax`, `email`, `web`, `factura`, `albaran`, `pedido`, `pagina`, `fecha`, `num_cliente`, `cliente`, `forma_pago`, `vencimiento`, `descripcion`, `cant`, `precio`, `dto`, `iva`, `importe`, `importes`, `neto`, `rec_equiv`, `irpf`, `total`, `suma_sigue`, `observaciones`) VALUES
('es_ES', 'Español', 1, 'teléfono', 'fax', 'email', 'web', 'factura', 'Remito', 'pedido', 'página', 'fecha', 'nº de cliente', 'cliente', 'forma de pago', 'vencimiento', 'descripción', 'cant', 'precio', 'dto', 'iva', 'importe', 'importes', 'neto', 'rec. equiv.', 'irpf', 'total', 'suma y sigue', 'observaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestos`
--

CREATE TABLE `impuestos` (
  `codimpuesto` varchar(10) COLLATE utf8_bin NOT NULL,
  `codsubcuentaacr` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentadeu` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivadedadue` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivadevadue` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivadeventue` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivarepexe` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivarepexp` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivarepre` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivasopagra` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivasopexe` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivasopimp` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentarep` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentasop` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `idsubcuentaacr` int(11) DEFAULT NULL,
  `idsubcuentadeu` int(11) DEFAULT NULL,
  `idsubcuentaivadedadue` int(11) DEFAULT NULL,
  `idsubcuentaivadevadue` int(11) DEFAULT NULL,
  `idsubcuentaivadeventue` int(11) DEFAULT NULL,
  `idsubcuentaivarepexe` int(11) DEFAULT NULL,
  `idsubcuentaivarepexp` int(11) DEFAULT NULL,
  `idsubcuentaivarepre` int(11) DEFAULT NULL,
  `idsubcuentaivasopagra` int(11) DEFAULT NULL,
  `idsubcuentaivasopexe` int(11) DEFAULT NULL,
  `idsubcuentaivasopimp` int(11) DEFAULT NULL,
  `idsubcuentarep` int(11) DEFAULT NULL,
  `idsubcuentasop` int(11) DEFAULT NULL,
  `iva` double NOT NULL,
  `recargo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `impuestos`
--

INSERT INTO `impuestos` (`codimpuesto`, `codsubcuentaacr`, `codsubcuentadeu`, `codsubcuentaivadedadue`, `codsubcuentaivadevadue`, `codsubcuentaivadeventue`, `codsubcuentaivarepexe`, `codsubcuentaivarepexp`, `codsubcuentaivarepre`, `codsubcuentaivasopagra`, `codsubcuentaivasopexe`, `codsubcuentaivasopimp`, `codsubcuentarep`, `codsubcuentasop`, `descripcion`, `idsubcuentaacr`, `idsubcuentadeu`, `idsubcuentaivadedadue`, `idsubcuentaivadevadue`, `idsubcuentaivadeventue`, `idsubcuentaivarepexe`, `idsubcuentaivarepexp`, `idsubcuentaivarepre`, `idsubcuentaivasopagra`, `idsubcuentaivasopexe`, `idsubcuentaivasopimp`, `idsubcuentarep`, `idsubcuentasop`, `iva`, `recargo`) VALUES
('AR0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AR 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('AR105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AR 10,5%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.5, 0),
('AR21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AR 21%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 0),
('AR27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AR 27%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 0),
('AR5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AR 5%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kdb`
--

CREATE TABLE `kdb` (
  `idkdb` int(11) NOT NULL,
  `sintoma` varchar(255) COLLATE utf8_bin NOT NULL,
  `causa` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `solucion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `kdb`
--

INSERT INTO `kdb` (`idkdb`, `sintoma`, `causa`, `solucion`, `observaciones`) VALUES
(1, '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasalbaranescli`
--

CREATE TABLE `lineasalbaranescli` (
  `cantidad` double NOT NULL DEFAULT '0',
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL DEFAULT '0',
  `dtopor2` double NOT NULL DEFAULT '0',
  `dtopor3` double NOT NULL DEFAULT '0',
  `dtopor4` double NOT NULL DEFAULT '0',
  `idalbaran` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL,
  `idlineapedido` int(11) DEFAULT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL DEFAULT '0',
  `porcomision` double DEFAULT NULL,
  `pvpsindto` double NOT NULL DEFAULT '0',
  `pvptotal` double NOT NULL DEFAULT '0',
  `pvpunitario` double NOT NULL DEFAULT '0',
  `recargo` double DEFAULT '0',
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `codcombinacion` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `mostrar_cantidad` tinyint(1) DEFAULT '1',
  `mostrar_precio` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasalbaranesprov`
--

CREATE TABLE `lineasalbaranesprov` (
  `cantidad` double NOT NULL DEFAULT '0',
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL DEFAULT '0',
  `idalbaran` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL,
  `idlineapedido` int(11) DEFAULT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL DEFAULT '0',
  `pvpsindto` double NOT NULL DEFAULT '0',
  `pvptotal` double NOT NULL DEFAULT '0',
  `pvpunitario` double NOT NULL DEFAULT '0',
  `recargo` double DEFAULT '0',
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `codcombinacion` varchar(18) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasfacturascli`
--

CREATE TABLE `lineasfacturascli` (
  `cantidad` double NOT NULL DEFAULT '0',
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL DEFAULT '0',
  `dtopor2` double NOT NULL DEFAULT '0',
  `dtopor3` double NOT NULL DEFAULT '0',
  `dtopor4` double NOT NULL DEFAULT '0',
  `idalbaran` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL,
  `idlineaalbaran` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL,
  `porcomision` double DEFAULT NULL,
  `pvpsindto` double NOT NULL,
  `pvptotal` double NOT NULL,
  `pvpunitario` double NOT NULL,
  `recargo` double DEFAULT NULL,
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `codcombinacion` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `mostrar_cantidad` tinyint(1) DEFAULT '1',
  `mostrar_precio` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `lineasfacturascli`
--

INSERT INTO `lineasfacturascli` (`cantidad`, `codimpuesto`, `descripcion`, `dtolineal`, `dtopor`, `dtopor2`, `dtopor3`, `dtopor4`, `idalbaran`, `idfactura`, `idlinea`, `idlineaalbaran`, `irpf`, `iva`, `porcomision`, `pvpsindto`, `pvptotal`, `pvpunitario`, `recargo`, `referencia`, `codcombinacion`, `orden`, `mostrar_cantidad`, `mostrar_precio`) VALUES
(3, 'AR21', 'cuota mes agosto', 0, 0, 5, 7, 10, NULL, 1, 1, NULL, 0, 21, NULL, 174, 138.3561, 58, 0, NULL, NULL, 0, 1, 1),
(1, 'AR0', 'Juan Perez Jr.', 0, 0, 0, 0, 0, NULL, 2, 2, NULL, 0, 0, NULL, 120, 120, 120, 0, '1', NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasfacturasprov`
--

CREATE TABLE `lineasfacturasprov` (
  `cantidad` double NOT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL,
  `idalbaran` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL,
  `idlineaalbaran` int(11) DEFAULT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL,
  `pvpsindto` double NOT NULL,
  `pvptotal` double DEFAULT NULL,
  `pvpunitario` double NOT NULL,
  `recargo` double DEFAULT NULL,
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `codcombinacion` varchar(18) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasivafactcli`
--

CREATE TABLE `lineasivafactcli` (
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL,
  `iva` double NOT NULL DEFAULT '0',
  `neto` double NOT NULL DEFAULT '0',
  `recargo` double NOT NULL DEFAULT '0',
  `totaliva` double NOT NULL DEFAULT '0',
  `totallinea` double NOT NULL DEFAULT '0',
  `totalrecargo` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `lineasivafactcli`
--

INSERT INTO `lineasivafactcli` (`codimpuesto`, `idfactura`, `idlinea`, `iva`, `neto`, `recargo`, `totaliva`, `totallinea`, `totalrecargo`) VALUES
('AR21', 1, 1, 21, 138.36, 0, 29.05, 167.41, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasregstocks`
--

CREATE TABLE `lineasregstocks` (
  `cantidadfin` double NOT NULL DEFAULT '0',
  `cantidadini` double NOT NULL DEFAULT '0',
  `codalmacendest` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id` int(11) NOT NULL,
  `idstock` int(11) NOT NULL,
  `motivo` text COLLATE utf8_bin,
  `nick` varchar(12) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineastransstock`
--

CREATE TABLE `lineastransstock` (
  `cantidad` double NOT NULL,
  `descripcion` text COLLATE utf8_bin,
  `idlinea` int(11) NOT NULL,
  `idtrans` int(11) NOT NULL,
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `validarprov` tinyint(1) DEFAULT NULL,
  `codiso` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `bandera` text COLLATE utf8_bin,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpais` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`validarprov`, `codiso`, `bandera`, `nombre`, `codpais`) VALUES
(NULL, 'AW', NULL, 'Aruba', 'ABW'),
(NULL, 'AX', NULL, 'Islas Gland', 'ALA'),
(NULL, 'AE', NULL, 'Emiratos Árabes Unidos', 'ARE'),
(NULL, 'AR', NULL, 'Argentina', 'ARG'),
(NULL, 'AM', NULL, 'Armenia', 'ARM'),
(NULL, 'AS', NULL, 'Samoa Americana', 'ASM'),
(NULL, 'TF', NULL, 'Territorios Australes Franceses', 'ATF'),
(NULL, 'AU', NULL, 'Australia', 'AUS'),
(NULL, 'AT', NULL, 'Austria', 'AUT'),
(NULL, 'AZ', NULL, 'Azerbaiyán', 'AZE'),
(NULL, 'BI', NULL, 'Burundi', 'BDI'),
(NULL, 'BE', NULL, 'Bélgica', 'BEL'),
(NULL, 'BJ', NULL, 'Benín', 'BEN'),
(NULL, 'BF', NULL, 'Burkina Faso', 'BFA'),
(NULL, 'BD', NULL, 'Bangladesh', 'BGD'),
(NULL, 'BG', NULL, 'Bulgaria', 'BGR'),
(NULL, 'BH', NULL, 'Bahréin', 'BHR'),
(NULL, 'BS', NULL, 'Bahamas', 'BHS'),
(NULL, 'BA', NULL, 'Bosnia y Herzegovina', 'BIH'),
(NULL, 'BY', NULL, 'Bielorrusia', 'BLR'),
(NULL, 'BZ', NULL, 'Belice', 'BLZ'),
(NULL, 'BM', NULL, 'Bermudas', 'BMU'),
(NULL, 'BO', NULL, 'Bolivia', 'BOL'),
(NULL, 'BR', NULL, 'Brasil', 'BRA'),
(NULL, 'BB', NULL, 'Barbados', 'BRB'),
(NULL, 'BN', NULL, 'Brunéi', 'BRN'),
(NULL, 'BT', NULL, 'Bhután', 'BTN'),
(NULL, 'BV', NULL, 'Isla Bouvet', 'BVT'),
(NULL, 'BW', NULL, 'Botsuana', 'BWA'),
(NULL, 'CF', NULL, 'República Centroafricana', 'CAF'),
(NULL, 'CA', NULL, 'Canadá', 'CAN'),
(NULL, 'CC', NULL, 'Islas Cocos', 'CCK'),
(NULL, 'CH', NULL, 'Suiza', 'CHE'),
(NULL, 'CL', NULL, 'Chile', 'CHL'),
(NULL, 'CN', NULL, 'China', 'CHN'),
(NULL, 'CI', NULL, 'Costa de Marfil', 'CIV'),
(NULL, 'CM', NULL, 'Camerún', 'CMR'),
(NULL, 'CD', NULL, 'República Democrática del Congo', 'COD'),
(NULL, 'CG', NULL, 'Congo', 'COG'),
(NULL, 'CK', NULL, 'Islas Cook', 'COK'),
(NULL, 'CO', NULL, 'Colombia', 'COL'),
(NULL, 'KM', NULL, 'Comoras', 'COM'),
(NULL, 'CV', NULL, 'Cabo Verde', 'CPV'),
(NULL, 'CR', NULL, 'Costa Rica', 'CRI'),
(NULL, 'CU', NULL, 'Cuba', 'CUB'),
(NULL, 'CX', NULL, 'Isla de Navidad', 'CXR'),
(NULL, 'KY', NULL, 'Islas Caimán', 'CYM'),
(NULL, 'CY', NULL, 'Chipre', 'CYP'),
(NULL, 'CZ', NULL, 'República Checa', 'CZE'),
(NULL, 'DJ', NULL, 'Yibuti', 'DJI'),
(NULL, 'DM', NULL, 'Dominica', 'DMA'),
(NULL, 'DK', NULL, 'Dinamarca', 'DNK'),
(NULL, 'DO', NULL, 'República Dominicana', 'DOM'),
(NULL, 'EC', NULL, 'Ecuador', 'ECU'),
(NULL, 'EG', NULL, 'Egipto', 'EGY'),
(NULL, 'ER', NULL, 'Eritrea', 'ERI'),
(NULL, 'EH', NULL, 'Sahara Occidental', 'ESH'),
(NULL, 'ES', NULL, 'España', 'ESP'),
(NULL, 'EE', NULL, 'Estonia', 'EST'),
(NULL, 'ET', NULL, 'Etiopía', 'ETH'),
(NULL, 'FI', NULL, 'Finlandia', 'FIN'),
(NULL, 'FJ', NULL, 'Fiyi', 'FJI'),
(NULL, 'FK', NULL, 'Islas Malvinas', 'FLK'),
(NULL, 'FR', NULL, 'Francia', 'FRA'),
(NULL, 'FO', NULL, 'Islas Feroe', 'FRO'),
(NULL, 'FM', NULL, 'Micronesia', 'FSM'),
(NULL, 'GA', NULL, 'Gabón', 'GAB'),
(NULL, 'GB', NULL, 'Reino Unido', 'GBR'),
(NULL, 'GE', NULL, 'Georgia', 'GEO'),
(NULL, 'GH', NULL, 'Ghana', 'GHA'),
(NULL, 'GI', NULL, 'Gibraltar', 'GIB'),
(NULL, 'GN', NULL, 'Guinea', 'GIN'),
(NULL, 'GP', NULL, 'Guadalupe', 'GLP'),
(NULL, 'GM', NULL, 'Gambia', 'GMB'),
(NULL, 'GW', NULL, 'Guinea-Bissau', 'GNB'),
(NULL, 'GQ', NULL, 'Guinea Ecuatorial', 'GNQ'),
(NULL, 'GR', NULL, 'Grecia', 'GRC'),
(NULL, 'GD', NULL, 'Granada', 'GRD'),
(NULL, 'GL', NULL, 'Groenlandia', 'GRL'),
(NULL, 'GT', NULL, 'Guatemala', 'GTM'),
(NULL, 'GF', NULL, 'Guayana Francesa', 'GUF'),
(NULL, 'GU', NULL, 'Guam', 'GUM'),
(NULL, 'GY', NULL, 'Guyana', 'GUY'),
(NULL, 'HK', NULL, 'Hong Kong', 'HKG'),
(NULL, 'HM', NULL, 'Islas Heard y McDonald', 'HMD'),
(NULL, 'HN', NULL, 'Honduras', 'HND'),
(NULL, 'HR', NULL, 'Croacia', 'HRV'),
(NULL, 'HT', NULL, 'Haití', 'HTI'),
(NULL, 'HU', NULL, 'Hungría', 'HUN'),
(NULL, 'ID', NULL, 'Indonesia', 'IDN'),
(NULL, 'IN', NULL, 'India', 'IND'),
(NULL, 'IO', NULL, 'Territorio Británico del Océano Índico', 'IOT'),
(NULL, 'IE', NULL, 'Irlanda', 'IRL'),
(NULL, 'IR', NULL, 'Irán', 'IRN'),
(NULL, 'IQ', NULL, 'Iraq', 'IRQ'),
(NULL, 'IS', NULL, 'Islandia', 'ISL'),
(NULL, 'IL', NULL, 'Israel', 'ISR'),
(NULL, 'IT', NULL, 'Italia', 'ITA'),
(NULL, 'JM', NULL, 'Jamaica', 'JAM'),
(NULL, 'JO', NULL, 'Jordania', 'JOR'),
(NULL, 'JP', NULL, 'Japón', 'JPN'),
(NULL, 'KZ', NULL, 'Kazajstán', 'KAZ'),
(NULL, 'KE', NULL, 'Kenia', 'KEN'),
(NULL, 'KG', NULL, 'Kirguistán', 'KGZ'),
(NULL, 'KH', NULL, 'Camboya', 'KHM'),
(NULL, 'KI', NULL, 'Kiribati', 'KIR'),
(NULL, 'KN', NULL, 'San Cristóbal y Nieves', 'KNA'),
(NULL, 'KR', NULL, 'Corea del Sur', 'KOR'),
(NULL, 'KW', NULL, 'Kuwait', 'KWT'),
(NULL, 'LA', NULL, 'Laos', 'LAO'),
(NULL, 'LB', NULL, 'Líbano', 'LBN'),
(NULL, 'LR', NULL, 'Liberia', 'LBR'),
(NULL, 'LY', NULL, 'Libia', 'LBY'),
(NULL, 'LC', NULL, 'Santa Lucía', 'LCA'),
(NULL, 'LI', NULL, 'Liechtenstein', 'LIE'),
(NULL, 'LK', NULL, 'Sri Lanka', 'LKA'),
(NULL, 'LS', NULL, 'Lesotho', 'LSO'),
(NULL, 'LT', NULL, 'Lituania', 'LTU'),
(NULL, 'LU', NULL, 'Luxemburgo', 'LUX'),
(NULL, 'LV', NULL, 'Letonia', 'LVA'),
(NULL, 'MO', NULL, 'Macao', 'MAC'),
(NULL, 'MA', NULL, 'Marruecos', 'MAR'),
(NULL, 'MC', NULL, 'Mónaco', 'MCO'),
(NULL, 'MD', NULL, 'Moldavia', 'MDA'),
(NULL, 'MG', NULL, 'Madagascar', 'MDG'),
(NULL, 'MV', NULL, 'Maldivas', 'MDV'),
(NULL, 'MX', NULL, 'México', 'MEX'),
(NULL, 'MH', NULL, 'Islas Marshall', 'MHL'),
(NULL, 'MK', NULL, 'Macedonia', 'MKD'),
(NULL, 'ML', NULL, 'Malí', 'MLI'),
(NULL, 'MT', NULL, 'Malta', 'MLT'),
(NULL, 'MM', NULL, 'Myanmar', 'MMR'),
(NULL, 'ME', NULL, 'Montenegro', 'MNE'),
(NULL, 'MN', NULL, 'Mongolia', 'MNG'),
(NULL, 'MP', NULL, 'Islas Marianas del Norte', 'MNP'),
(NULL, 'MZ', NULL, 'Mozambique', 'MOZ'),
(NULL, 'MR', NULL, 'Mauritania', 'MRT'),
(NULL, 'MS', NULL, 'Montserrat', 'MSR'),
(NULL, 'MQ', NULL, 'Martinica', 'MTQ'),
(NULL, 'MU', NULL, 'Mauricio', 'MUS'),
(NULL, 'MW', NULL, 'Malaui', 'MWI'),
(NULL, 'MY', NULL, 'Malasia', 'MYS'),
(NULL, 'YT', NULL, 'Mayotte', 'MYT'),
(NULL, 'NA', NULL, 'Namibia', 'NAM'),
(NULL, 'NC', NULL, 'Nueva Caledonia', 'NCL'),
(NULL, 'NE', NULL, 'Níger', 'NER'),
(NULL, 'NF', NULL, 'Isla Norfolk', 'NFK'),
(NULL, 'NG', NULL, 'Nigeria', 'NGA'),
(NULL, 'NI', NULL, 'Nicaragua', 'NIC'),
(NULL, 'NU', NULL, 'Niue', 'NIU'),
(NULL, 'NL', NULL, 'Países Bajos', 'NLD'),
(NULL, 'NO', NULL, 'Noruega', 'NOR'),
(NULL, 'NP', NULL, 'Nepal', 'NPL'),
(NULL, 'NR', NULL, 'Nauru', 'NRU'),
(NULL, 'NZ', NULL, 'Nueva Zelanda', 'NZL'),
(NULL, 'OM', NULL, 'Omán', 'OMN'),
(NULL, 'PK', NULL, 'Pakistán', 'PAK'),
(NULL, 'PA', NULL, 'Panamá', 'PAN'),
(NULL, 'PN', NULL, 'Islas Pitcairn', 'PCN'),
(NULL, 'PE', NULL, 'Perú', 'PER'),
(NULL, 'PH', NULL, 'Filipinas', 'PHL'),
(NULL, 'PW', NULL, 'Palaos', 'PLW'),
(NULL, 'PG', NULL, 'Papúa Nueva Guinea', 'PNG'),
(NULL, 'PL', NULL, 'Polonia', 'POL'),
(NULL, 'PR', NULL, 'Puerto Rico', 'PRI'),
(NULL, 'KP', NULL, 'Corea del Norte', 'PRK'),
(NULL, 'PT', NULL, 'Portugal', 'PRT'),
(NULL, 'PY', NULL, 'Paraguay', 'PRY'),
(NULL, 'PS', NULL, 'Palestina', 'PSE'),
(NULL, 'PF', NULL, 'Polinesia Francesa', 'PYF'),
(NULL, 'QA', NULL, 'Qatar', 'QAT'),
(NULL, 'RE', NULL, 'Reunión', 'REU'),
(NULL, 'RO', NULL, 'Rumania', 'ROU'),
(NULL, 'RU', NULL, 'Rusia', 'RUS'),
(NULL, 'RW', NULL, 'Ruanda', 'RWA'),
(NULL, 'SD', NULL, 'Sudán', 'SDN'),
(NULL, 'SN', NULL, 'Senegal', 'SEN'),
(NULL, 'SG', NULL, 'Singapur', 'SGP'),
(NULL, 'GS', NULL, 'Islas Georgias del Sur y Sandwich del Sur', 'SGS'),
(NULL, 'SH', NULL, 'Santa Helena', 'SHN'),
(NULL, 'SJ', NULL, 'Svalbard y Jan Mayen', 'SJM'),
(NULL, 'SB', NULL, 'Islas Salomón', 'SLB'),
(NULL, 'SL', NULL, 'Sierra Leona', 'SLE'),
(NULL, 'SV', NULL, 'El Salvador', 'SLV'),
(NULL, 'SM', NULL, 'San Marino', 'SMR'),
(NULL, 'SO', NULL, 'Somalia', 'SOM'),
(NULL, 'PM', NULL, 'San Pedro y Miquelón', 'SPM'),
(NULL, 'RS', NULL, 'Serbia', 'SRB'),
(NULL, 'ST', NULL, 'Santo Tomé y Príncipe', 'STP'),
(NULL, 'SR', NULL, 'Surinam', 'SUR'),
(NULL, 'SK', NULL, 'Eslovaquia', 'SVK'),
(NULL, 'SI', NULL, 'Eslovenia', 'SVN'),
(NULL, 'SE', NULL, 'Suecia', 'SWE'),
(NULL, 'SZ', NULL, 'Suazilandia', 'SWZ'),
(NULL, 'SC', NULL, 'Seychelles', 'SYC'),
(NULL, 'SY', NULL, 'Siria', 'SYR'),
(NULL, 'TC', NULL, 'Islas Turcas y Caicos', 'TCA'),
(NULL, 'TD', NULL, 'Chad', 'TCD'),
(NULL, 'TG', NULL, 'Togo', 'TGO'),
(NULL, 'TH', NULL, 'Tailandia', 'THA'),
(NULL, 'TJ', NULL, 'Tayikistán', 'TJK'),
(NULL, 'TK', NULL, 'Tokelau', 'TKL'),
(NULL, 'TM', NULL, 'Turkmenistán', 'TKM'),
(NULL, 'TL', NULL, 'Timor Oriental', 'TLS'),
(NULL, 'TO', NULL, 'Tonga', 'TON'),
(NULL, 'TT', NULL, 'Trinidad y Tobago', 'TTO'),
(NULL, 'TN', NULL, 'Túnez', 'TUN'),
(NULL, 'TR', NULL, 'Turquía', 'TUR'),
(NULL, 'TV', NULL, 'Tuvalu', 'TUV'),
(NULL, 'TW', NULL, 'Taiwán', 'TWN'),
(NULL, 'TZ', NULL, 'Tanzania', 'TZA'),
(NULL, 'UG', NULL, 'Uganda', 'UGA'),
(NULL, 'UA', NULL, 'Ucrania', 'UKR'),
(NULL, 'UM', NULL, 'Islas Ultramarinas de Estados Unidos', 'UMI'),
(NULL, 'UY', NULL, 'Uruguay', 'URY'),
(NULL, 'US', NULL, 'Estados Unidos', 'USA'),
(NULL, 'UZ', NULL, 'Uzbekistán', 'UZB'),
(NULL, 'VA', NULL, 'Ciudad del Vaticano', 'VAT'),
(NULL, 'VC', NULL, 'San Vicente y las Granadinas', 'VCT'),
(NULL, 'VE', NULL, 'Venezuela', 'VEN'),
(NULL, 'VG', NULL, 'Islas Vírgenes Británicas', 'VGB'),
(NULL, 'VI', NULL, 'Islas Vírgenes de los Estados Unidos', 'VIR'),
(NULL, 'VN', NULL, 'Vietnam', 'VNM'),
(NULL, 'VU', NULL, 'Vanuatu', 'VUT'),
(NULL, 'WF', NULL, 'Wallis y Futuna', 'WLF'),
(NULL, 'WS', NULL, 'Samoa', 'WSM'),
(NULL, 'YE', NULL, 'Yemen', 'YEM'),
(NULL, 'ZA', NULL, 'Sudáfrica', 'ZAF'),
(NULL, 'ZM', NULL, 'Zambia', 'ZMB'),
(NULL, 'ZW', NULL, 'Zimbabue', 'ZWE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `cifnif` varchar(30) COLLATE utf8_bin NOT NULL,
  `codcontacto` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentadom` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentapago` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `codserie` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `contacto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `ivaportes` double DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `razonsocial` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `recfinanciero` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `regimeniva` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `telefono1` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `telefono2` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `tipoidfiscal` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT 'NIF',
  `web` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `acreedor` tinyint(1) DEFAULT '0',
  `personafisica` tinyint(1) DEFAULT '1',
  `debaja` tinyint(1) DEFAULT '0',
  `fechabaja` date DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`cifnif`, `codcontacto`, `codcuentadom`, `codcuentapago`, `coddivisa`, `codpago`, `codproveedor`, `codserie`, `codsubcuenta`, `contacto`, `email`, `fax`, `idsubcuenta`, `ivaportes`, `nombre`, `razonsocial`, `observaciones`, `recfinanciero`, `regimeniva`, `telefono1`, `telefono2`, `tipoidfiscal`, `web`, `acreedor`, `personafisica`, `debaja`, `fechabaja`, `codcliente`) VALUES
('302221231', NULL, NULL, NULL, 'ARS', 'CONT', '000001', NULL, NULL, NULL, '', '', NULL, NULL, 'Escuela JFK', 'Escuela JFK', '', NULL, 'General', '', '', 'CUIT', '', 0, 0, 0, '2018-08-01', '000002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuencias`
--

CREATE TABLE `secuencias` (
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL,
  `idsec` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `valorout` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `secuencias`
--

INSERT INTO `secuencias` (`descripcion`, `id`, `idsec`, `nombre`, `valor`, `valorout`) VALUES
('Secuencia del ejercicio 2018 y la serie A', 1, 1, 'nfacturacli', 1, 3),
('Secuencia del ejercicio 2018 y la serie B', 3, 2, 'nfacturacli', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuenciasejercicios`
--

CREATE TABLE `secuenciasejercicios` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL,
  `nalbarancli` int(11) NOT NULL,
  `nalbaranprov` int(11) NOT NULL,
  `nfacturacli` int(11) NOT NULL,
  `nfacturaprov` int(11) NOT NULL,
  `npedidocli` int(11) NOT NULL,
  `npedidoprov` int(11) NOT NULL,
  `npresupuestocli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `secuenciasejercicios`
--

INSERT INTO `secuenciasejercicios` (`codejercicio`, `codserie`, `id`, `nalbarancli`, `nalbaranprov`, `nfacturacli`, `nfacturaprov`, `npedidocli`, `npedidoprov`, `npresupuestocli`) VALUES
('2018', 'A', 1, 1, 1, 1, 1, 1, 1, 1),
('2018', 'R', 2, 1, 1, 1, 1, 1, 1, 1),
('2018', 'B', 3, 1, 1, 1, 1, 1, 1, 1),
('2018', 'C', 4, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `irpf` double DEFAULT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `siniva` tinyint(1) DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `numfactura` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`irpf`, `idcuenta`, `codserie`, `descripcion`, `siniva`, `codcuenta`, `codejercicio`, `numfactura`) VALUES
(0, NULL, 'A', 'SERIE A', 0, NULL, NULL, 1),
(0, NULL, 'B', 'SERIE B', 0, NULL, NULL, 1),
(0, NULL, 'C', 'SERIE C', 0, NULL, NULL, 1),
(0, NULL, 'R', 'RECTIFICATIVAS', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stocks`
--

CREATE TABLE `stocks` (
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL,
  `disponible` double NOT NULL,
  `stockmin` double NOT NULL DEFAULT '0',
  `reservada` double NOT NULL,
  `horaultreg` time DEFAULT '00:00:00',
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `pterecibir` double NOT NULL,
  `fechaultreg` date DEFAULT '2018-08-14',
  `codalmacen` varchar(4) COLLATE utf8_bin NOT NULL,
  `cantidadultreg` double NOT NULL DEFAULT '0',
  `idstock` int(11) NOT NULL,
  `cantidad` double NOT NULL DEFAULT '0',
  `stockmax` double NOT NULL DEFAULT '0',
  `ubicacion` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE `tarifas` (
  `incporcentual` double NOT NULL,
  `inclineal` double NOT NULL,
  `aplicar_a` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `mincoste` tinyint(1) DEFAULT '0',
  `maxpvp` tinyint(1) DEFAULT '0',
  `codtarifa` varchar(6) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tarifas`
--

INSERT INTO `tarifas` (`incporcentual`, `inclineal`, `aplicar_a`, `nombre`, `mincoste`, `maxpvp`, `codtarifa`) VALUES
(0, 0, 'pvp', '100', 0, 0, '000001'),
(0, -120, 'pvp', 'Preescolar', 0, 0, '000002'),
(0, -120, 'pvp', 'Primaria', 0, 0, '000003'),
(0, -150, 'pvp', 'Secundaria', 0, 0, '000004');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticketprintjob`
--

CREATE TABLE `ticketprintjob` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8_bin NOT NULL,
  `texto` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ticketprintjob`
--

INSERT INTO `ticketprintjob` (`id`, `tipo`, `texto`) VALUES
(1, 'factura', '\n---------------------------------------------\n              Instituto JFKennedy             \n               AV CONGRESO 1816               \n                  TEL: 422222                 \n\n  INSTITUTO PRIVADO JOHN FITTZGERALD KENNEDY  \n           CUIT: CUIT: 30-54050846-8          \n=============================================\n\n               FACTURA FAC2018A1              \n              01-07-2018 20:29:01             \nCLIENTE: tito\n=============================================\nREFERENCIA                           CANTIDAD\n=============================================\n                                            3\ncuota mes agosto\nPVP:                                    58.00\nIMPORTE:                               138.36\n=============================================\nIVA                                     29.05\nTOTAL DEL DOCUMENT:                    167.41\n\n\n                  acme.com.ar                 \n\na1hFwH2kFAC2018A1\0\n\n\n\ni\n\n---------------------------------------------\n              Instituto JFKennedy             \n               AV CONGRESO 1816               \n                  TEL: 422222                 \n\n  INSTITUTO PRIVADO JOHN FITTZGERALD KENNEDY  \n           CUIT: CUIT: 30-54050846-8          \n=============================================\n\n               FACTURA FAC2018A1              \n              01-07-2018 20:29:01             \nCLIENTE: tito\n=============================================\nREFERENCIA                           CANTIDAD\n=============================================\n                                            3\ncuota mes agosto\nPVP:                                    58.00\nIMPORTE:                               138.36\n=============================================\nIVA                                     29.05\nTOTAL DEL DOCUMENT:                    167.41\n\n\n                  acme.com.ar                 \n\na1hFwH2kFAC2018A1\0\n\n\n\ni\n\n---------------------------------------------\n              Instituto JFKennedy             \n               AV CONGRESO 1816               \n                  TEL: 422222                 \n\n  INSTITUTO PRIVADO JOHN FITTZGERALD KENNEDY  \n        CUIT/CUIL: CUIT: 30-54050846-8        \n=============================================\n\n               FACTURA FAC2018B1              \n              11-08-2018 13:07:35             \nCLIENTE: Perez Juan\n=============================================\nREFERENCIA                           CANTIDAD\n=============================================\nIVA                                      0.00\nTOTAL DEL DOCUMENT:                      0.00\n\n\n                  acme.com.ar                 \n\na1hFwH2kFAC2018B1\0\n\n\n\ni\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transstock`
--

CREATE TABLE `transstock` (
  `usuario` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `codalmadestino` varchar(4) COLLATE utf8_bin NOT NULL,
  `codalmaorigen` varchar(4) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `idtrans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenciastrans`
--
ALTER TABLE `agenciastrans`
  ADD PRIMARY KEY (`codtrans`);

--
-- Indices de la tabla `agentes`
--
ALTER TABLE `agentes`
  ADD PRIMARY KEY (`codagente`);

--
-- Indices de la tabla `albaranescli`
--
ALTER TABLE `albaranescli`
  ADD PRIMARY KEY (`idalbaran`),
  ADD UNIQUE KEY `uniq_codigo_albaranescli` (`codigo`),
  ADD KEY `ca_albaranescli_series2` (`codserie`),
  ADD KEY `ca_albaranescli_ejercicios2` (`codejercicio`),
  ADD KEY `ca_albaranescli_facturas` (`idfactura`);

--
-- Indices de la tabla `albaranesprov`
--
ALTER TABLE `albaranesprov`
  ADD PRIMARY KEY (`idalbaran`),
  ADD UNIQUE KEY `uniq_codigo_albaranesprov` (`codigo`),
  ADD KEY `ca_albaranesprov_series2` (`codserie`),
  ADD KEY `ca_albaranesprov_ejercicios2` (`codejercicio`),
  ADD KEY `ca_albaranesprov_facturas` (`idfactura`);

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`codalmacen`);

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`referencia`),
  ADD KEY `ca_articulos_impuestos` (`codimpuesto`),
  ADD KEY `ca_articulos_familias` (`codfamilia`),
  ADD KEY `ca_articulos_fabricantes` (`codfabricante`);

--
-- Indices de la tabla `articulosprov`
--
ALTER TABLE `articulosprov`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_articulo_proveedor2` (`codproveedor`,`refproveedor`);

--
-- Indices de la tabla `articulo_propiedades`
--
ALTER TABLE `articulo_propiedades`
  ADD PRIMARY KEY (`name`,`referencia`),
  ADD KEY `ca_articulo_propiedades_articulos` (`referencia`);

--
-- Indices de la tabla `articulo_trazas`
--
ALTER TABLE `articulo_trazas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_codigo_articulo_trazas` (`numserie`),
  ADD KEY `ca_articulo_trazas_articulos` (`referencia`),
  ADD KEY `ca_articulo_trazas_linalbcli` (`idlalbventa`),
  ADD KEY `ca_articulo_trazas_linfaccli` (`idlfacventa`),
  ADD KEY `ca_articulo_trazas_linalbprov` (`idlalbcompra`),
  ADD KEY `ca_articulo_trazas_linfacprov` (`idlfaccompra`);

--
-- Indices de la tabla `atributos`
--
ALTER TABLE `atributos`
  ADD PRIMARY KEY (`codatributo`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajas_terminales`
--
ALTER TABLE `cajas_terminales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codcliente`),
  ADD KEY `ca_clientes_grupos` (`codgrupo`);

--
-- Indices de la tabla `cliente_propiedades`
--
ALTER TABLE `cliente_propiedades`
  ADD PRIMARY KEY (`name`,`codcliente`),
  ADD KEY `ca_cliente_propiedades_clientes` (`codcliente`);

--
-- Indices de la tabla `co_asientos`
--
ALTER TABLE `co_asientos`
  ADD PRIMARY KEY (`idasiento`),
  ADD KEY `ca_co_asientos_ejercicios2` (`codejercicio`);

--
-- Indices de la tabla `co_codbalances08`
--
ALTER TABLE `co_codbalances08`
  ADD PRIMARY KEY (`codbalance`);

--
-- Indices de la tabla `co_conceptospar`
--
ALTER TABLE `co_conceptospar`
  ADD PRIMARY KEY (`idconceptopar`);

--
-- Indices de la tabla `co_cuentas`
--
ALTER TABLE `co_cuentas`
  ADD PRIMARY KEY (`idcuenta`),
  ADD UNIQUE KEY `uniq_codcuenta` (`codcuenta`,`codejercicio`),
  ADD KEY `ca_co_cuentas_ejercicios` (`codejercicio`),
  ADD KEY `ca_co_cuentas_epigrafes2` (`idepigrafe`);

--
-- Indices de la tabla `co_cuentascbba`
--
ALTER TABLE `co_cuentascbba`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `co_cuentasesp`
--
ALTER TABLE `co_cuentasesp`
  ADD PRIMARY KEY (`idcuentaesp`);

--
-- Indices de la tabla `co_epigrafes`
--
ALTER TABLE `co_epigrafes`
  ADD PRIMARY KEY (`idepigrafe`),
  ADD KEY `ca_co_epigrafes_ejercicios` (`codejercicio`),
  ADD KEY `ca_co_epigrafes_gruposepigrafes2` (`idgrupo`);

--
-- Indices de la tabla `co_gruposepigrafes`
--
ALTER TABLE `co_gruposepigrafes`
  ADD PRIMARY KEY (`idgrupo`),
  ADD KEY `ca_co_gruposepigrafes_ejercicios` (`codejercicio`);

--
-- Indices de la tabla `co_partidas`
--
ALTER TABLE `co_partidas`
  ADD PRIMARY KEY (`idpartida`),
  ADD KEY `ca_co_partidas_co_asientos2` (`idasiento`),
  ADD KEY `ca_co_partidas_subcuentas` (`idsubcuenta`);

--
-- Indices de la tabla `co_regiva`
--
ALTER TABLE `co_regiva`
  ADD PRIMARY KEY (`idregiva`);

--
-- Indices de la tabla `co_secuencias`
--
ALTER TABLE `co_secuencias`
  ADD PRIMARY KEY (`idsecuencia`),
  ADD KEY `ca_co_secuencias_ejercicios` (`codejercicio`);

--
-- Indices de la tabla `co_subcuentas`
--
ALTER TABLE `co_subcuentas`
  ADD PRIMARY KEY (`idsubcuenta`),
  ADD UNIQUE KEY `uniq_codsubcuenta` (`codsubcuenta`,`codejercicio`),
  ADD KEY `ca_co_subcuentas_ejercicios` (`codejercicio`),
  ADD KEY `ca_co_subcuentas_cuentas2` (`idcuenta`);

--
-- Indices de la tabla `co_subcuentascli`
--
ALTER TABLE `co_subcuentascli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ca_co_subcuentascli_ejercicios` (`codejercicio`),
  ADD KEY `ca_co_subcuentascli_clientes` (`codcliente`),
  ADD KEY `ca_co_subcuentascli_subcuentas` (`idsubcuenta`);

--
-- Indices de la tabla `co_subcuentasprov`
--
ALTER TABLE `co_subcuentasprov`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ca_co_subcuentasprov_ejercicios` (`codejercicio`),
  ADD KEY `ca_co_subcuentasprov_proveedores` (`codproveedor`),
  ADD KEY `ca_co_subcuentasprov_subcuentas` (`idsubcuenta`);

--
-- Indices de la tabla `cuentasbanco`
--
ALTER TABLE `cuentasbanco`
  ADD PRIMARY KEY (`codcuenta`);

--
-- Indices de la tabla `cuentasbcocli`
--
ALTER TABLE `cuentasbcocli`
  ADD PRIMARY KEY (`codcuenta`),
  ADD KEY `ca_cuentasbcocli_clientes` (`codcliente`);

--
-- Indices de la tabla `cuentasbcopro`
--
ALTER TABLE `cuentasbcopro`
  ADD PRIMARY KEY (`codcuenta`),
  ADD KEY `ca_cuentasbcopro_proveedores` (`codproveedor`);

--
-- Indices de la tabla `dirclientes`
--
ALTER TABLE `dirclientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ca_dirclientes_clientes` (`codcliente`);

--
-- Indices de la tabla `dirproveedores`
--
ALTER TABLE `dirproveedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ca_dirproveedores_proveedores` (`codproveedor`);

--
-- Indices de la tabla `divisas`
--
ALTER TABLE `divisas`
  ADD PRIMARY KEY (`coddivisa`);

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`codejercicio`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`codfabricante`);

--
-- Indices de la tabla `facturascli`
--
ALTER TABLE `facturascli`
  ADD PRIMARY KEY (`idfactura`),
  ADD UNIQUE KEY `uniq_codigo_facturascli` (`codigo`),
  ADD KEY `ca_facturascli_series2` (`codserie`),
  ADD KEY `ca_facturascli_ejercicios2` (`codejercicio`),
  ADD KEY `ca_facturascli_asiento2` (`idasiento`),
  ADD KEY `ca_facturascli_asientop` (`idasientop`);

--
-- Indices de la tabla `facturasprov`
--
ALTER TABLE `facturasprov`
  ADD PRIMARY KEY (`idfactura`),
  ADD UNIQUE KEY `uniq_codigo_facturasprov` (`codigo`),
  ADD KEY `ca_facturasprov_series2` (`codserie`),
  ADD KEY `ca_facturasprov_ejercicios2` (`codejercicio`),
  ADD KEY `ca_facturasprov_asiento2` (`idasiento`),
  ADD KEY `ca_facturasprov_asientop` (`idasientop`);

--
-- Indices de la tabla `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`codfamilia`);

--
-- Indices de la tabla `formaspago`
--
ALTER TABLE `formaspago`
  ADD PRIMARY KEY (`codpago`);

--
-- Indices de la tabla `fs_access`
--
ALTER TABLE `fs_access`
  ADD PRIMARY KEY (`fs_user`,`fs_page`),
  ADD KEY `fs_access_page2` (`fs_page`);

--
-- Indices de la tabla `fs_extensions2`
--
ALTER TABLE `fs_extensions2`
  ADD PRIMARY KEY (`name`,`page_from`),
  ADD KEY `ca_fs_extensions2_fs_pages` (`page_from`);

--
-- Indices de la tabla `fs_logs`
--
ALTER TABLE `fs_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fs_pages`
--
ALTER TABLE `fs_pages`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `fs_roles`
--
ALTER TABLE `fs_roles`
  ADD PRIMARY KEY (`codrol`);

--
-- Indices de la tabla `fs_roles_access`
--
ALTER TABLE `fs_roles_access`
  ADD PRIMARY KEY (`codrol`,`fs_page`),
  ADD KEY `fs_roles_access_page` (`fs_page`);

--
-- Indices de la tabla `fs_roles_users`
--
ALTER TABLE `fs_roles_users`
  ADD PRIMARY KEY (`codrol`,`fs_user`),
  ADD KEY `fs_roles_users_user` (`fs_user`);

--
-- Indices de la tabla `fs_users`
--
ALTER TABLE `fs_users`
  ADD PRIMARY KEY (`nick`),
  ADD KEY `ca_fs_users_pages` (`fs_page`);

--
-- Indices de la tabla `fs_vars`
--
ALTER TABLE `fs_vars`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `gruposclientes`
--
ALTER TABLE `gruposclientes`
  ADD PRIMARY KEY (`codgrupo`);

--
-- Indices de la tabla `idiomas_fac_det`
--
ALTER TABLE `idiomas_fac_det`
  ADD PRIMARY KEY (`codidioma`);

--
-- Indices de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  ADD PRIMARY KEY (`codimpuesto`);

--
-- Indices de la tabla `kdb`
--
ALTER TABLE `kdb`
  ADD PRIMARY KEY (`idkdb`);

--
-- Indices de la tabla `lineasalbaranescli`
--
ALTER TABLE `lineasalbaranescli`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `ca_lineasalbaranescli_albaranescli2` (`idalbaran`);

--
-- Indices de la tabla `lineasalbaranesprov`
--
ALTER TABLE `lineasalbaranesprov`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `ca_lineasalbaranesprov_albaranesprov2` (`idalbaran`);

--
-- Indices de la tabla `lineasfacturascli`
--
ALTER TABLE `lineasfacturascli`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `ca_linea_facturascli2` (`idfactura`);

--
-- Indices de la tabla `lineasfacturasprov`
--
ALTER TABLE `lineasfacturasprov`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `ca_linea_facturasprov2` (`idfactura`);

--
-- Indices de la tabla `lineasivafactcli`
--
ALTER TABLE `lineasivafactcli`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `ca_lineaiva_facturascli2` (`idfactura`);

--
-- Indices de la tabla `lineasregstocks`
--
ALTER TABLE `lineasregstocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ca_lineasregstocks_stocks` (`idstock`);

--
-- Indices de la tabla `lineastransstock`
--
ALTER TABLE `lineastransstock`
  ADD PRIMARY KEY (`idlinea`),
  ADD UNIQUE KEY `uniq_referencia_transferencia` (`idtrans`,`referencia`),
  ADD KEY `ca_linea_transstock_articulos` (`referencia`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`codpais`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`codproveedor`);

--
-- Indices de la tabla `secuencias`
--
ALTER TABLE `secuencias`
  ADD PRIMARY KEY (`idsec`),
  ADD KEY `ca_secuencias_secuenciasejercicios` (`id`);

--
-- Indices de la tabla `secuenciasejercicios`
--
ALTER TABLE `secuenciasejercicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ca_secuenciasejercicios_ejercicios` (`codejercicio`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`codserie`);

--
-- Indices de la tabla `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`idstock`),
  ADD UNIQUE KEY `uniq_stocks_almacen_referencia` (`codalmacen`,`referencia`),
  ADD KEY `ca_stocks_articulos2` (`referencia`);

--
-- Indices de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD PRIMARY KEY (`codtarifa`);

--
-- Indices de la tabla `ticketprintjob`
--
ALTER TABLE `ticketprintjob`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transstock`
--
ALTER TABLE `transstock`
  ADD PRIMARY KEY (`idtrans`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albaranescli`
--
ALTER TABLE `albaranescli`
  MODIFY `idalbaran` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `albaranesprov`
--
ALTER TABLE `albaranesprov`
  MODIFY `idalbaran` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `articulosprov`
--
ALTER TABLE `articulosprov`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `articulo_trazas`
--
ALTER TABLE `articulo_trazas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cajas_terminales`
--
ALTER TABLE `cajas_terminales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `co_asientos`
--
ALTER TABLE `co_asientos`
  MODIFY `idasiento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_cuentas`
--
ALTER TABLE `co_cuentas`
  MODIFY `idcuenta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_cuentascbba`
--
ALTER TABLE `co_cuentascbba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_epigrafes`
--
ALTER TABLE `co_epigrafes`
  MODIFY `idepigrafe` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_gruposepigrafes`
--
ALTER TABLE `co_gruposepigrafes`
  MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_partidas`
--
ALTER TABLE `co_partidas`
  MODIFY `idpartida` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_regiva`
--
ALTER TABLE `co_regiva`
  MODIFY `idregiva` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_secuencias`
--
ALTER TABLE `co_secuencias`
  MODIFY `idsecuencia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_subcuentas`
--
ALTER TABLE `co_subcuentas`
  MODIFY `idsubcuenta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_subcuentascli`
--
ALTER TABLE `co_subcuentascli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_subcuentasprov`
--
ALTER TABLE `co_subcuentasprov`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dirclientes`
--
ALTER TABLE `dirclientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `dirproveedores`
--
ALTER TABLE `dirproveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `facturascli`
--
ALTER TABLE `facturascli`
  MODIFY `idfactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `facturasprov`
--
ALTER TABLE `facturasprov`
  MODIFY `idfactura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `fs_logs`
--
ALTER TABLE `fs_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT de la tabla `lineasalbaranescli`
--
ALTER TABLE `lineasalbaranescli`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `lineasalbaranesprov`
--
ALTER TABLE `lineasalbaranesprov`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `lineasfacturascli`
--
ALTER TABLE `lineasfacturascli`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `lineasfacturasprov`
--
ALTER TABLE `lineasfacturasprov`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `lineasivafactcli`
--
ALTER TABLE `lineasivafactcli`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `lineasregstocks`
--
ALTER TABLE `lineasregstocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `lineastransstock`
--
ALTER TABLE `lineastransstock`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `secuencias`
--
ALTER TABLE `secuencias`
  MODIFY `idsec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `secuenciasejercicios`
--
ALTER TABLE `secuenciasejercicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `stocks`
--
ALTER TABLE `stocks`
  MODIFY `idstock` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticketprintjob`
--
ALTER TABLE `ticketprintjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `transstock`
--
ALTER TABLE `transstock`
  MODIFY `idtrans` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `albaranescli`
--
ALTER TABLE `albaranescli`
  ADD CONSTRAINT `ca_albaranescli_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_albaranescli_facturas` FOREIGN KEY (`idfactura`) REFERENCES `facturascli` (`idfactura`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_albaranescli_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `albaranesprov`
--
ALTER TABLE `albaranesprov`
  ADD CONSTRAINT `ca_albaranesprov_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_albaranesprov_facturas` FOREIGN KEY (`idfactura`) REFERENCES `facturasprov` (`idfactura`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_albaranesprov_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `ca_articulos_fabricantes` FOREIGN KEY (`codfabricante`) REFERENCES `fabricantes` (`codfabricante`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulos_familias` FOREIGN KEY (`codfamilia`) REFERENCES `familias` (`codfamilia`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulos_impuestos` FOREIGN KEY (`codimpuesto`) REFERENCES `impuestos` (`codimpuesto`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `articulosprov`
--
ALTER TABLE `articulosprov`
  ADD CONSTRAINT `ca_articulosprov_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `articulo_propiedades`
--
ALTER TABLE `articulo_propiedades`
  ADD CONSTRAINT `ca_articulo_propiedades_articulos` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `articulo_trazas`
--
ALTER TABLE `articulo_trazas`
  ADD CONSTRAINT `ca_articulo_trazas_articulos` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulo_trazas_linalbcli` FOREIGN KEY (`idlalbventa`) REFERENCES `lineasalbaranescli` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulo_trazas_linalbprov` FOREIGN KEY (`idlalbcompra`) REFERENCES `lineasalbaranesprov` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulo_trazas_linfaccli` FOREIGN KEY (`idlfacventa`) REFERENCES `lineasfacturascli` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulo_trazas_linfacprov` FOREIGN KEY (`idlfaccompra`) REFERENCES `lineasfacturasprov` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `ca_clientes_grupos` FOREIGN KEY (`codgrupo`) REFERENCES `gruposclientes` (`codgrupo`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente_propiedades`
--
ALTER TABLE `cliente_propiedades`
  ADD CONSTRAINT `ca_cliente_propiedades_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_asientos`
--
ALTER TABLE `co_asientos`
  ADD CONSTRAINT `ca_co_asientos_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_cuentas`
--
ALTER TABLE `co_cuentas`
  ADD CONSTRAINT `ca_co_cuentas_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_cuentas_epigrafes2` FOREIGN KEY (`idepigrafe`) REFERENCES `co_epigrafes` (`idepigrafe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_epigrafes`
--
ALTER TABLE `co_epigrafes`
  ADD CONSTRAINT `ca_co_epigrafes_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_epigrafes_gruposepigrafes2` FOREIGN KEY (`idgrupo`) REFERENCES `co_gruposepigrafes` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_gruposepigrafes`
--
ALTER TABLE `co_gruposepigrafes`
  ADD CONSTRAINT `ca_co_gruposepigrafes_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_partidas`
--
ALTER TABLE `co_partidas`
  ADD CONSTRAINT `ca_co_partidas_co_asientos2` FOREIGN KEY (`idasiento`) REFERENCES `co_asientos` (`idasiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_partidas_subcuentas` FOREIGN KEY (`idsubcuenta`) REFERENCES `co_subcuentas` (`idsubcuenta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_secuencias`
--
ALTER TABLE `co_secuencias`
  ADD CONSTRAINT `ca_co_secuencias_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_subcuentas`
--
ALTER TABLE `co_subcuentas`
  ADD CONSTRAINT `ca_co_subcuentas_cuentas2` FOREIGN KEY (`idcuenta`) REFERENCES `co_cuentas` (`idcuenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_subcuentas_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_subcuentascli`
--
ALTER TABLE `co_subcuentascli`
  ADD CONSTRAINT `ca_co_subcuentascli_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_subcuentascli_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_subcuentascli_subcuentas` FOREIGN KEY (`idsubcuenta`) REFERENCES `co_subcuentas` (`idsubcuenta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_subcuentasprov`
--
ALTER TABLE `co_subcuentasprov`
  ADD CONSTRAINT `ca_co_subcuentasprov_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_subcuentasprov_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_subcuentasprov_subcuentas` FOREIGN KEY (`idsubcuenta`) REFERENCES `co_subcuentas` (`idsubcuenta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cuentasbcocli`
--
ALTER TABLE `cuentasbcocli`
  ADD CONSTRAINT `ca_cuentasbcocli_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cuentasbcopro`
--
ALTER TABLE `cuentasbcopro`
  ADD CONSTRAINT `ca_cuentasbcopro_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dirclientes`
--
ALTER TABLE `dirclientes`
  ADD CONSTRAINT `ca_dirclientes_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dirproveedores`
--
ALTER TABLE `dirproveedores`
  ADD CONSTRAINT `ca_dirproveedores_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturascli`
--
ALTER TABLE `facturascli`
  ADD CONSTRAINT `ca_facturascli_asiento2` FOREIGN KEY (`idasiento`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturascli_asientop` FOREIGN KEY (`idasientop`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturascli_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturascli_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturasprov`
--
ALTER TABLE `facturasprov`
  ADD CONSTRAINT `ca_facturasprov_asiento2` FOREIGN KEY (`idasiento`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturasprov_asientop` FOREIGN KEY (`idasientop`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturasprov_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturasprov_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `fs_access`
--
ALTER TABLE `fs_access`
  ADD CONSTRAINT `fs_access_page2` FOREIGN KEY (`fs_page`) REFERENCES `fs_pages` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fs_access_user2` FOREIGN KEY (`fs_user`) REFERENCES `fs_users` (`nick`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fs_extensions2`
--
ALTER TABLE `fs_extensions2`
  ADD CONSTRAINT `ca_fs_extensions2_fs_pages` FOREIGN KEY (`page_from`) REFERENCES `fs_pages` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fs_roles_access`
--
ALTER TABLE `fs_roles_access`
  ADD CONSTRAINT `fs_roles_access_page` FOREIGN KEY (`fs_page`) REFERENCES `fs_pages` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fs_roles_access_roles` FOREIGN KEY (`codrol`) REFERENCES `fs_roles` (`codrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fs_roles_users`
--
ALTER TABLE `fs_roles_users`
  ADD CONSTRAINT `fs_roles_users_roles` FOREIGN KEY (`codrol`) REFERENCES `fs_roles` (`codrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fs_roles_users_user` FOREIGN KEY (`fs_user`) REFERENCES `fs_users` (`nick`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fs_users`
--
ALTER TABLE `fs_users`
  ADD CONSTRAINT `ca_fs_users_pages` FOREIGN KEY (`fs_page`) REFERENCES `fs_pages` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasalbaranescli`
--
ALTER TABLE `lineasalbaranescli`
  ADD CONSTRAINT `ca_lineasalbaranescli_albaranescli2` FOREIGN KEY (`idalbaran`) REFERENCES `albaranescli` (`idalbaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasalbaranesprov`
--
ALTER TABLE `lineasalbaranesprov`
  ADD CONSTRAINT `ca_lineasalbaranesprov_albaranesprov2` FOREIGN KEY (`idalbaran`) REFERENCES `albaranesprov` (`idalbaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasfacturascli`
--
ALTER TABLE `lineasfacturascli`
  ADD CONSTRAINT `ca_linea_facturascli2` FOREIGN KEY (`idfactura`) REFERENCES `facturascli` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasfacturasprov`
--
ALTER TABLE `lineasfacturasprov`
  ADD CONSTRAINT `ca_linea_facturasprov2` FOREIGN KEY (`idfactura`) REFERENCES `facturasprov` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasivafactcli`
--
ALTER TABLE `lineasivafactcli`
  ADD CONSTRAINT `ca_lineaiva_facturascli2` FOREIGN KEY (`idfactura`) REFERENCES `facturascli` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasregstocks`
--
ALTER TABLE `lineasregstocks`
  ADD CONSTRAINT `ca_lineasregstocks_stocks` FOREIGN KEY (`idstock`) REFERENCES `stocks` (`idstock`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineastransstock`
--
ALTER TABLE `lineastransstock`
  ADD CONSTRAINT `ca_linea_transstock` FOREIGN KEY (`idtrans`) REFERENCES `transstock` (`idtrans`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_linea_transstock_articulos` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `secuencias`
--
ALTER TABLE `secuencias`
  ADD CONSTRAINT `ca_secuencias_secuenciasejercicios` FOREIGN KEY (`id`) REFERENCES `secuenciasejercicios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `secuenciasejercicios`
--
ALTER TABLE `secuenciasejercicios`
  ADD CONSTRAINT `ca_secuenciasejercicios_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `ca_stocks_almacenes3` FOREIGN KEY (`codalmacen`) REFERENCES `almacenes` (`codalmacen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_stocks_articulos2` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
