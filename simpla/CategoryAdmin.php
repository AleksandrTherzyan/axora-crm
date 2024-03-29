<?php

namespace Simpla;

use Api\Simpla;

class CategoryAdmin extends Simpla
{
    private $allowed_image_extentions = array('png', 'gif', 'jpg', 'jpeg', 'ico');

    public function fetch()
    {



        $category = new \stdClass();
        if ($this->request->method('post')) {
            $category->id = $this->request->post('id', 'integer');
            $category->parent_id = $this->request->post('parent_id', 'integer');
            $category->name = $this->request->post('name');
            $category->h1 = $this->request->post('h1');
            $category->visible = $this->request->post('visible', 'boolean');
            $category->icon = $this->request->post('icon', 'string');
            $category->url = trim($this->request->post('url', 'string'));
            $category->meta_title = $this->request->post('meta_title');
            $category->meta_keywords = $this->request->post('meta_keywords');
            $category->meta_description = $this->request->post('meta_description');

            $category->description = $this->request->post('description');

            // Не допустить одинаковые URL разделов.
            if (($c = $this->categories->get_category($category->url)) && $c->id!=$category->id) {
                $this->design->assign('message_error', 'url_exists');
            } elseif (empty($category->name)) {
                $this->design->assign('message_error', 'name_empty');
            } elseif (empty($category->url)) {
                $this->design->assign('message_error', 'url_empty');
            } else {
                if (empty($category->id)) {
                    $category->id = $this->categories->add_category($category);
                    $this->design->assign('message_success', 'added');
                } else {
                    $this->categories->update_category($category->id, $category);
                    $this->design->assign('message_success', 'updated');
                }
                // Удаление изображения
                if ($this->request->post('delete_image')) {
                    $this->categories->delete_image($category->id);
                }
                // Загрузка изображения
                $image = $this->request->files('image');
                if (!empty($image['name']) && in_array(strtolower(pathinfo($image['name'], PATHINFO_EXTENSION)), $this->allowed_image_extentions)) {
                    $this->categories->delete_image($category->id);

                    $basename = basename($image['name']);
                    $base = $this->image->correct_filename(pathinfo($basename, PATHINFO_FILENAME));
                    $ext = pathinfo($basename, PATHINFO_EXTENSION);
                    $image_name = $base .'.'.$ext;

                    move_uploaded_file($image['tmp_name'], $this->config->root_dir.$this->config->categories_images_dir.$image_name);
                    $this->categories->update_category($category->id, array('image'=>$image_name));
                }
                $category = $this->categories->get_category(intval($category->id));
            }
        } else {
            $category->id = $this->request->get('id', 'integer');
            $category = $this->categories->get_category($category->id);
        }

        $categories = $this->categories->get_categories_tree();

        $this->design->assign('category', $category);
        $this->design->assign('categories', $categories);
        return $this->design->fetch('category.tpl');
    }
}
