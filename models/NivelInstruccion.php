<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "nivel_instruccion".
 *
 * @property integer $nins_id
 * @property string $nins_nombre
 * @property string $nins_descripcion
 * @property string $nins_estado
 * @property string $nins_fecha_creacion
 * @property string $nins_fecha_modificacion
 * @property string $nins_estado_logico
 */
class NivelInstruccion extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        //return 'nivel_instruccion';
        return \Yii::$app->db_academico->dbname.'.nivel_instruccion';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
                [['nins_estado', 'nins_estado_logico'], 'required'],
                [['nins_fecha_creacion', 'nins_fecha_modificacion'], 'safe'],
                [['nins_nombre'], 'string', 'max' => 250],
                [['nins_descripcion'], 'string', 'max' => 500],
                [['nins_estado', 'nins_estado_logico'], 'string', 'max' => 1],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'nins_id' => 'Nins ID',
            'nins_nombre' => 'Nins Nombre',
            'nins_descripcion' => 'Nins Descripcion',
            'nins_estado' => 'Nins Estado',
            'nins_fecha_creacion' => 'Nins Fecha Creacion',
            'nins_fecha_modificacion' => 'Nins Fecha Modificacion',
            'nins_estado_logico' => 'Nins Estado Logico',
        ];
    }

}
