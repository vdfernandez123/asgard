<?php

namespace app\modules\financiero\models;

use Yii;

/**
 * This is the model class for table "forma_pago".
 *
 * @property int $fpag_id
 * @property string $fpag_nombre
 * @property string $fpag_descripcion
 * @property string $fpag_distintivo
 * @property int $fpag_usu_ingreso
 * @property int $fpag_usu_modifica
 * @property string $fpag_estado
 * @property string $fpag_fecha_creacion
 * @property string $fpag_fecha_modificacion
 * @property string $fpag_estado_logico
 *
 * @property InfoCargaPrepago[] $infoCargaPrepagos
 * @property RegistroPago[] $registroPagos
 * @property RegistroPagoFactura[] $registroPagoFacturas
 */
class FormaPago extends \app\modules\financiero\components\CActiveRecord 
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'forma_pago';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb() {
        return Yii::$app->get('db_facturacion');
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fpag_nombre', 'fpag_descripcion', 'fpag_usu_ingreso', 'fpag_estado'], 'required'],
            [['fpag_usu_ingreso', 'fpag_usu_modifica'], 'integer'],
            [['fpag_fecha_creacion', 'fpag_fecha_modificacion'], 'safe'],
            [['fpag_nombre'], 'string', 'max' => 200],
            [['fpag_descripcion'], 'string', 'max' => 500],
            [['fpag_distintivo', 'fpag_estado', 'fpag_estado_logico'], 'string', 'max' => 1],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'fpag_id' => 'Fpag ID',
            'fpag_nombre' => 'Fpag Nombre',
            'fpag_descripcion' => 'Fpag Descripcion',
            'fpag_distintivo' => 'Fpag Distintivo',
            'fpag_usu_ingreso' => 'Fpag Usu Ingreso',
            'fpag_usu_modifica' => 'Fpag Usu Modifica',
            'fpag_estado' => 'Fpag Estado',
            'fpag_fecha_creacion' => 'Fpag Fecha Creacion',
            'fpag_fecha_modificacion' => 'Fpag Fecha Modificacion',
            'fpag_estado_logico' => 'Fpag Estado Logico',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getInfoCargaPrepagos()
    {
        return $this->hasMany(InfoCargaPrepago::className(), ['fpag_id' => 'fpag_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRegistroPagos()
    {
        return $this->hasMany(RegistroPago::className(), ['fpag_id' => 'fpag_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRegistroPagoFacturas()
    {
        return $this->hasMany(RegistroPagoFactura::className(), ['fpag_id' => 'fpag_id']);
    }
}