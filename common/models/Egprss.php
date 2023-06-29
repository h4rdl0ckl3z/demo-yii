<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "egp_rss".
 *
 * @property int $egp_rss_id
 * @property string $title
 * @property string $link
 * @property string $pubdate
 * @property string $pubtype
 * @property int $customer_id
 *
 * @property Customers $customer
 */
class Egprss extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'egp_rss';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['egp_rss_id', 'title', 'link', 'pubdate', 'pubtype', 'customer_id'], 'required'],
            [['egp_rss_id', 'customer_id'], 'integer'],
            [['pubdate'], 'safe'],
            [['title', 'link'], 'string', 'max' => 255],
            [['pubtype'], 'string', 'max' => 2],
            [['egp_rss_id'], 'unique'],
            [['customer_id'], 'exist', 'skipOnError' => true, 'targetClass' => Customers::class, 'targetAttribute' => ['customer_id' => 'customer_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'egp_rss_id' => 'Egp Rss ID',
            'title' => 'Title',
            'link' => 'Link',
            'pubdate' => 'Pubdate',
            'pubtype' => 'Pubtype',
            'customer_id' => 'Customer ID',
        ];
    }

    /**
     * Gets query for [[Customer]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getCustomer()
    {
        return $this->hasOne(Customers::class, ['customer_id' => 'customer_id']);
    }
}
