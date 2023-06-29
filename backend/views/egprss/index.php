<?php

use common\models\Egprss;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var backend\models\EgprssSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Egprsses';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="egprss-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Egprss', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'egp_rss_id',
            'title',
            'link',
            'pubdate',
            'pubtype',
            // 'customer_id',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Egprss $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'egp_rss_id' => $model->egp_rss_id]);
                 }
            ],
        ],
    ]); ?>


</div>
