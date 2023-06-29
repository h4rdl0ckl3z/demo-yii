<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Egprss;

/**
 * EgprssSearch represents the model behind the search form of `common\models\Egprss`.
 */
class EgprssSearch extends Egprss
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['egp_rss_id', 'customer_id'], 'integer'],
            [['title', 'link', 'pubdate', 'pubtype'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Egprss::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'egp_rss_id' => $this->egp_rss_id,
            'pubdate' => $this->pubdate,
            'customer_id' => $this->customer_id,
        ]);

        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'link', $this->link])
            ->andFilterWhere(['like', 'pubtype', $this->pubtype]);

        return $dataProvider;
    }
}
