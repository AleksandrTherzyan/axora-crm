<?php


namespace Simpla;

use Api\Simpla;
// Этот класс выбирает модуль в зависимости от параметра Section и выводит его на экран
class IndexAdmin extends Simpla
{
    // Соответсвие модулей и названий соответствующих прав
    private $modules_permissions = array(
        '\Simpla\ProductsAdmin'       => 'products',
        '\Simpla\BannersAdmin'        => 'banners',
        '\Simpla\BannerAdmin'         => 'banners',
        '\Simpla\ProductAdmin'        => 'products',
        '\Simpla\CategoriesAdmin'     => 'categories',
        '\Simpla\CategoryAdmin'       => 'categories',
        '\Simpla\BrandsAdmin'         => 'brands',
        '\Simpla\BrandAdmin'          => 'brands',
        '\Simpla\FeaturesAdmin'       => 'features',
        '\Simpla\FeatureAdmin'        => 'features',
        '\Simpla\OrdersAdmin'         => 'orders',
        '\Simpla\OrderAdmin'          => 'orders',
        '\Simpla\OrdersLabelsAdmin'   => 'labels',
        '\Simpla\OrdersLabelAdmin'    => 'labels',
        '\Simpla\UsersAdmin'          => 'users',
        '\Simpla\UserAdmin'           => 'users',
        '\Simpla\ExportUsersAdmin'    => 'users',
        '\Simpla\GroupsAdmin'         => 'groups',
        '\Simpla\GroupAdmin'          => 'groups',
        '\Simpla\CouponsAdmin'        => 'coupons',
        '\Simpla\CouponAdmin'         => 'coupons',
        '\Simpla\PagesAdmin'          => 'pages',
        '\Simpla\PageAdmin'           => 'pages',
        '\Simpla\BlogAdmin'           => 'blog',
        '\Simpla\TagsAdmin'           => 'tags',
        '\Simpla\TagAdmin'            => 'tags',
        '\Simpla\PostAdmin'           => 'blog',
        '\Simpla\CommentsAdmin'       => 'comments',
        '\Simpla\FeedbacksAdmin'      => 'feedbacks',
        '\Simpla\ImportAdmin'         => 'import',
        '\Simpla\ExportAdmin'         => 'export',
        '\Simpla\BackupAdmin'         => 'backup',
        '\Simpla\StatsAdmin'          => 'stats',
        '\Simpla\ThemeAdmin'          => 'design',
        '\Simpla\StylesAdmin'         => 'design',
        '\Simpla\TemplatesAdmin'      => 'design',
        '\Simpla\ImagesAdmin'         => 'design',
        '\Simpla\SettingsAdmin'       => 'settings',
        '\Simpla\CurrencyAdmin'       => 'currency',
        '\Simpla\DeliveriesAdmin'     => 'delivery',
        '\Simpla\DeliveryAdmin'       => 'delivery',
        '\Simpla\PaymentMethodAdmin'  => 'payment',
        '\Simpla\PaymentMethodsAdmin' => 'payment',
        '\Simpla\ManagersAdmin'       => 'managers',
        '\Simpla\ManagerAdmin'        => 'managers',

    );
	private $module = null;
    // Конструктор
    public function __construct()
    {

        // Вызываем конструктор базового класса
        parent::__construct();


        $this->design->set_templates_dir('simpla/design/html');

        if (!is_dir($this->config->root_dir.'/compiled')) {
            mkdir($this->config->root_dir.'simpla/design/compiled', 0777);
        }

        $this->design->set_compiled_dir('simpla/design/compiled');

        $this->design->assign('settings',  $this->settings);
        $this->design->assign('config',    $this->config);

        // Администратор
        $manager = $this->managers->get_manager();
        $this->design->assign('manager', $manager);

        // Берем название модуля из get-запроса
        $module = $this->request->get('module', 'string');
        $module = preg_replace("/[^A-Za-z0-9]+/", "", $module);


        // Если не запросили модуль - используем модуль первый из разрешенных
        if (empty($module) || !is_file('simpla/'.$module.'.php')) {
            foreach ($this->modules_permissions as $m=>$p) {
                if ($this->managers->access($p)) {
                    $module = $m;
                    break;
                }
            }
        }




        if (empty($module)) {
            $module = 'Simpla\ProductsAdmin';
        }

        if ( strpos($module, '\Simpla\\') === false ) {
            $module = '\Simpla\\' . $module ;
        }

        // Создаем соответствующий модуль
        if (class_exists( $module)) {
            $this->module = new $module();
        } else {
            die("Error creating  $module class");
        }
    }

    public function fetch()
    {
        $currency = $this->money->get_currency();
        $this->design->assign("currency", $currency);

	    $content = null;

        if (isset($this->modules_permissions['\\' .get_class($this->module)])
        && $this->managers->access($this->modules_permissions['\\' .get_class($this->module)])) {
            $content = $this->module->fetch();
            $this->design->assign("content",  $content);
        } else {
            $this->design->assign("content", "Permission denied");
        }

        // Счетчики для верхнего меню
        $new_orders_counter = $this->orders->count_orders(array('status'=>0));
        $this->design->assign("new_orders_counter", $new_orders_counter);

        $new_comments_counter = $this->comments->count_comments(array('approved'=>0));
        $this->design->assign("new_comments_counter", $new_comments_counter);

        $new_feedback_counter = $this->feedbacks->count_not_read();
        $this->design->assign("new_feedback_counter", $new_feedback_counter);

        // Создаем текущую обертку сайта (обычно index.tpl)
        $wrapper = $this->design->smarty->getTemplateVars('wrapper');
        if (is_null($wrapper)) {
            $wrapper = 'index.tpl';
        }

        if (!empty($wrapper)) {
            return $this->design->fetch($wrapper);
        } else {
            return $content;
        }
    }
}


