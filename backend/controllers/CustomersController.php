<?php

namespace backend\controllers;

use common\components\UserRole;
use common\models\Customers;
use common\models\User;
use backend\models\CustomersSearch;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * CustomersController implements the CRUD actions for Customers model.
 */
class CustomersController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'access' => [
                    'class' => AccessControl::class,
                    'ruleConfig' => [
                        'class' => UserRole::className(),
                    ],
                    'only' => ['create', 'update', 'index', 'delete'],
                    'rules' => [
                        [
                            'actions' => ['create', 'update', 'index', 'delete'],
                            'allow' => true,
                            'roles' => [
                                User::ROLE_SUPERADMIN,
                                // User::ROLE_ADMIN
                            ],
                        ],
                        [
                            'actions' => ['index'],
                            'allow' => true,
                            'roles' => [
                                User::ROLE_USER,
                            ],
                        ],
                    ],
                ],
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
     * Lists all Customers models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new CustomersSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Customers model.
     * @param int $customer_id Customer ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($customer_id)
    {
        return $this->render('view', [
            'model' => $this->findModel($customer_id),
        ]);
    }

    /**
     * Creates a new Customers model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new Customers();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'customer_id' => $model->customer_id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Customers model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $customer_id Customer ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($customer_id)
    {
        $model = $this->findModel($customer_id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'customer_id' => $model->customer_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Customers model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $customer_id Customer ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($customer_id)
    {
        $this->findModel($customer_id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Customers model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $customer_id Customer ID
     * @return Customers the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($customer_id)
    {
        if (($model = Customers::findOne(['customer_id' => $customer_id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
