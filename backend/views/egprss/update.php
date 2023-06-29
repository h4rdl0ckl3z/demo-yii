<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\Egprss $model */

$this->title = 'Update Egprss: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Egprsses', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'egp_rss_id' => $model->egp_rss_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="egprss-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
