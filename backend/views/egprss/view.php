<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var common\models\Egprss $model */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Egprsses', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="egprss-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'egp_rss_id' => $model->egp_rss_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'egp_rss_id' => $model->egp_rss_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'egp_rss_id',
            'title',
            'link',
            'pubdate',
            'pubtype',
            'customer_id',
        ],
    ]) ?>

</div>
