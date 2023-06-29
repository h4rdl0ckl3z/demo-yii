<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "customers".
 *
 * @property int $customer_id
 * @property string $customer_name
 *
 * @property EgpRss[] $egpRsses
 */
class Customers extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'customers';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['customer_id', 'customer_name'], 'required'],
            [['customer_id'], 'integer'],
            [['customer_name'], 'string', 'max' => 255],
            [['customer_id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'customer_id' => 'Customer ID',
            'customer_name' => 'Customer Name',
        ];
    }

    /**
     * Gets query for [[EgpRsses]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getEgpRsses()
    {
        return $this->hasMany(EgpRss::class, ['customer_id' => 'customer_id']);
    }
}
