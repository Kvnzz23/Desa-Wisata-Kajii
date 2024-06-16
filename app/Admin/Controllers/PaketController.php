<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Paket;

class PaketController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Paket';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Paket());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('type', __('Type'));
        $grid->column('harga', __('Harga'));
        $grid->column('link', __('Link'));
        $grid->column('fasilitas1', __('Fasilitas1'));
        $grid->column('fasilitas2', __('Fasilitas2'));
        $grid->column('fasilitas3', __('Fasilitas3'));
        $grid->column('fasilitas4', __('Fasilitas4'));
        $grid->column('fasilitas5', __('Fasilitas5'));
        $grid->column('fasilitas6', __('Fasilitas6'));
        $grid->column('fasilitas7', __('Fasilitas7'));
        $grid->column('fasilitas8', __('Fasilitas8'));
        $grid->column('fasilitas9', __('Fasilitas9'));
        $grid->column('fasilitas10', __('Fasilitas10'));
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
        $show = new Show(Paket::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('type', __('Type'));
        $show->field('harga', __('Harga'));
        $show->field('link', __('Link'));
        $show->field('fasilitas1', __('Fasilitas1'));
        $show->field('fasilitas2', __('Fasilitas2'));
        $show->field('fasilitas3', __('Fasilitas3'));
        $show->field('fasilitas4', __('Fasilitas4'));
        $show->field('fasilitas5', __('Fasilitas5'));
        $show->field('fasilitas6', __('Fasilitas6'));
        $show->field('fasilitas7', __('Fasilitas7'));
        $show->field('fasilitas8', __('Fasilitas8'));
        $show->field('fasilitas9', __('Fasilitas9'));
        $show->field('fasilitas10', __('Fasilitas10'));
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
        $form = new Form(new Paket());

        $form->text('name', __('Name'));
        $form->text('type', __('Type'));
        $form->text('harga', __('Harga'));
        $form->url('link', __('Link'));
        $form->text('fasilitas1', __('Fasilitas1'));
        $form->text('fasilitas2', __('Fasilitas2'));
        $form->text('fasilitas3', __('Fasilitas3'));
        $form->text('fasilitas4', __('Fasilitas4'));
        $form->text('fasilitas5', __('Fasilitas5'));
        $form->text('fasilitas6', __('Fasilitas6'));
        $form->text('fasilitas7', __('Fasilitas7'));
        $form->text('fasilitas8', __('Fasilitas8'));
        $form->text('fasilitas9', __('Fasilitas9'));
        $form->text('fasilitas10', __('Fasilitas10'));
        $form->image('image', __('Image'));

        return $form;
    }
}
