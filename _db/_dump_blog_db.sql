-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Ago-2024 às 03:08
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `blog_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `username`, `password`) VALUES
(1, 'Gabriel', 'Moretto', 'admin', '$2y$10$kggeKkIs6rEWf.p/6muJCOepa8zY4DcDU3CBZua8iNc9SBM3MMGym');

-- --------------------------------------------------------

--
-- Estrutura da tabela `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Ciência'),
(2, 'Tecnologia'),
(4, 'Biologia'),
(5, 'Poemas'),
(6, 'Ficção'),
(7, 'Fantasia'),
(8, 'Programação'),
(9, 'Inteligência Artificial'),
(10, 'Jogos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `crated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `comment`
--

INSERT INTO `comment` (`comment_id`, `comment`, `user_id`, `post_id`, `crated_at`) VALUES
(26, 'obrigado', 2, 15, '2024-07-28 19:11:38'),
(27, 'Eu quero', 6, 21, '2024-08-05 21:57:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(127) NOT NULL,
  `post_text` text NOT NULL,
  `category` int(11) NOT NULL,
  `publish` int(2) NOT NULL DEFAULT 1,
  `cover_url` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `crated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_text`, `category`, `publish`, `cover_url`, `crated_at`) VALUES
(10, 'Futuro da Tecnologia', '<div>A revolução digital já mudou a forma como as pessoas vivem, trabalham e se comunicam. E isso está apenas começando. No entanto, as mesmas tecnologias que têm o potencial de ajudar bilhões de pessoas a viver de forma mais feliz, saudável e produtiva também estão criando novos desafios para cidadãos e governos em todo o mundo. De interferências nas eleições a vazamentos de dados e ciberataques, eventos recentes mostraram que a tecnologia está mudando nossa forma de pensar sobre privacidade, segurança nacional e talvez até mesmo a própria democracia. Neste projeto, examinamos desafios em cinco áreas-chave que moldarão o futuro da era digital: o sistema de justiça, o impacto na democracia, segurança global e conflitos internacionais, o impacto da automação e da IA no mercado de trabalho, identidade e privacidade. <b>Explore tópicos provocativos e instigantes sobre como a tecnologia impacta nossas vidas.</b><br></div>', 6, 0, 'COVER-64ba9e879b0c83.79174008.jpg', '2024-07-31 18:10:39'),
(11, 'O que é IA', '<div id=\"8a15280b-8a40-4fea-ab8a-9bae5f36da40\" class=\"c-shortcodeListicle g-outer-spacing-bottom-medium\" style=\"outline: 0px; margin-bottom: 1.5rem; --grid-cols: 6; clear: both;\"><div class=\"c-shortcodeListicle_header g-outer-spacing-bottom-small sm:u-col-2 md:u-col-6 lg:u-col-6\" style=\"outline: 0px; margin-bottom: 1rem; grid-column-end: span 6; display: flex; justify-content: space-between; flex-direction: column; align-items: baseline;\"><div class=\"c-shortcodeListicle_headerText\" style=\"outline: 0px; flex: 1 1 0%;\"><div style=\"outline: 0px;\"><h2 id=\"toc-link-0-bd57f177-858a-4a4d-936f-816161e778b0\" style=\"outline: 0px; line-height: 2.75rem; scroll-margin-top: 100px;\"><span style=\"font-size: 36px; color: rgb(8, 10, 18); text-align: var(--bs-body-text-align);\">O que é inteligência artificial?</span><br></h2><div><span style=\"color: rgb(8, 10, 18); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></div><div><span style=\"color: rgb(8, 10, 18); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ouça o termo inteligência artificial (IA) e você pode pensar em carros autônomos, robôs, ChatGPT ou outros chatbots de IA, e imagens artificialmente criadas. Mas também é importante olhar além dos resultados da IA e entender como a tecnologia funciona e seus impactos para esta e futuras gerações.\r\nIA é um conceito que existe formalmente desde a década de 1950, quando foi definido como a capacidade de uma máquina de realizar uma tarefa que anteriormente exigiria inteligência humana. Esta é uma definição bastante ampla e que foi modificada ao longo de décadas de pesquisa e avanços tecnológicos.\r\nQuando você considera atribuir inteligência a uma máquina, como um computador, faz sentido começar definindo o termo ‘inteligência’ – especialmente quando você quer determinar se um sistema artificial é realmente digno disso.</span><br></div></div></div></div><div class=\"c-shortcodeListicle_conten\" style=\"outline: 0px; font-family: suisseintl, helvetica, sans-serif; color: rgb(8, 10, 18);\"><div style=\"outline: 0px;\"><div class=\"c-ShortcodeContent\" style=\"outline: 0px;\"><div><b>Esses especialistas estão correndo para proteger a IA de hackers.<br></b><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br>Nosso nível de inteligência nos distingue de outros seres vivos e é essencial para a experiência humana. Alguns especialistas definem inteligência como a capacidade de se adaptar, resolver problemas, planejar, improvisar em novas situações e aprender coisas novas.\r\nCom a inteligência muitas vezes vista como a base da experiência humana, talvez não seja surpresa que tentemos recriá-la artificialmente em empreendimentos científicos.\r\nE os sistemas de IA atuais podem demonstrar algumas características da inteligência humana, incluindo aprendizado, resolução de problemas, percepção e até mesmo um espectro limitado de criatividade e inteligência social.<br></span><span style=\"color: var(--bs-heading-color); text-align: var(--bs-body-text-align);\"><br><span style=\"font-size: 2.25rem;\">Como posso usar IA?</span></span></div></div></div></div></div><div id=\"39f85b3c-4daa-42ed-9743-d2575ff3f8a5\" class=\"c-shortcodeListicle g-outer-spacing-bottom-medium\" style=\"outline: 0px; margin-bottom: 1.5rem; --grid-cols: 6; clear: both; color: rgb(8, 10, 18); font-family: suisseintl, helvetica, sans-serif;\"><div class=\"c-shortcodeListicle_conten\" style=\"outline: 0px;\"><div style=\"outline: 0px;\"><div class=\"c-ShortcodeContent\" style=\"outline: 0px;\"><div>A IA vem em diferentes formas que se tornaram amplamente disponíveis no dia a dia. Os alto-falantes inteligentes em seu suporte com Alexa ou o assistente de voz do Google embutido são dois ótimos exemplos de IA. Outros bons exemplos são chatbots de IA populares, como ChatGPT, o novo Bing Chat e o Google Bard.\r\nQuando você pergunta ao ChatGPT a capital de um país ou pede à Alexa uma atualização sobre o clima, você recebe respostas que são o resultado de algoritmos de aprendizado de máquina.\r\nAlém disso: Como o ChatGPT funciona?\r\nEmbora esses sistemas não substituam a inteligência humana ou a interação social, eles têm a capacidade de usar seu treinamento para se adaptar e aprender novas habilidades para tarefas para as quais não foram explicitamente programados.<br></div><div><br></div><div><div id=\"e42bfd2d-7e0e-4907-a614-acd6ba42eaa1\" class=\"c-shortcodeListicle g-outer-spacing-bottom-medium\" style=\"outline: 0px; margin-bottom: 1.5rem; --grid-cols: 6; clear: both; font-family: suisseintl, helvetica, sans-serif;\"><div class=\"c-shortcodeListicle_header g-outer-spacing-bottom-small sm:u-col-2 md:u-col-6 lg:u-col-6\" style=\"outline: 0px; margin-bottom: 1rem; grid-column-end: span 6; display: flex; justify-content: space-between; flex-direction: column; align-items: baseline;\"><div class=\"c-shortcodeListicle_headerText\" style=\"outline: 0px; flex: 1 1 0%;\"><div style=\"outline: 0px;\"><h2 id=\"toc-link-2-bd57f177-858a-4a4d-936f-816161e778b0\" style=\"outline: 0px; font-size: 2.25rem; line-height: 2.75rem; scroll-margin-top: 100px;\">Quais são os diferentes tipos de IA?</h2></div></div></div><div class=\"c-shortcodeListicle_conten\" style=\"outline: 0px;\"><div style=\"outline: 0px;\"><div class=\"c-ShortcodeContent\" style=\"outline: 0px;\"><div>A inteligência artificial pode ser dividida em três subcategorias amplamente aceitas: IA estreita, IA geral e IA superinteligente.<br></div></div></div></div></div><div id=\"4ab67da3-3d6b-4de8-864d-eb8a0b47c3b9\" class=\"c-shortcodeListicle g-outer-spacing-bottom-medium\" style=\"outline: 0px; margin-bottom: 1.5rem; --grid-cols: 6; clear: both; font-family: suisseintl, helvetica, sans-serif;\"><div class=\"c-shortcodeListicle_header g-outer-spacing-bottom-small sm:u-col-2 md:u-col-6 lg:u-col-6\" style=\"outline: 0px; margin-bottom: 1rem; grid-column-end: span 6; display: flex; justify-content: space-between; flex-direction: column; align-items: baseline;\"><div class=\"c-shortcodeListicle_headerText\" style=\"outline: 0px; flex: 1 1 0%;\"><div style=\"outline: 0px;\"><div><br></div></div></div></div></div></div></div></div></div></div>', 6, 0, 'COVER-64baa69b661be3.43596849.jpg', '2024-07-31 18:11:07'),
(15, 'Principais Tipos de Programação', '<article style=\"\"><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\"><br></span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Principais Tipos de Linguagens de Programação</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Linguagens de Programação Procedural</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Uma linguagem de programação que usa procedimentos ou funções para organizar e categorizar o código em blocos reutilizáveis é uma linguagem procedural. C, Pascal e FORTRAN são as linguagens mais requisitadas que suportam esse paradigma.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Nesse tipo de programação, o programa é dividido em funções ou procedimentos que executam tarefas específicas e podem ser chamados de outras partes do programa, permitindo programação flexível e reutilização de código. O foco está na execução sistemática de um programa, enfatizando a sequência de instruções e a manipulação de dados armazenados em variáveis. Essas linguagens são amplamente usadas em engenharia, jogos e finanças. Apesar de ser menos flexível, a programação procedural continua sendo um dos paradigmas mais significativos ensinados em cursos de ciência da computação.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\"><br></span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Linguagens de Programação Funcional</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Ao contrário das linguagens procedurais, as linguagens funcionais são mais flexíveis e são compostas por uma série de funções. Esse paradigma de programação enfatiza o uso de cálculos e transformação de dados. Haskell, Clojure, Lisp e Scala são exemplos de linguagens que suportam esse paradigma.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">A programação funcional facilita o raciocínio sobre os programas e aumenta sua confiabilidade. As funções operam exclusivamente em seus argumentos de entrada e são menos populares, mas ganharam grande destaque no ponto de vista educacional. São atribuídas a variáveis, passadas como argumentos para outras funções e retornam resultados de outras funções. A programação funcional é eficiente para programação paralela e não possui estado mutável. Suporta funções aninhadas e consiste em unidades independentes que funcionam de forma coesa.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\"><br></span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Linguagens de Programação Orientadas a Objetos</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Em uma linguagem de programação orientada a objetos, objetos definem os dados e o comportamento dos objetos. Esses objetos geralmente incluem atributos de dados que representam o estado do objeto e métodos. Esse tipo de linguagem permite criar um sistema complexo com objetos interconectados.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Esse paradigma oculta os componentes de implementação do mundo externo por meio de encapsulamento, o que possibilita construir sistemas grandes e complexos sem se preocupar com os detalhes internos dos objetos. Outro benefício importante é a herança, que cria uma hierarquia de classes que compartilham características comuns, mas ainda permitem personalização. Exemplos de linguagens orientadas a objetos incluem Java, Python, C++ e Ruby.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\"><br></span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Linguagens de Script</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Fáceis de aprender, com sintaxe simples e tipagem dinâmica, as linguagens de script são interpretadas em vez de compiladas. Existem dois tipos: linguagens de script do lado do servidor e linguagens de script do lado do cliente. Essas linguagens permitem a comunicação com outras linguagens de programação.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\"><br></span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Python: A linguagem mais fácil usada entre desenvolvedores, é orientada a objetos, possui estruturas de dados de alto nível e bibliotecas integradas, facilitando o desenvolvimento rápido de aplicações.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Perl: Uma linguagem dinâmica com recursos inovadores, popular em servidores Linux e Windows, frequentemente usada em sites com alto tráfego, como o IMDB.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Bash: Bourne Again SHell, a linguagem de script padrão na maioria dos sistemas operacionais Linux/GNU, facilita a criação de scripts, documentação e scripts reutilizáveis.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Linguagens de Programação Lógica</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Como o nome sugere, a programação lógica é baseada na lógica formal. Consiste em um conjunto de declarações ou regras lógicas que determinam relações entre objetos, permitindo ao sistema extrapolar novas informações.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">É comumente usada em inteligência artificial e sistemas especialistas onde raciocínio e conjectura são necessários. Permite um programa conciso e expressivo, mais fácil de razonar e manter do que programas em outros paradigmas. Prolog é uma das linguagens lógicas mais populares.<br></span></font><span style=\"text-align: var(--bs-body-text-align); font-size: 24px; color: rgb(39, 44, 55);\"><br><b><br></b></span></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><span style=\"text-align: var(--bs-body-text-align); font-size: 24px; color: rgb(39, 44, 55);\"><b>Programação Imperativa</b></span></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Na programação imperativa, o programador fornece um conjunto de instruções que o computador segue para manipular o estado do programa e a estrutura de informações dentro dele. Esse paradigma descreve os passos que o computador deve seguir para resolver um programa, em vez de definir a função matemática. Exemplos de linguagens imperativas incluem C, C++, Java e Python. A programação imperativa é popular no desenvolvimento de software para tarefas de programação de sistemas e de baixo nível, com controle direto sobre os recursos de hardware.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><span style=\"font-size: 24px; color: rgb(39, 44, 55); text-align: var(--bs-body-text-align);\"><b>Outras Formas de Classificar Linguagens de Programação</b></span><br></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\"><b>Linguagens de Front-end vs. Back-end</b></span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\"><br></span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Front-end: Linguagens do lado do cliente usadas para criar elementos de sites que os usuários veem, como HTML, CSS e JavaScript.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Back-end: Linguagens do lado do servidor que criam a lógica e funcionalidade por trás do site, como Python, Ruby e Java.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Linguagens de Alto Nível vs. Baixo Nível</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\"><br></span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Alto Nível: Fáceis de ler e escrever, próximas das linguagens naturais, com bibliotecas e frameworks integrados. Exemplos: Python, Java e Ruby.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Baixo Nível: Mais complexas de entender e escrever, manipulam diretamente o hardware e a memória do computador. Exemplos: Assembly e C.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Linguagens Interpretadas vs. Compiladas</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\"><br></span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Interpretadas: Executam o código linha por linha sem compilação separada, como Python, Ruby e JavaScript.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Compiladas: Traduzem o código para código de máquina antes da execução, como C, C++ e Java.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Qual Linguagem de Programação Aprender?</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Com as atualizações rigorosas no mercado de tecnologia, é importante estar atualizado com novas linguagens. Considere seus objetivos e a carreira desejada, faça uma pesquisa de mercado e entenda a demanda da indústria. Comece com linguagens mais fáceis como Python e Ruby e busque materiais de aprendizado acessíveis. Participe de comunidades e redes de contato no campo.</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\"><br></span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Melhores Linguagens de Programação para Aprender em 2023</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">JavaScript</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Python</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Go</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Java</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Kotlin</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">PHP</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">C#</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Swift</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">R</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Ruby</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">C e C++</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Matlab</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">TypeScript</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Scala</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">SQL</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">HTML</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">CSS</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">NoSQL</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Rust</span></font></h2><h2 style=\"margin-top: 64px; margin-bottom: 32px; max-width: 100%; line-height: 34px !important;\"><font color=\"#272c37\" face=\"Roboto, sans-serif\"><span style=\"font-size: 24px;\">Perl</span></font></h2></article>', 6, 0, 'COVER-64baa64818c1c1.96344816.jpg', '2024-07-30 18:37:44'),
(21, 'teste', '<div>Gow é tri</div>', 6, 1, 'COVER-66b16bfd0cc021.27330326.jpeg', '2024-08-05 21:19:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `post_like`
--

CREATE TABLE `post_like` (
  `like_id` int(11) NOT NULL,
  `liked_by` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `liked_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `post_like`
--

INSERT INTO `post_like` (`like_id`, `liked_by`, `post_id`, `liked_at`) VALUES
(68, 2, 15, '2024-07-21 19:12:55'),
(69, 6, 15, '2024-07-21 19:14:17'),
(71, 6, 21, '2024-08-05 21:57:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `fname`, `username`, `password`) VALUES
(2, 'João Carlos', 'joao', '$2y$10$5KdCaBOhNE6HZOmn39jO4OOyKUI1xC1St51KH8DhtXGX8drct98/q'),
(3, 'Maria Silva', 'maria', '$2y$10$LoZNyJVQpBu/M7BEQdUmlOVVXaV65TxZwLAFejNBdD5a/JxjJAEwG'),
(4, 'Oliver Java', 'oliver', '$2y$10$BUU6wlANM91k7CiQUV2GveWMx1nKj0HnoNUv5bRp1.vslrI/.tumu'),
(5, 'James Jr ', 'james', '$2y$10$MmbFLq6Qqeb4PnPHF9JK4OSqzBt8.GG3SicdpIYiKo/Xo.6OVu9QO'),
(6, 'Ana', 'ana', '$2y$10$KpVvp9ixSCn/9FMR3k0tn.0Oul5lf2jGaCGPOgKyyxQTdyMk8xtlG');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Índices para tabela `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Índices para tabela `post_like`
--
ALTER TABLE `post_like`
  ADD PRIMARY KEY (`like_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `post_like`
--
ALTER TABLE `post_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
