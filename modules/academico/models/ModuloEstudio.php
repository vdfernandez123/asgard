<?php

namespace app\modules\academico\models;

use Yii;

/**
 * This is the model class for table "modulo_estudio".
 *
 * @property int $mest_id
 * @property int $uaca_id
 * @property int $mod_id
 * @property string $mest_nombre
 * @property string $mest_descripcion
 * @property int $mest_usuario_ingreso
 * @property int $mest_usuario_modifica
 * @property string $mest_estado
 * @property string $mest_fecha_creacion
 * @property string $mest_fecha_modificacion
 * @property string $mest_estado_logico
 *
 * @property AsignacionParalelo[] $asignacionParalelos
 * @property UnidadAcademica $uaca
 * @property Modalidad $mod
 */
class ModuloEstudio extends \app\modules\academico\components\CActiveRecord {

    /**
     * {@inheritdoc}
     */
    public static function tableName() {
        return 'modulo_estudio';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb() {
        return Yii::$app->get('db_academico');
    }

    /**
     * {@inheritdoc}
     */
    public function rules() {
        return [
            [['uaca_id', 'mod_id', 'mest_nombre', 'mest_descripcion', 'mest_usuario_ingreso', 'mest_estado', 'mest_estado_logico'], 'required'],
            [['uaca_id', 'mod_id', 'mest_usuario_ingreso', 'mest_usuario_modifica'], 'integer'],
            [['mest_fecha_creacion', 'mest_fecha_modificacion'], 'safe'],
            [['mest_nombre', 'mest_descripcion'], 'string', 'max' => 300],
            [['mest_estado', 'mest_estado_logico'], 'string', 'max' => 1],
            [['uaca_id'], 'exist', 'skipOnError' => true, 'targetClass' => UnidadAcademica::className(), 'targetAttribute' => ['uaca_id' => 'uaca_id']],
            [['mod_id'], 'exist', 'skipOnError' => true, 'targetClass' => Modalidad::className(), 'targetAttribute' => ['mod_id' => 'mod_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels() {
        return [
            'mest_id' => 'Mest ID',
            'uaca_id' => 'Uaca ID',
            'mod_id' => 'Mod ID',
            'mest_nombre' => 'Mest Nombre',
            'mest_descripcion' => 'Mest Descripcion',
            'mest_usuario_ingreso' => 'Mest Usuario Ingreso',
            'mest_usuario_modifica' => 'Mest Usuario Modifica',
            'mest_estado' => 'Mest Estado',
            'mest_fecha_creacion' => 'Mest Fecha Creacion',
            'mest_fecha_modificacion' => 'Mest Fecha Modificacion',
            'mest_estado_logico' => 'Mest Estado Logico',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAsignacionParalelos() {
        return $this->hasMany(AsignacionParalelo::className(), ['mest_id' => 'mest_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUaca() {
        return $this->hasOne(UnidadAcademica::className(), ['uaca_id' => 'uaca_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMod() {
        return $this->hasOne(Modalidad::className(), ['mod_id' => 'mod_id']);
    }

    /**
     * Function obtener cursos de Educación Continua y Centro de Idiomas según unidad academica y modalidad.
     * @author  Grace Viteri <analistadesarrollo01@uteg.edu.ec>;
     * @property       
     * @return  
     */
    public function consultarCursoModalidad($unidad, $modalidad) {
        $con = \Yii::$app->db_academico;
        $estado = 1;

        $sql = "SELECT me.mest_id as id, mest_nombre as name
                    FROM " . $con->dbname . ".modulo_estudio me inner join " . $con->dbname . ".modalidad m
                             on m.mod_id = me.mod_id
                    WHERE me.uaca_id = :unidad
                    and me.mod_id = :modalidad
                    and me.mest_estado = :estado
                    and me.mest_estado_logico = :estado
                    and m.mod_estado = :estado
                    and m.mod_estado_logico = :estado";

        $comando = $con->createCommand($sql);
        $comando->bindParam(":estado", $estado, \PDO::PARAM_STR);
        $comando->bindParam(":unidad", $unidad, \PDO::PARAM_INT);
        $comando->bindParam(":modalidad", $modalidad, \PDO::PARAM_INT);
        $resultData = $comando->queryAll();
        return $resultData;
    }

    /**
     * Function obtener cursos de Educación Continua y Centro de Idiomas según empresa.
     * @author  Giovanni Vergara <analistadesarrollo02@uteg.edu.ec>;
     * @property       
     * @return  
     */
    public function consultarEstudioEmpresa($emp_id) {
        $con = \Yii::$app->db_academico;
        $estado = 1;

        $sql = "SELECT 
                    mes.mest_id as id, 
                    mes.mest_nombre as name
                    FROM 
                    " . $con->dbname . ".modulo_estudio_empresa mee "
                    . "inner join " . $con->dbname . ".modulo_estudio mes on mes.mest_id = mee.mest_id
                    WHERE                     
                    emp_id = :emp_id AND
                    mes.mest_estado_logico= :estado AND
                    mes.mest_estado= :estado AND
                    mee.meem_estado_logico = :estado AND
                    mee.meem_estado = :estado";

        $comando = $con->createCommand($sql);
        $comando->bindParam(":estado", $estado, \PDO::PARAM_STR);
        $comando->bindParam(":emp_id", $emp_id, \PDO::PARAM_INT);       
        $resultData = $comando->queryAll();
        return $resultData;
    }

}