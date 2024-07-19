-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 22 2023 г., 02:03
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `buketDB`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth`
--

CREATE TABLE `auth` (
  `id` int NOT NULL,
  `menu` text NOT NULL,
  `content` text NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `auth`
--

INSERT INTO `auth` (`id`, `menu`, `content`, `footer`) VALUES
(1, '<div class=\"header-menu\">\r\n    <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n    </li>\r\n    <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n            букеты</a></li>\r\n    <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n            корзины</a></li>\r\n    <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n    <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n</div>\r\n    <div class=\"navbar\">\r\n        <div class=\"containere nav-container\">\r\n            <input class=\"checkbox\" type=\"checkbox\" name=\"\" id=\"\" />\r\n            <div class=\"hamburger-lines\">\r\n                <span class=\"line line1\"></span>\r\n                <span class=\"line line2\"></span>\r\n                <span class=\"line line3\"></span>\r\n            </div>\r\n\r\n            <div class=\"menu-items\">\r\n                <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n                </li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                        букеты</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                        корзины</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n            </div>\r\n\r\n        </div>\r\n\r\n    </div>', '<span class=\"pop_up_auth_entry_cab\">Вход в личный кабинет</span>\r\n                    <div class=\"pop_up_auth_entry_data\">\r\n                        <p>Логин<span>&lowast;</span></p>\r\n                        <input type=\"text\" name=\"login_auth\" class=\"input_data\">\r\n                    </div>\r\n                    <div class=\"pop_up_auth_entry_data\">\r\n                        <p>Пароль<span>&lowast;</span></p>\r\n                        <input type=\"password\" name=\"pass_auth\" class=\"input_data\">\r\n                    </div>\r\n                    <div class=\"pop_up_auth_entry_login\">\r\n                        <input class=\"pop_up_auth_entry_button\" type=\"submit\" value=\"ВОЙТИ\" name=\"login\">\r\n                    </div>\r\n                    <div class=\"pop_up_auth_entry_reg\">\r\n                        <p>Нет аккаунта? <a href=\"register.php\">Зарегистрируйтесь</a></p>\r\n                    </div>', '<div class=\"footer\">\n        <div class=\"footer-wrap\">\n            <div class=\"footer-logo\">\n                <img src=\"../img/logof.png\">\n                <span>интернет-магазин<br> подарочных букетов\n                </span>\n            </div>\n            <div class=\"footer-content\">\n                <div class=\"footer-shop\">\n                    <span>Интернет-магазин</span>\n                    <p>+7(495) 544-57-71</p>\n                    <p>+7(800) 532-15-88</p>\n                    <span>Адреса магазинов</span>\n                    <p>Пенза, ул. Московская 32</p>\n                </div>\n                <div class=\"footer-support\">\n                    <span>Навигация</span>\n                    <div class=\"footer-support-link\">\n                        <a href=\"bouq-flow.php\">Букеты цветов</a>\n                        <a href=\"bouq-edible.php\">Съедобные букеты</a>\n                        <a href=\"gift-basket.php\">Подарочные корзины</a>\n                        <a href=\"topper.php\">Топперы</a>\n                        \n                    </div>\n                </div>\n                <div class=\"footer-information\">\n                    <span>Информация</span>\n                    <div class=\"footer-information-link\">\n                        <a href=\"../index.php\">Главная</a>\n                        <a href=\"delivery.php\">Доставка</a>\n                    </div>\n                </div>\n                <div class=\"footer-social\">\n                    <span>Социальные сети</span>\n                    <div class=\"footer-social-link\">\n                        <a href=\"https://www.youtube.com/channel/UC9t9FNAqh9cjvYqajZcUD_Q\"><img src=\"../img/yt.png\" height=\"20\"></a>\n                        <a href=\"https://t.me/+4FBj0JBZSbthZjQ6\"><img src=\"../img/tg.png\" height=\"20\"></a>\n                        <a href=\"https://vk.com/buketflowers1337\"><img src=\"../img/vk.png\" height=\"20\"></a>\n                        <a href=\"https://invite.viber.com/?g=dIj2_l2BCVEr1xulwubAfLhimST-SO_C\"><img src=\"../img/wu.png\" height=\"30\" width=\"30\"></a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>');

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int NOT NULL,
  `menu` text NOT NULL,
  `content` text NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `menu`, `content`, `footer`) VALUES
(1, '<div class=\"header-menu\">\r\n        <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n        </li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                букеты</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                корзины</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n    </div>\r\n    <div class=\"navbar\">\r\n        <div class=\"containere nav-container\">\r\n            <input class=\"checkbox\" type=\"checkbox\" name=\"\" id=\"\" />\r\n            <div class=\"hamburger-lines\">\r\n                <span class=\"line line1\"></span>\r\n                <span class=\"line line2\"></span>\r\n                <span class=\"line line3\"></span>\r\n            </div>\r\n\r\n            <div class=\"menu-items\">\r\n                <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n                </li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                        букеты</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                        корзины</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n            </div>\r\n\r\n        </div>\r\n\r\n    </div>', '<div>\r\n        <div>\r\n            <div class=\"content\">\r\n                <div class=\"content-title\">\r\n                    <a href=\"/\"><img src=\"../img/back.png\" height=\"40\"></a>\r\n                    <span>Подарочные корзины</span>\r\n                </div>\r\n                <div class=\"content-block\">\r\n                    <div class=\"content-block-filter\">\r\n                        <div class=\"content-block-filter-title\">\r\n                            <div class=\"content-block-filter-title-name\">\r\n                                <p>Цветы</p>\r\n                                <img src=\"../img/expand-arrow.png\" height=\"20\" id=\"arrow-flowers\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list\" id=\"arrow-flowers-style\">\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Гвоздика</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Орхидея</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Пион</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Подсолнух</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Роза</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Статица</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Хризантема</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Эустома</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"content-block-filter-title\">\r\n                            <div class=\"content-block-filter-title-name\">\r\n                                <p id=\"zalupa\">Состав</p>\r\n                                <img src=\"../img/expand-arrow.png\" height=\"20\" id=\"arrow-compose\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list\" id=\"arrow-compose-style\">\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Ягоды</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Фрукты</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Орехи</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Шоколадные батончики</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Чай & Кофе</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"products\" style=\"width:100%\">\r\n                        <div class=\"products-wrap\" style=\"width:100%; height:100%;\">\r\n\r\n\r\n                            <div class=\"row filter_data\" style=\"width:100%; height:100%;\">\r\n\r\n                            </div>\r\n\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>', '<div class=\"footer\">\n        <div class=\"footer-wrap\">\n            <div class=\"footer-logo\">\n                <img src=\"../img/logof.png\">\n                <span>интернет-магазин<br> подарочных букетов\n                </span>\n            </div>\n            <div class=\"footer-content\">\n                <div class=\"footer-shop\">\n                    <span>Интернет-магазин</span>\n                    <p>+7(495) 544-57-71</p>\n                    <p>+7(800) 532-15-88</p>\n                    <span>Адреса магазинов</span>\n                    <p>Пенза, ул. Московская 32</p>\n                </div>\n                <div class=\"footer-support\">\n                    <span>Навигация</span>\n                    <div class=\"footer-support-link\">\n                        <a href=\"bouq-flow.php\">Букеты цветов</a>\n                        <a href=\"bouq-edible.php\">Съедобные букеты</a>\n                        <a href=\"gift-basket.php\">Подарочные корзины</a>\n                        <a href=\"topper.php\">Топперы</a>\n                        \n                    </div>\n                </div>\n                <div class=\"footer-information\">\n                    <span>Информация</span>\n                    <div class=\"footer-information-link\">\n                        <a href=\"../index.php\">Главная</a>\n                        <a href=\"delivery.php\">Доставка</a>\n                    </div>\n                </div>\n                <div class=\"footer-social\">\n                    <span>Социальные сети</span>\n                    <div class=\"footer-social-link\">\n                        <a href=\"https://www.youtube.com/channel/UC9t9FNAqh9cjvYqajZcUD_Q\"><img src=\"../img/yt.png\" height=\"20\"></a>\n                        <a href=\"https://t.me/+4FBj0JBZSbthZjQ6\"><img src=\"../img/tg.png\" height=\"20\"></a>\n                        <a href=\"https://vk.com/buketflowers1337\"><img src=\"../img/vk.png\" height=\"20\"></a>\n                        <a href=\"https://invite.viber.com/?g=dIj2_l2BCVEr1xulwubAfLhimST-SO_C\"><img src=\"../img/wu.png\" height=\"30\" width=\"30\"></a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>');

-- --------------------------------------------------------

--
-- Структура таблицы `bouqFlow`
--

CREATE TABLE `bouqFlow` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `article` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `decor` varchar(100) NOT NULL,
  `flowers` varchar(100) NOT NULL,
  `compose` varchar(100) NOT NULL,
  `material` varchar(100) NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `bouqFlow`
--

INSERT INTO `bouqFlow` (`id`, `title`, `article`, `price`, `image`, `category`, `decor`, `flowers`, `compose`, `material`, `status`) VALUES
(1, 'Букет цветов \"Нежное облако\"', 'Арт: А67123', '4999', '../products/bouqFlow/1.jpg', 'Букеты цветов', 'Коробка', 'Роза', '', '', '0'),
(2, 'Розы красные', 'Арт: B97247', '1399', '../products/bouqFlow/2.jpg', 'Букеты цветов', 'Коробка', 'Роза', '', '', '0'),
(3, 'Букет из 15 гиацинтов', 'Арт: C41351', '1299', '../products/bouqFlow/3.jpg', 'Букеты цветов', 'Букет', 'Гиацинт', '', '', '0'),
(4, 'Корзина с подсолнухами', 'Арт: D62830', '7199', '../products/bouqFlow/4.jpg', 'Букеты цветов', 'Корзина', 'Подсолнух', '', '', '0'),
(5, 'Розовые пионы в коробке', 'Арт: D72367', '6500', '../products/bouqFlow/5.jpg', 'Букеты цветов', 'Коробка', 'Пион', '', '', '0'),
(6, '101 кустовая роза', 'Арт: B64363', '21400', '../products/bouqFlow/6.jpg', 'Букеты цветов', 'Букет', 'Роза', '', '', '0'),
(7, 'Букет с перцем чили', 'Арт: А64321', '3800', '../products/bouqFlow/7.jpg', 'Съедобные букеты', 'Букет', '', 'Острый', '', '0'),
(8, 'Мужской букет с воблой', 'Арт: C63633', '3500', '../products/bouqFlow/8.jpg', 'Съедобные букеты', 'Букет', '', 'Морепродукт', '', '0'),
(9, 'Шоколадный букет с орехами', 'Арт: B64363', '5500', '../products/bouqFlow/9.jpg', 'Съедобные букеты', 'Букет', '', 'Орех', '', '0'),
(10, 'Сладкий букет с Kinder', 'Арт: А67877', '3900', '../products/bouqFlow/10.jpg', 'Съедобные букеты', 'Букет', '', 'Сладкий', '', '0'),
(11, 'Букет с крабом и раками', 'Арт: D66534', '9200', '../products/bouqFlow/11.jpg', 'Съедобные букеты', 'Букет', '', 'Морепродукт', '', '0'),
(12, 'Букет из очищенных орехов', 'Арт: B97247', '6200', '../products/bouqFlow/12.jpg', 'Съедобные букеты', 'Букет', '', 'Орех', '', '0'),
(13, 'Ягодная корзина с орхидеями', 'Арт: А66123\r\n', '7500', '../products/bouqFlow/13.jpg', 'Подарочные корзины', '', 'Орхидея', 'Ягодный', '', '0'),
(19, 'Корзина \"Морозное утро\"', 'Арт: D55325\r\n', '4200', '../products/bouqFlow/14.jpg', 'Подарочные корзины', '', 'Ель', 'Сладкий', '', '0'),
(20, 'Новогодняя корзинка', 'Арт: C44125', '2100', '../products/bouqFlow/15.jpg', 'Подарочные корзины', '', 'Ель', 'Сладкий', '', '0'),
(21, '39 красных роз в корзине', 'Арт: D66534', '9000', '../products/bouqFlow/16.jpg', 'Подарочные корзины', '', 'Роза', '', '', '0'),
(22, 'Корзина с малиной', 'Арт: А66123', '12200', '../products/bouqFlow/17.jpg\r\n', 'Подарочные корзины', '', '', 'Ягодный', '', '0'),
(23, 'Весенняя корзина с цветами', 'Арт: C33125', '6800', '../products/bouqFlow/18.jpg', 'Подарочные корзины', '', 'Хризантема', 'Фрукты', '', '0'),
(24, 'Топпер \"Спасибо\"', 'Арт: D88752', '200', '../products/bouqFlow/19.jpg', 'Топперы', '', '', '', 'Пластмасс', '0'),
(25, 'Топпер \"С любовью\"', 'Арт: D23144', '200', '../products/bouqFlow/20.jpg', 'Топперы', '', '', '', 'Железо', '0'),
(26, 'Топпер \"Дорогому учителю\"', 'Арт: D66534', '200', '../products/bouqFlow/21.jpg', 'Топперы', '', '', '', 'Дерево', '0'),
(27, 'Топпер \"Любимой жене\"', 'Арт: D11564', '200', '../products/bouqFlow/22.jpg', 'Топперы', '', '', '', 'Пластмасс', '0'),
(28, 'Топпер \"С днем рождения\"', 'Арт: D11564', '200', '../products/bouqFlow/23.jpg', 'Топперы', '', '', '', 'Железо', '0'),
(29, 'Топпер \"Желаем счастья\"', 'Арт: D23144', '200', '../products/bouqFlow/24.jpg\r\n', 'Топперы', '', '', '', 'Дерево', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `buy`
--

CREATE TABLE `buy` (
  `id` int NOT NULL,
  `login` varchar(100) NOT NULL,
  `title` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `numCard` varchar(100) NOT NULL,
  `ownerCard` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `cvv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `buy`
--

INSERT INTO `buy` (`id`, `login`, `title`, `numCard`, `ownerCard`, `month`, `year`, `cvv`) VALUES
(1, ':login', ':title', ':numCard', ':ownerCard', ':month', ':year', ':cvv'),
(2, ':login', ':title', ':numCard', ':ownerCard', ':month', ':year', ':cvv'),
(3, '$_SESSION', '$title', '$numCard', '$ownerCard', '$month', '$year', '$cvv'),
(4, '$_SESSION', '$title', '$numCard', '$ownerCard', '$month', '$year', '$cvv'),
(5, '$_SESSION', '$title', 'rew', 'rew', '05', '2028', 'wtet'),
(6, '$_SESSION', '$title', 'rq', 'twe', '09', '2026', 'twe'),
(7, '$_SESSION', '$title', 'wef', 'gwe', '08', '2030', 'gew'),
(8, '7', '7', 'gew', 'gew', '07', '2029', 'gwe'),
(9, 'Array', 'Array', 'gew', 'gew', '07', '2029', 'gwe'),
(10, 'Array', 'Array', 'twe', 'twe', '03', '2025', 'twet'),
(11, 'Array', 'Array', 'twe', 'twe', '03', '2025', 'twet'),
(12, 'Array', 'Array', 'twe', 'twe', '03', '2025', 'twet'),
(13, 'Array', 'Array', 'fwe', 'gwe', '08', '2031', 'gew'),
(14, 'olol', 'olol', 'fwe', 'gwe', '08', '2031', 'gew'),
(15, 'olol', 'Array', 'fwe', 'gwe', '08', '2031', 'gew'),
(16, 'olol', 'Array', 'fwe', 'gwe', '08', '2031', 'gew'),
(17, 'olol', 'Array', 'fwe', 'gwe', '08', '2031', 'gew'),
(18, 'olol', '', 'fwe', 'gwe', '08', '2031', 'gew'),
(19, 'olol', ' $itogo', 'fwe', 'gwe', '08', '2031', 'gew'),
(20, 'olol', 'Название: Букет цветов \"Нежное облако\" Количество: 2 Цена: 4999\n            Название: Розы красные Количество: 2 Цена: 1399\n            Название: Ягодная корзина с орхидеями Количество: 2 Цена: 7500\n            Название: 39 красных роз в корзине Количество: 1 Цена: 9000\n            ', 'fwe', 'gwe', '08', '2031', 'gew'),
(21, 'olol', 'Название: Букет цветов \"Нежное облако\" Количество: 2 Цена: 4999\r\n            Название: Розы красные Количество: 2 Цена: 1399\r\n            Название: Ягодная корзина с орхидеями Количество: 2 Цена: 7500\r\n            Название: 39 красных роз в корзине Количество: 1 Цена: 9000\r\n            ', 'fwe', 'gwe', '08', '2031', 'gew'),
(22, 'olol', 'Название: Букет цветов \"Нежное облако\" Количество: 2 Цена: 4999\n            Название: Розы красные Количество: 2 Цена: 1399\n            Название: Ягодная корзина с орхидеями Количество: 2 Цена: 7500\n            Название: 39 красных роз в корзине Количество: 1 Цена: 9000\n            Название: Топпер \"С любовью\" Количество: 2 Цена: 200\n            ', 'gwe', 'twe', '02', '2027', 'we25'),
(23, 'olol', 'Название: Букет цветов \"Нежное облако\" Количество: 2 Цена: 4999\r\n            Название: Букет из 15 гиацинтов Количество: 1 Цена: 1299\r\n            Название: 101 кустовая роза Количество: 1 Цена: 21400\r\n            ', '1532643y53264', '34135246365', '10', '2030', '');

-- --------------------------------------------------------

--
-- Структура таблицы `delivery`
--

CREATE TABLE `delivery` (
  `id` int NOT NULL,
  `menu` text NOT NULL,
  `content` text NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `delivery`
--

INSERT INTO `delivery` (`id`, `menu`, `content`, `footer`) VALUES
(3, '<div class=\"header-menu\">\r\n        <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n        </li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                букеты</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                корзины</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n    </div>\r\n    <div class=\"navbar\">\r\n        <div class=\"containere nav-container\">\r\n            <input class=\"checkbox\" type=\"checkbox\" name=\"\" id=\"\" />\r\n            <div class=\"hamburger-lines\">\r\n                <span class=\"line line1\"></span>\r\n                <span class=\"line line2\"></span>\r\n                <span class=\"line line3\"></span>\r\n            </div>\r\n\r\n            <div class=\"menu-items\">\r\n                <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n                </li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                        букеты</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                        корзины</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n            </div>\r\n\r\n        </div>\r\n\r\n    </div>', '<div class=\"content\">\r\n            <div class=\"content-title\">\r\n                <a href=\"/\"><img src=\"../img/back.png\" height=\"40\"></a>\r\n                <span>Доставка</span>\r\n            </div>\r\n            <div class=\"content-block\">\r\n                <div class=\"content-block-logo\">\r\n                    <img src=\"../img/logof.png\" height=\"90\">\r\n                </div>\r\n                <div class=\"content-block-info\">\r\n                    <div class=\"content-block-info-title\">\r\n                        <span>Доставка интернет-магазина</span>\r\n                    </div>\r\n                    <div class=\"content-block-info-del\">\r\n                        <p>- по г.Пенза - бесплатно</p>\r\n                        <p>- по России от 600 рублей</p>\r\n                    </div>\r\n                    <div class=\"content-block-info-line\">\r\n                    </div>\r\n                    <div class=\"content-block-info-ty\">\r\n                        <p>Спасибо, что выбрали <span>Sunder</span></p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>', '<div class=\"footer\">\n        <div class=\"footer-wrap\">\n            <div class=\"footer-logo\">\n                <img src=\"../img/logof.png\">\n                <span>интернет-магазин<br> подарочных букетов\n                </span>\n            </div>\n            <div class=\"footer-content\">\n                <div class=\"footer-shop\">\n                    <span>Интернет-магазин</span>\n                    <p>+7(495) 544-57-71</p>\n                    <p>+7(800) 532-15-88</p>\n                    <span>Адреса магазинов</span>\n                    <p>Пенза, ул. Московская 32</p>\n                </div>\n                <div class=\"footer-support\">\n                    <span>Навигация</span>\n                    <div class=\"footer-support-link\">\n                        <a href=\"bouq-flow.php\">Букеты цветов</a>\n                        <a href=\"bouq-edible.php\">Съедобные букеты</a>\n                        <a href=\"gift-basket.php\">Подарочные корзины</a>\n                        <a href=\"topper.php\">Топперы</a>\n                        \n                    </div>\n                </div>\n                <div class=\"footer-information\">\n                    <span>Информация</span>\n                    <div class=\"footer-information-link\">\n                        <a href=\"../index.php\">Главная</a>\n                        <a href=\"delivery.php\">Доставка</a>\n                    </div>\n                </div>\n                <div class=\"footer-social\">\n                    <span>Социальные сети</span>\n                    <div class=\"footer-social-link\">\n                        <a href=\"https://www.youtube.com/channel/UC9t9FNAqh9cjvYqajZcUD_Q\"><img src=\"../img/yt.png\" height=\"20\"></a>\n                        <a href=\"https://t.me/+4FBj0JBZSbthZjQ6\"><img src=\"../img/tg.png\" height=\"20\"></a>\n                        <a href=\"https://vk.com/buketflowers1337\"><img src=\"../img/vk.png\" height=\"20\"></a>\n                        <a href=\"https://invite.viber.com/?g=dIj2_l2BCVEr1xulwubAfLhimST-SO_C\"><img src=\"../img/wu.png\" height=\"30\" width=\"30\"></a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>');

-- --------------------------------------------------------

--
-- Структура таблицы `edible`
--

CREATE TABLE `edible` (
  `id` int NOT NULL,
  `menu` text NOT NULL,
  `content` text NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `edible`
--

INSERT INTO `edible` (`id`, `menu`, `content`, `footer`) VALUES
(1, '<div class=\"header-menu\">         <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>         </li>         <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные                 букеты</a></li>         <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные                 корзины</a></li>         <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>         <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>     </div>     <div class=\"navbar\">         <div class=\"containere nav-container\">             <input class=\"checkbox\" type=\"checkbox\" name=\"\" id=\"\" />             <div class=\"hamburger-lines\">                 <span class=\"line line1\"></span>                 <span class=\"line line2\"></span>                 <span class=\"line line3\"></span>             </div>              <div class=\"menu-items\">                 <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>                 </li>                 <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные                         букеты</a></li>                 <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные                         корзины</a></li>                 <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>                 <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>             </div>          </div>      </div>', '<div>\r\n        <div>\r\n            <div class=\"content\">\r\n                <div class=\"content-title\">\r\n                    <a href=\"/\"><img src=\"../img/back.png\" height=\"40\"></a>\r\n                    <span>Съедобные букеты</span>\r\n                </div>\r\n                <div class=\"content-block\">\r\n                    <div class=\"content-block-filter\">\r\n                        <div class=\"content-block-filter-title\">\r\n                            <div class=\"content-block-filter-title-name\">\r\n                                <p>Оформление</p>\r\n                                <img src=\"../img/expand-arrow.png\" height=\"20\" id=\"arrow-decor\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list\" id=\"arrow-decor-style\">\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Комод</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Букет</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Корзина</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Коробка</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n\r\n                        <div class=\"content-block-filter-title\">\r\n                            <div class=\"content-block-filter-title-name\">\r\n                                <p>Состав</p>\r\n                                <img src=\"../img/expand-arrow.png\" height=\"20\" id=\"arrow-compose\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list\" id=\"arrow-compose-style\">\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Перец чили</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Вобла</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Орехи</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Шоколадные батончики</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Крабы & Раки</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"products\" style=\"width:100%\">\r\n                        <div class=\"products-wrap\" style=\"width:100%; height:100%;\">\r\n\r\n\r\n                            <div class=\"row filter_data\" style=\"width:100%; height:100%;\">\r\n\r\n                            </div>\r\n\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>', '<div class=\"footer\">\n        <div class=\"footer-wrap\">\n            <div class=\"footer-logo\">\n                <img src=\"../img/logof.png\">\n                <span>интернет-магазин<br> подарочных букетов\n                </span>\n            </div>\n            <div class=\"footer-content\">\n                <div class=\"footer-shop\">\n                    <span>Интернет-магазин</span>\n                    <p>+7(495) 544-57-71</p>\n                    <p>+7(800) 532-15-88</p>\n                    <span>Адреса магазинов</span>\n                    <p>Пенза, ул. Московская 32</p>\n                </div>\n                <div class=\"footer-support\">\n                    <span>Навигация</span>\n                    <div class=\"footer-support-link\">\n                        <a href=\"bouq-flow.php\">Букеты цветов</a>\n                        <a href=\"bouq-edible.php\">Съедобные букеты</a>\n                        <a href=\"gift-basket.php\">Подарочные корзины</a>\n                        <a href=\"topper.php\">Топперы</a>\n                        \n                    </div>\n                </div>\n                <div class=\"footer-information\">\n                    <span>Информация</span>\n                    <div class=\"footer-information-link\">\n                        <a href=\"../index.php\">Главная</a>\n                        <a href=\"delivery.php\">Доставка</a>\n                    </div>\n                </div>\n                <div class=\"footer-social\">\n                    <span>Социальные сети</span>\n                    <div class=\"footer-social-link\">\n                        <a href=\"https://www.youtube.com/channel/UC9t9FNAqh9cjvYqajZcUD_Q\"><img src=\"../img/yt.png\" height=\"20\"></a>\n                        <a href=\"https://t.me/+4FBj0JBZSbthZjQ6\"><img src=\"../img/tg.png\" height=\"20\"></a>\n                        <a href=\"https://vk.com/buketflowers1337\"><img src=\"../img/vk.png\" height=\"20\"></a>\n                        <a href=\"https://invite.viber.com/?g=dIj2_l2BCVEr1xulwubAfLhimST-SO_C\"><img src=\"../img/wu.png\" height=\"30\" width=\"30\"></a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>');

-- --------------------------------------------------------

--
-- Структура таблицы `flow`
--

CREATE TABLE `flow` (
  `id` int NOT NULL,
  `menu` text NOT NULL,
  `content` text NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `flow`
--

INSERT INTO `flow` (`id`, `menu`, `content`, `footer`) VALUES
(1, '<div class=\"header-menu\">\r\n        <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n        </li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                букеты</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                корзины</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n    </div>\r\n    <div class=\"navbar\">\r\n        <div class=\"containere nav-container\">\r\n            <input class=\"checkbox\" type=\"checkbox\" name=\"\" id=\"\" />\r\n            <div class=\"hamburger-lines\">\r\n                <span class=\"line line1\"></span>\r\n                <span class=\"line line2\"></span>\r\n                <span class=\"line line3\"></span>\r\n            </div>\r\n\r\n            <div class=\"menu-items\">\r\n                <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n                </li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                        букеты</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                        корзины</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n            </div>\r\n\r\n        </div>\r\n\r\n    </div>', '<div>\r\n        <div class=\"content\">\r\n            <div class=\"content-title\">\r\n                <a href=\"/\"><img src=\"../img/back.png\" height=\"40\"></a>\r\n                <span>Букеты цветов</span>\r\n            </div>\r\n            <div class=\"content-block\">\r\n                <div class=\"content-block-filter\">\r\n                    <div class=\"content-block-filter-title\">\r\n                        <div class=\"content-block-filter-title-name\">\r\n                            <p>Оформление</p>\r\n                            <img src=\"../img/expand-arrow.png\" height=\"20\" id=\"arrow-decor\">\r\n                        </div>\r\n                        <div class=\"content-block-filter-title-list\" id=\"arrow-decor-style\">\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Комод</span>\r\n                                <input type=\"checkbox\"/>\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Букет</span>\r\n                                <input type=\"checkbox\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Корзина</span>\r\n                                <input type=\"checkbox\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Коробка</span>\r\n                                <input type=\"checkbox\">\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"content-block-filter-title\">\r\n                        <div class=\"content-block-filter-title-name\">\r\n                            <p>Цветы</p>\r\n                            <img src=\"../img/expand-arrow.png\" height=\"20\" id=\"arrow-flowers\">\r\n                        </div>\r\n                        <div class=\"content-block-filter-title-list\" id=\"arrow-flowers-style\">\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Гвоздика</span>\r\n                                <input type=\"checkbox\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Орхидея</span>\r\n                                <input type=\"checkbox\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Пион</span>\r\n                                <input type=\"checkbox\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Подсолнух</span>\r\n                                <input type=\"checkbox\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Роза</span>\r\n                                <input type=\"checkbox\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Статица</span>\r\n                                <input type=\"checkbox\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Хризантема</span>\r\n                                <input type=\"checkbox\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list-item\">\r\n                                <span>Эустома</span>\r\n                                <input type=\"checkbox\">\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"products\" style=\"width:100%\">\r\n                    <div class=\"products-wrap\" style=\"width:100%; height:100%;\">\r\n\r\n\r\n                        <div class=\"row filter_data\" style=\"width:100%; height:100%;\">\r\n\r\n                        </div>\r\n\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>', '<div class=\"footer\">\n        <div class=\"footer-wrap\">\n            <div class=\"footer-logo\">\n                <img src=\"../img/logof.png\">\n                <span>интернет-магазин<br> подарочных букетов\n                </span>\n            </div>\n            <div class=\"footer-content\">\n                <div class=\"footer-shop\">\n                    <span>Интернет-магазин</span>\n                    <p>+7(495) 544-57-71</p>\n                    <p>+7(800) 532-15-88</p>\n                    <span>Адреса магазинов</span>\n                    <p>Пенза, ул. Московская 32</p>\n                </div>\n                <div class=\"footer-support\">\n                    <span>Навигация</span>\n                    <div class=\"footer-support-link\">\n                        <a href=\"bouq-flow.php\">Букеты цветов</a>\n                        <a href=\"bouq-edible.php\">Съедобные букеты</a>\n                        <a href=\"gift-basket.php\">Подарочные корзины</a>\n                        <a href=\"topper.php\">Топперы</a>\n                        \n                    </div>\n                </div>\n                <div class=\"footer-information\">\n                    <span>Информация</span>\n                    <div class=\"footer-information-link\">\n                        <a href=\"../index.php\">Главная</a>\n                        <a href=\"delivery.php\">Доставка</a>\n                    </div>\n                </div>\n                <div class=\"footer-social\">\n                    <span>Социальные сети</span>\n                    <div class=\"footer-social-link\">\n                        <a href=\"https://www.youtube.com/channel/UC9t9FNAqh9cjvYqajZcUD_Q\"><img src=\"../img/yt.png\" height=\"20\"></a>\n                        <a href=\"https://t.me/+4FBj0JBZSbthZjQ6\"><img src=\"../img/tg.png\" height=\"20\"></a>\n                        <a href=\"https://vk.com/buketflowers1337\"><img src=\"../img/vk.png\" height=\"20\"></a>\n                        <a href=\"https://invite.viber.com/?g=dIj2_l2BCVEr1xulwubAfLhimST-SO_C\"><img src=\"../img/wu.png\" height=\"30\" width=\"30\"></a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>');

-- --------------------------------------------------------

--
-- Структура таблицы `main`
--

CREATE TABLE `main` (
  `id` int NOT NULL,
  `menu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `footer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `main`
--

INSERT INTO `main` (`id`, `menu`, `content`, `footer`) VALUES
(1, '<div class=\"header-menu\">\r\n            <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n            </li>\r\n            <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                    букеты</a></li>\r\n            <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                    корзины</a></li>\r\n            <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n            <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n        </div><div class=\"navbar\">\r\n            <div class=\"containere nav-container\">\r\n                <input class=\"checkbox\" type=\"checkbox\" name=\"\" id=\"\" />\r\n                <div class=\"hamburger-lines\">\r\n                    <span class=\"line line1\"></span>\r\n                    <span class=\"line line2\"></span>\r\n                    <span class=\"line line3\"></span>\r\n                </div>\r\n\r\n                <div class=\"menu-items\">\r\n                    <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты\r\n                            цветов</a>\r\n                    </li>\r\n                    <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                            букеты</a></li>\r\n                    <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                            корзины</a></li>\r\n                    <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n                    <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a>\r\n                    </li>\r\n                </div>\r\n\r\n            </div>\r\n\r\n        </div>', '<div class=\"swiper mySwiper\">\r\n        <div class=\"swiper-wrapper\">\r\n            <div class=\"swiper-slide\"><img src=\"./slider/img/1.png\" /></div>\r\n            <div class=\"swiper-slide\"><img src=\"./slider/img/2.png\" /></div>\r\n            <div class=\"swiper-slide\"><img src=\"./slider/img/3.png\" /></div>\r\n        </div>\r\n        <div class=\"swiper-button-next\"></div>\r\n        <div class=\"swiper-button-prev\"></div>\r\n    </div>\r\n    <div class=\"products-title\">\r\n        <p>Лучшие предложения</p>\r\n    </div>\r\n    <div class=\"cont\">\r\n        <div class=\"products\">\r\n            <div class=\"products-block\">\r\n                <div class=\"products-block-cart\">\r\n                    <img src=\"./products/bouqFlow/1.jpg\" height=\"270\" />\r\n                </div>\r\n                <div class=\"products-info\">\r\n                    <div class=\"products-info-value\">\r\n                        <span>4999 ₽</span>\r\n                        <p>Арт: А67123</p>\r\n                    </div>\r\n\r\n                </div>\r\n                <span class=\"products-name\">Букет цветов \"Нежное облако\"</span>\r\n            </div>\r\n            <div class=\"products-block\">\r\n                <div class=\"products-block-cart\">\r\n                    <img src=\"./products/bouqFlow/2.jpg\" height=\"270\" />\r\n\r\n                </div>\r\n                <div class=\"products-info\">\r\n                    <div class=\"products-info-value\">\r\n                        <span>1399 ₽</span>\r\n                        <p>Арт: B97247</p>\r\n                    </div>\r\n\r\n                </div>\r\n\r\n                <span class=\"products-name\">Розы красные</span>\r\n            </div>\r\n            <div class=\"products-block\">\r\n                <div class=\"products-block-cart\">\r\n                    <img src=\"./products/bouqFlow/3.jpg\" height=\"270\" />\r\n\r\n                </div>\r\n                <div class=\"products-info\">\r\n                    <div class=\"products-info-value\">\r\n                        <span>1299 ₽</span>\r\n                        <p>Арт: C41351</p>\r\n                    </div>\r\n\r\n                </div>\r\n                <span class=\"products-name\">Букет из 15 гиацинтов</span>\r\n            </div>\r\n            <div class=\"products-block\">\r\n                <div class=\"products-block-cart\">\r\n                    <img src=\"./products/bouqFlow/4.jpg\" height=\"270\" />\r\n\r\n                </div>\r\n                <div class=\"products-info\">\r\n                    <div class=\"products-info-value\">\r\n                        <span>7199 ₽</span>\r\n                        <p>Арт: D62830</p>\r\n                    </div>\r\n\r\n                </div>\r\n                <span class=\"products-name\">Корзина с подсолнухами</span>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"products-title\">\r\n        <p>Новинки</p>\r\n    </div>\r\n    <div class=\"cont\">\r\n        <div class=\"products\">\r\n            <div class=\"products-block\">\r\n                <div class=\"products-block-cart\">\r\n                    <img src=\"./products/bouqFlow/5.jpg\" height=\"270\" />\r\n\r\n                </div>\r\n\r\n                <div class=\"products-info\">\r\n                    <div class=\"products-info-value\">\r\n                        <span>6500 ₽.</span>\r\n                        <p>Арт: D72367</p>\r\n                    </div>\r\n\r\n                </div>\r\n                <span class=\"products-name\">Розовые пионы в коробке</span>\r\n            </div>\r\n            <div class=\"products-block\">\r\n                <div class=\"products-block-cart\">\r\n                    <img src=\"./products/bouqFlow/6.jpg\" height=\"270\" />\r\n\r\n                </div>\r\n                <div class=\"products-info\">\r\n                    <div class=\"products-info-value\">\r\n                        <span>21400 ₽</span>\r\n                        <p>Арт: B64363</p>\r\n                    </div>\r\n\r\n                </div>\r\n\r\n                <span class=\"products-name\">101 кустовая роза</span>\r\n            </div>\r\n            <div class=\"products-block\">\r\n                <div class=\"products-block-cart\">\r\n                    <img src=\"./products/bouqFlow/7.jpg\" height=\"270\" />\r\n\r\n                </div>\r\n                <div class=\"products-info\">\r\n                    <div class=\"products-info-value\">\r\n                        <span>3800 ₽</span>\r\n                        <p>Арт: А64321</p>\r\n                    </div>\r\n\r\n                </div>\r\n                <span class=\"products-name\">Букет с перцем чили</span>\r\n            </div>\r\n            <div class=\"products-block\">\r\n                <div class=\"products-block-cart\">\r\n                    <img src=\"./products/bouqFlow/8.jpg\" height=\"270\" />\r\n\r\n                </div>\r\n                <div class=\"products-info\">\r\n                    <div class=\"products-info-value\">\r\n                        <span>3500 ₽</span>\r\n                        <p>Арт: C63633</p>\r\n                    </div>\r\n\r\n                </div>\r\n                <span class=\"products-name\">Мужской букет с воблой</span>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"abwrap\">\r\n        <div class=\"about\">\r\n            <div class=\"about-info\">\r\n                <div class=\"about-info-company\">\r\n                    <span>о нас</span>\r\n                </div>\r\n                <div class=\"about-info-title\">\r\n                    <span>Sunder - интернет-магазин<br />\r\n                        подарочных букетов\r\n                    </span>\r\n                </div>\r\n                <div class=\"about-info-content\">\r\n                    <div class=\"about-info-content-p\">\r\n                        <p>\r\n                            Sunder — интернет-магазин, представляющий тысячи подарочных букетов\r\n                            Большой ассортимент подарочных букетов доступен для женщин и\r\n                            мужчин.\r\n                        </p>\r\n                    </div>\r\n                    <div class=\"about-info-content-p\">\r\n                        <p>\r\n                            Интернет-магазин sunder-flowers.com полностью отражает ассортимент\r\n                            каждого магазина, что дает покупателю возможность заранее\r\n                            ознакомиться с товаром, выбрать понравившиеся букеты и забрать\r\n                            товар.\r\n                        </p>\r\n                    </div>\r\n                    </p>\r\n                </div>\r\n                <div class=\"about-info-button\">\r\n                    <input type=\"submit\" value=\"ПОДРОБНОСТИ\" onclick=\" location.href=\' ../pages/delivery.php\'  \"/>\r\n                </div>\r\n            </div>\r\n            <div class=\"about-img\">\r\n                <div class=\"about-img-block\">\r\n                    <img src=\"./img/about-company.jpg\" height=\"390\" />\r\n                    <div class=\"about-img-block-content\">\r\n                        <div class=\"about-img-block-content-span\">\r\n                            <span>ЛЕТО<br> БЛИЗКО</span>\r\n                        </div>\r\n                        <div class=\"about-img-block-content-p\">\r\n                            <p>распродажа<br> весна-лето</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>', '<div class=\"footer\">\r\n        <div class=\"footer-wrap\">\r\n            <div class=\"footer-logo\">\r\n                <img src=\"../img/logof.png\">\r\n                <span>интернет-магазин<br> подарочных букетов\r\n                </span>\r\n            </div>\r\n            <div class=\"footer-content\">\r\n                <div class=\"footer-shop\">\r\n                    <span>Интернет-магазин</span>\r\n                    <p>+7(495) 544-57-71</p>\r\n                    <p>+7(800) 532-15-88</p>\r\n                    <span>Адреса магазинов</span>\r\n                    <p>Пенза, ул. Московская 32</p>\r\n                </div>\r\n                <div class=\"footer-support\">\r\n                    <span>Навигация</span>\r\n                    <div class=\"footer-support-link\">\r\n                        <a href=\"../pages/bouq-flow.php\">Букеты цветов</a>\r\n                        <a href=\"../pages/bouq-edible.php\">Съедобные букеты</a>\r\n                        <a href=\"../pages/gift-basket.php\">Подарочные корзины</a>\r\n                        <a href=\"../pages/topper.php\">Топперы</a>\r\n                        \r\n                    </div>\r\n                </div>\r\n                <div class=\"footer-information\">\r\n                    <span>Информация</span>\r\n                    <div class=\"footer-information-link\">\r\n                        <a href=\"/\">Главная</a>\r\n                        <a href=\"../pages/delivery.php\">Доставка</a>\r\n                    </div>\r\n                </div>\r\n                <div class=\"footer-social\">\r\n                    <span>Социальные сети</span>\r\n                    <div class=\"footer-social-link\">\r\n                        <a href=\"https://www.youtube.com/channel/UC9t9FNAqh9cjvYqajZcUD_Q\"\"><img src=\"../img/yt.png\" height=\"20\"></a>\r\n                        <a href=\"https://t.me/+4FBj0JBZSbthZjQ6\"><img src=\"../img/tg.png\" height=\"20\"></a>\r\n                        <a href=\"https://vk.com/buketflowers1337\"><img src=\"../img/vk.png\" height=\"20\"></a>\r\n                        <a href=\"https://invite.viber.com/?g=dIj2_l2BCVEr1xulwubAfLhimST-SO_C\"><img src=\"../img/wu.png\" height=\"30\" width=\"30\"></a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>');

-- --------------------------------------------------------

--
-- Структура таблицы `purch`
--

CREATE TABLE `purch` (
  `id` int NOT NULL,
  `menu` text NOT NULL,
  `content` text NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `purch`
--

INSERT INTO `purch` (`id`, `menu`, `content`, `footer`) VALUES
(1, '<div class=\"header-menu\">\r\n        <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n        </li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                букеты</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                корзины</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n    </div>\r\n    <div class=\"navbar\">\r\n        <div class=\"containere nav-container\">\r\n            <input class=\"checkbox\" type=\"checkbox\" name=\"\" id=\"\" />\r\n            <div class=\"hamburger-lines\">\r\n                <span class=\"line line1\"></span>\r\n                <span class=\"line line2\"></span>\r\n                <span class=\"line line3\"></span>\r\n            </div>\r\n\r\n            <div class=\"menu-items\">\r\n                <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n                </li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                        букеты</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                        корзины</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n            </div>\r\n\r\n        </div>\r\n\r\n    </div>', '<div class=\"flexbox\">\r\n                        <div class=\"inputBox\">\r\n                            <span>Месяц</span>\r\n                            <select name=\"month\" id=\"\" class=\"month-input\">\r\n                                <option value=\"month\" selected disabled>ММ</option>\r\n                                <option value=\"01\">01</option>\r\n                                <option value=\"02\">02</option>\r\n                                <option value=\"03\">03</option>\r\n                                <option value=\"04\">04</option>\r\n                                <option value=\"05\">05</option>\r\n                                <option value=\"06\">06</option>\r\n                                <option value=\"07\">07</option>\r\n                                <option value=\"08\">08</option>\r\n                                <option value=\"09\">09</option>\r\n                                <option value=\"10\">10</option>\r\n                                <option value=\"11\">11</option>\r\n                                <option value=\"12\">12</option>\r\n                            </select>\r\n                        </div>\r\n                        <div class=\"inputBox\">\r\n                            <span>Год</span>\r\n                            <select name=\"year\" id=\"\" class=\"year-input\">\r\n                                <option value=\"year\" selected disabled>ГГ</option>\r\n                                <option value=\"2023\">2023</option>\r\n                                <option value=\"2024\">2024</option>\r\n                                <option value=\"2025\">2025</option>\r\n                                <option value=\"2026\">2026</option>\r\n                                <option value=\"2027\">2027</option>\r\n                                <option value=\"2028\">2028</option>\r\n                                <option value=\"2029\">2029</option>\r\n                                <option value=\"2030\">2030</option>\r\n                                <option value=\"2031\">2031</option>\r\n                                <option value=\"2032\">2032</option>\r\n                                <option value=\"2033\">2033</option>\r\n                                <option value=\"2034\">2034</option>\r\n                            </select>\r\n                        </div>\r\n                        <div class=\"inputBox\">\r\n                            <span>CVV</span>\r\n                            <input type=\"text\" maxlength=\"4\" class=\"cvv-input\" name=\"cvv\">\r\n                        </div>\r\n                    </div>\r\n                    <input type=\"submit\" value=\"Оплатить\" class=\"submit-btn\" name=\"buy\">', '<div class=\"footer\">\n        <div class=\"footer-wrap\">\n            <div class=\"footer-logo\">\n                <img src=\"../img/logof.png\">\n                <span>интернет-магазин<br> подарочных букетов\n                </span>\n            </div>\n            <div class=\"footer-content\">\n                <div class=\"footer-shop\">\n                    <span>Интернет-магазин</span>\n                    <p>+7(495) 544-57-71</p>\n                    <p>+7(800) 532-15-88</p>\n                    <span>Адреса магазинов</span>\n                    <p>Пенза, ул. Московская 32</p>\n                </div>\n                <div class=\"footer-support\">\n                    <span>Навигация</span>\n                    <div class=\"footer-support-link\">\n                        <a href=\"bouq-flow.php\">Букеты цветов</a>\n                        <a href=\"bouq-edible.php\">Съедобные букеты</a>\n                        <a href=\"gift-basket.php\">Подарочные корзины</a>\n                        <a href=\"topper.php\">Топперы</a>\n                        \n                    </div>\n                </div>\n                <div class=\"footer-information\">\n                    <span>Информация</span>\n                    <div class=\"footer-information-link\">\n                        <a href=\"../index.php\">Главная</a>\n                        <a href=\"delivery.php\">Доставка</a>\n                    </div>\n                </div>\n                <div class=\"footer-social\">\n                    <span>Социальные сети</span>\n                    <div class=\"footer-social-link\">\n                        <a href=\"https://www.youtube.com/channel/UC9t9FNAqh9cjvYqajZcUD_Q\"><img src=\"../img/yt.png\" height=\"20\"></a>\n                        <a href=\"https://t.me/+4FBj0JBZSbthZjQ6\"><img src=\"../img/tg.png\" height=\"20\"></a>\n                        <a href=\"https://vk.com/buketflowers1337\"><img src=\"../img/vk.png\" height=\"20\"></a>\n                        <a href=\"https://invite.viber.com/?g=dIj2_l2BCVEr1xulwubAfLhimST-SO_C\"><img src=\"../img/wu.png\" height=\"30\" width=\"30\"></a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>');

-- --------------------------------------------------------

--
-- Структура таблицы `register`
--

CREATE TABLE `register` (
  `id` int NOT NULL,
  `menu` text NOT NULL,
  `content` text NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `register`
--

INSERT INTO `register` (`id`, `menu`, `content`, `footer`) VALUES
(1, ' <div class=\"header-menu\">\r\n        <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n        </li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                букеты</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                корзины</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n        <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n    </div>\r\n    <div class=\"navbar\">\r\n        <div class=\"containere nav-container\">\r\n            <input class=\"checkbox\" type=\"checkbox\" name=\"\" id=\"\" />\r\n            <div class=\"hamburger-lines\">\r\n                <span class=\"line line1\"></span>\r\n                <span class=\"line line2\"></span>\r\n                <span class=\"line line3\"></span>\r\n            </div>\r\n\r\n            <div class=\"menu-items\">\r\n                <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\r\n                </li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\r\n                        букеты</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\r\n                        корзины</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\r\n                <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\r\n            </div>\r\n\r\n        </div>\r\n\r\n    </div>', '<div class=\"pop_up_reg_body_wrap_block\">\r\n                        <div class=\"pop_up_reg_body_wrap_data\">\r\n                            <p>Логин<span>&lowast;</span></p>\r\n                            <input type=\"text\" name=\"login_reg\" class=\"pop_up_reg_body_wrap_data_input\">\r\n                        </div>\r\n                        <div class=\"pop_up_reg_body_wrap_data\">\r\n                            <p>Телефон<span>&lowast;</span></p>\r\n                            <input type=\"text\" name=\"phone_reg\" class=\"pop_up_reg_body_wrap_data_input input-phone\">\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"pop_up_reg_body_wrap_block\">\r\n                        <div class=\"pop_up_reg_body_wrap_data\">\r\n                            <p>Пароль<span>&lowast;</span></p>\r\n                            <input type=\"password\" name=\"pass_reg\" class=\"pop_up_reg_body_wrap_data_input\">\r\n                        </div>\r\n                        <div class=\"pop_up_reg_body_wrap_data\">\r\n                            <p>Повторите пароль<span>&lowast;</span></p>\r\n                            <input type=\"password\" name=\"passconf_reg\" class=\"pop_up_reg_body_wrap_data_input\">\r\n                        </div>\r\n                    </div>', '<div class=\"footer\">\n        <div class=\"footer-wrap\">\n            <div class=\"footer-logo\">\n                <img src=\"../img/logof.png\">\n                <span>интернет-магазин<br> подарочных букетов\n                </span>\n            </div>\n            <div class=\"footer-content\">\n                <div class=\"footer-shop\">\n                    <span>Интернет-магазин</span>\n                    <p>+7(495) 544-57-71</p>\n                    <p>+7(800) 532-15-88</p>\n                    <span>Адреса магазинов</span>\n                    <p>Пенза, ул. Московская 32</p>\n                </div>\n                <div class=\"footer-support\">\n                    <span>Навигация</span>\n                    <div class=\"footer-support-link\">\n                        <a href=\"bouq-flow.php\">Букеты цветов</a>\n                        <a href=\"bouq-edible.php\">Съедобные букеты</a>\n                        <a href=\"gift-basket.php\">Подарочные корзины</a>\n                        <a href=\"topper.php\">Топперы</a>\n                        \n                    </div>\n                </div>\n                <div class=\"footer-information\">\n                    <span>Информация</span>\n                    <div class=\"footer-information-link\">\n                        <a href=\"../index.php\">Главная</a>\n                        <a href=\"delivery.php\">Доставка</a>\n                    </div>\n                </div>\n                <div class=\"footer-social\">\n                    <span>Социальные сети</span>\n                    <div class=\"footer-social-link\">\n                        <a href=\"https://www.youtube.com/channel/UC9t9FNAqh9cjvYqajZcUD_Q\"><img src=\"../img/yt.png\" height=\"20\"></a>\n                        <a href=\"https://t.me/+4FBj0JBZSbthZjQ6\"><img src=\"../img/tg.png\" height=\"20\"></a>\n                        <a href=\"https://vk.com/buketflowers1337\"><img src=\"../img/vk.png\" height=\"20\"></a>\n                        <a href=\"https://invite.viber.com/?g=dIj2_l2BCVEr1xulwubAfLhimST-SO_C\"><img src=\"../img/wu.png\" height=\"30\" width=\"30\"></a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>');

-- --------------------------------------------------------

--
-- Структура таблицы `topper`
--

CREATE TABLE `topper` (
  `id` int NOT NULL,
  `menu` text NOT NULL,
  `content` text NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `topper`
--

INSERT INTO `topper` (`id`, `menu`, `content`, `footer`) VALUES
(1, '<div class=\"header-menu\">\n        <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\n        </li>\n        <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\n                букеты</a></li>\n        <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\n                корзины</a></li>\n        <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\n        <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\n    </div>\n    <div class=\"navbar\">\n        <div class=\"containere nav-container\">\n            <input class=\"checkbox\" type=\"checkbox\" name=\"\" id=\"\" />\n            <div class=\"hamburger-lines\">\n                <span class=\"line line1\"></span>\n                <span class=\"line line2\"></span>\n                <span class=\"line line3\"></span>\n            </div>\n\n            <div class=\"menu-items\">\n                <li class=\"header-menu-list\"><a href=\"/pages/bouq-flow.php\" class=\"header-menu-link\">Букеты цветов</a>\n                </li>\n                <li class=\"header-menu-list\"><a href=\"../pages/bouq-edible.php\" class=\"header-menu-link\">Съедобные\n                        букеты</a></li>\n                <li class=\"header-menu-list\"><a href=\"../pages/gift-basket.php\" class=\"header-menu-link\">Подарочные\n                        корзины</a></li>\n                <li class=\"header-menu-list\"><a href=\"../pages/topper.php\" class=\"header-menu-link\">Топперы</a></li>\n                <li class=\"header-menu-list\"><a href=\"../pages/delivery.php\" class=\"header-menu-link\">Доставка</a></li>\n            </div>\n\n        </div>\n\n    </div>', '<div>\r\n        <div>\r\n            <div class=\"content\">\r\n                <div class=\"content-title\">\r\n                    <a href=\"/\"><img src=\"../img/back.png\" height=\"40\"></a>\r\n                    <span>Топперы</span>\r\n                </div>\r\n                <div class=\"content-block\">\r\n                    <div class=\"content-block-filter\">\r\n                        <div class=\"content-block-filter-title\">\r\n                            <div class=\"content-block-filter-title-name\">\r\n                                <p>Материал</p>\r\n                                <img src=\"../img/expand-arrow.png\" height=\"20\" id=\"arrow-material\">\r\n                            </div>\r\n                            <div class=\"content-block-filter-title-list\" id=\"arrow-material-style\">\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Пластмасс</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Железо</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                                <div class=\"content-block-filter-title-list-item\">\r\n                                    <span>Дерево</span>\r\n                                    <input type=\"checkbox\">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"products\" style=\"width:100%\">\r\n                        <div class=\"products-wrap\" style=\"width:100%; height:100%;\">\r\n\r\n\r\n                            <div class=\"row filter_data\" style=\"width:100%; height:100%;\">\r\n\r\n                            </div>\r\n\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>', '<div class=\"footer\">\r\n        <div class=\"footer-wrap\">\r\n            <div class=\"footer-logo\">\r\n                <img src=\"../img/logof.png\">\r\n                <span>интернет-магазин<br> подарочных букетов\r\n                </span>\r\n            </div>\r\n            <div class=\"footer-content\">\r\n                <div class=\"footer-shop\">\r\n                    <span>Интернет-магазин</span>\r\n                    <p>+7(495) 544-57-71</p>\r\n                    <p>+7(800) 532-15-88</p>\r\n                    <span>Адреса магазинов</span>\r\n                    <p>Пенза, ул. Московская 32</p>\r\n                </div>\r\n                <div class=\"footer-support\">\r\n                    <span>Навигация</span>\r\n                    <div class=\"footer-support-link\">\r\n                        <a href=\"bouq-flow.php\">Букеты цветов</a>\r\n                        <a href=\"bouq-edible.php\">Съедобные букеты</a>\r\n                        <a href=\"gift-basket.php\">Подарочные корзины</a>\r\n                        <a href=\"topper.php\">Топперы</a>\r\n                        \r\n                    </div>\r\n                </div>\r\n                <div class=\"footer-information\">\r\n                    <span>Информация</span>\r\n                    <div class=\"footer-information-link\">\r\n                        <a href=\"../index.php\">Главная</a>\r\n                        <a href=\"delivery.php\">Доставка</a>\r\n                    </div>\r\n                </div>\r\n                <div class=\"footer-social\">\r\n                    <span>Социальные сети</span>\r\n                    <div class=\"footer-social-link\">\r\n                        <a href=\"https://www.youtube.com/channel/UC9t9FNAqh9cjvYqajZcUD_Q\"><img src=\"../img/yt.png\" height=\"20\"></a>\r\n                        <a href=\"https://t.me/+4FBj0JBZSbthZjQ6\"><img src=\"../img/tg.png\" height=\"20\"></a>\r\n                        <a href=\"https://vk.com/buketflowers1337\"><img src=\"../img/vk.png\" height=\"20\"></a>\r\n                        <a href=\"https://invite.viber.com/?g=dIj2_l2BCVEr1xulwubAfLhimST-SO_C\"><img src=\"../img/wu.png\" height=\"30\" width=\"30\"></a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `phone`, `status`) VALUES
(206, 'olol', '7786c5a683967bda6a67657b1a23f7cd', 'wgrwye', '1'),
(211, 'wer', '22c276a05aa7c90566ae2175bcc2a9b0', '523', '0'),
(212, 'ui', '7d5c009e4eb8bbc78647caeca308e61b', '235', '0'),
(213, 'eeq', 'e81d183b6de1ea62e8e967f08639f44c', '24643', '0'),
(214, 'wreh', 'd41d8cd98f00b204e9800998ecf8427e', '', '0'),
(215, 'twet3333333', 'd41d8cd98f00b204e9800998ecf8427e', '', '0'),
(216, '5364758987098', 'd41d8cd98f00b204e9800998ecf8427e', '', '0'),
(217, 'ytt', '202cb962ac59075b964b07152d234b70', '123', '0'),
(218, '531', 'afb04170eae032421873dc20a3642326', '262', '0'),
(219, 'jik', '49d46ecf58aa33473aff0feedc5a086c', '111', '0'),
(220, '111', '4eae35f1b35977a00ebd8086c259d4c9', '435436', '0'),
(221, '121451', 'd41d8cd98f00b204e9800998ecf8427e', '512512', '0'),
(222, 'qwq', 'a078b88157431887516448c823118d83', '222', '0'),
(223, 'pure', '123', '89273883967', '0'),
(224, 'io', 'f98ed07a4d5f50f7de1410d905f1477f', '8989523', '0');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bouqFlow`
--
ALTER TABLE `bouqFlow`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `edible`
--
ALTER TABLE `edible`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `flow`
--
ALTER TABLE `flow`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `purch`
--
ALTER TABLE `purch`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `topper`
--
ALTER TABLE `topper`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `bouqFlow`
--
ALTER TABLE `bouqFlow`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `edible`
--
ALTER TABLE `edible`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `flow`
--
ALTER TABLE `flow`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `main`
--
ALTER TABLE `main`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `purch`
--
ALTER TABLE `purch`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `register`
--
ALTER TABLE `register`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `topper`
--
ALTER TABLE `topper`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
