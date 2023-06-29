<?php

namespace backend\controllers;

use common\models\Egprss;
use backend\models\EgprssSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * EgprssController implements the CRUD actions for Egprss model.
 */
class EgprssController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all Egprss models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new EgprssSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Egprss model.
     * @param int $egp_rss_id Egp Rss ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($egp_rss_id)
    {
        return $this->render('view', [
            'model' => $this->findModel($egp_rss_id),
        ]);
    }

    /**
     * Creates a new Egprss model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new Egprss();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'egp_rss_id' => $model->egp_rss_id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Egprss model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $egp_rss_id Egp Rss ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($egp_rss_id)
    {
        $model = $this->findModel($egp_rss_id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'egp_rss_id' => $model->egp_rss_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Egprss model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $egp_rss_id Egp Rss ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($egp_rss_id)
    {
        $this->findModel($egp_rss_id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Egprss model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $egp_rss_id Egp Rss ID
     * @return Egprss the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($egp_rss_id)
    {
        if (($model = Egprss::findOne(['egp_rss_id' => $egp_rss_id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
