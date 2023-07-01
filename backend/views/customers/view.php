<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

use common\models\User;

/** @var yii\web\View $this */
/** @var common\models\Customers $model */

$this->title = $model->customer_id;
$this->params['breadcrumbs'][] = ['label' => 'Customers', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="customers-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?php
            if (User::ROLE_SUPERADMIN == Yii::$app->user->identity->getRole())
            echo Html::a('Update', ['update', 'customer_id' => $model->customer_id], ['class' => 'btn btn-primary']);
        ?>
        <?php
            if (User::ROLE_SUPERADMIN == Yii::$app->user->identity->getRole())
            echo Html::a('Delete', ['delete', 'customer_id' => $model->customer_id], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => 'Are you sure you want to delete this item?',
                    'method' => 'post',
                ],
            ])
        ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'customer_id',
            'customer_name',
        ],
    ]) ?>

</div>
