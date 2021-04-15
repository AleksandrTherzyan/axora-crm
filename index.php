<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$time_start = microtime(true);
session_start();

require_once ('vendor/autoload.php');
require_once ('config/functions.php');


use View\IndexView;

$view = new IndexView();

if (isset($_GET['logout'])) {
    header('WWW-Authenticate: Basic realm="Simpla CMS"');
    header('HTTP/1.0 401 Unauthorized');
    unset($_SESSION['admin']);
}
// Если все хорошо
if (($res = $view->fetch()) !== false) {

    // Выводим результат
    header("Content-type: text/html; charset=UTF-8");
    print $res;

    // Сохраняем последнюю просмотренную страницу в переменной $_SESSION['last_visited_page']
    if (empty($_SESSION['last_visited_page']) || empty($_SESSION['current_page']) || $_SERVER['REQUEST_URI'] !== $_SESSION['current_page']) {
        if (!empty($_SESSION['current_page']) && !empty($_SESSION['last_visited_page']) && $_SESSION['last_visited_page'] !== $_SESSION['current_page']) {
            $_SESSION['last_visited_page'] = $_SESSION['current_page'];
        }
        $_SESSION['current_page'] = $_SERVER['REQUEST_URI'];
    }
} else {
    // Иначе страница об ошибке
    header("http/1.0 404 not found");

    // Подменим переменную GET, чтобы вывести страницу 404
    $_GET['page_url'] = '404';
    $_GET['module'] = 'PageView';
    print $view->fetch();
}
