<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Homestay;

class HomestayController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Homestay';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Homestay());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('harga', __('Harga'));
        $grid->column('link', __('Link'));
        $grid->column('fasilitas1', __('Fasilitas1'));
        $grid->column('fasilitas2', __('Fasilitas2'));
        $grid->column('fasilitas3', __('Fasilitas3'));
        $grid->column('fasilitas4', __('Fasilitas4'));
        $grid->column('fasilitas5', __('Fasilitas5'));
        $grid->column('fasilitas6', __('Fasilitas6'));
        $grid->column('image')->image();
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Homestay::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('harga', __('Harga'));
        $show->field('link', __('Link'));
        $show->field('fasilitas1', __('Fasilitas1'));
        $show->field('fasilitas2', __('Fasilitas2'));
        $show->field('fasilitas3', __('Fasilitas3'));
        $show->field('fasilitas4', __('Fasilitas4'));
        $show->field('fasilitas5', __('Fasilitas5'));
        $show->field('fasilitas6', __('Fasilitas6'));
        $show->field('image', __('Image'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Homestay());

        $form->text('name', __('Name'));
        $form->text('harga', __('Harga'));
        $form->url('link', __('Link'));
        $form->text('fasilitas1', __('Fasilitas1'));
        $form->text('fasilitas2', __('Fasilitas2'));
        $form->text('fasilitas3', __('Fasilitas3'));
        $form->text('fasilitas4', __('Fasilitas4'));
        $form->text('fasilitas5', __('Fasilitas5'));
        $form->text('fasilitas6', __('Fasilitas6'));
        $form->image('image', __('Image'));

        return $form;
    }
}
