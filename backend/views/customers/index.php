<?php

use common\models\Customers;
use common\models\User;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var backend\models\CustomersSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Customers';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="customers-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?php
            if (User::ROLE_SUPERADMIN == Yii::$app->user->identity->getRole())
                echo Html::a('Create Customers', ['create'], ['class' => 'btn btn-success']);
        ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'customer_id',
            'customer_name',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Customers $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'customer_id' => $model->customer_id]);
                 }
            ],
        ],
    ]); ?>

</div>