<?php

namespace app\modules\academico\models;

use yii\data\ArrayDataProvider;
use Yii;

/**
 * This is the model class for table "estudio_academico".
 *
 * @property int $eaca_id
 * @property int $teac_id
 * @property string $eaca_nombre
 * @property string $eaca_descripcion
 * @property string $eaca_alias
 * @property int $eaca_usuario_ingreso
 * @property int $eaca_usuario_modifica
 * @property string $eaca_estado
 * @property string $eaca_fecha_creacion
 * @property string $eaca_fecha_modificacion
 * @property string $eaca_estado_logico
 *
 * @property TipoEstudioAcademico $teac
 * @property MallaAcademica[] $mallaAcademicas
 * @property ModalidadEstudioUnidad[] $modalidadEstudioUnidads
 */
class EstudioAcademico extends \app\modules\admision\components\CActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'estudio_academico';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb()
    {
        return Yii::$app->get('db_academico');
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['teac_id', 'eaca_nombre', 'eaca_descripcion', 'eaca_alias', 'eaca_usuario_ingreso', 'eaca_estado', 'eaca_estado_logico'], 'required'],
            [['teac_id', 'eaca_usuario_ingreso', 'eaca_usuario_modifica'], 'integer'],
            [['eaca_fecha_creacion', 'eaca_fecha_modificacion'], 'safe'],
            [['eaca_nombre', 'eaca_alias'], 'string', 'max' => 300],
            [['eaca_descripcion'], 'string', 'max' => 500],
            [['eaca_estado', 'eaca_estado_logico'], 'string', 'max' => 1],
            [['teac_id'], 'exist', 'skipOnError' => true, 'targetClass' => TipoEstudioAcademico::className(), 'targetAttribute' => ['teac_id' => 'teac_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'eaca_id' => 'Eaca ID',
            'teac_id' => 'Teac ID',
            'eaca_nombre' => 'Eaca Nombre',
            'eaca_descripcion' => 'Eaca Descripcion',
            'eaca_alias' => 'Eaca Alias',
            'eaca_usuario_ingreso' => 'Eaca Usuario Ingreso',
            'eaca_usuario_modifica' => 'Eaca Usuario Modifica',
            'eaca_estado' => 'Eaca Estado',
            'eaca_fecha_creacion' => 'Eaca Fecha Creacion',
            'eaca_fecha_modificacion' => 'Eaca Fecha Modificacion',
            'eaca_estado_logico' => 'Eaca Estado Logico',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTeac()
    {
        return $this->hasOne(TipoEstudioAcademico::className(), ['teac_id' => 'teac_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMallaAcademicas()
    {
        return $this->hasMany(MallaAcademica::className(), ['eaca_id' => 'eaca_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getModalidadEstudioUnidads()
    {
        return $this->hasMany(ModalidadEstudioUnidad::className(), ['eaca_id' => 'eaca_id']);
    }
    
    public function obtenerCarreraXFacu($nint_id) {
        $con = \Yii::$app->db_academico;
        $estado = 1;
        $sql = "SELECT 
                    car.car_id AS id,
                    car.car_nombre AS value  
               FROM " . $con->dbname . ".modalidad_carrera_nivel mcn
                    INNER JOIN " . $con->dbname . ".carrera as car on car.car_id = mcn.car_id
               WHERE  car.car_estado_logico = :estado AND
                    car.car_estado = :estado AND
                    car.car_estado_logico=:estado AND 
                    mcn.mcni_estado=:estado AND
                    mcn.mcni_estado_logico=:estado AND
                    mcn.mod_id=:nint_id
               ORDER BY value asc";
        $comando = $con->createCommand($sql);
        $comando->bindParam(":estado", $estado, \PDO::PARAM_STR);
        $comando->bindParam(":nint_id", $nint_id, \PDO::PARAM_INT);
        $resultData = $comando->queryAll();
        return $resultData;
    }

    public function obtenerNombreCarrera($carrera_id) {
        $con = \Yii::$app->db_academico;
        $estado = 1;
        $sql = "SELECT                     
                    car.car_nombre 
               FROM " . $con->dbname . ".carrera car                    
               WHERE car.car_id = :carrera_id AND 
                    car.car_estado = :estado AND
                    car.car_estado_logico=:estado";
        $comando = $con->createCommand($sql);
        $comando->bindParam(":estado", $estado, \PDO::PARAM_STR);
        $comando->bindParam(":carrera_id", $carrera_id, \PDO::PARAM_INT);
        $resultData = $comando->queryOne();
        return $resultData;
    }

    /* Esta funcion es para poder realizar la maquetacion de la asignacion de materia, puesto que aun 
     * no se cuenta con su propio modelo, una vez realiazado el modelo , pasarlo alli y borrar de aqui
      Giovanni Vergara Zárate 14/03/2018 13:58 */

    /**
     * Function Obtiene listado de materias
     * @author Giovanni Ver <analistadesarrollo01@uteg.edu.ec>;
     * @param
     * @return
     */
    public function listadoMateria() {
        $con = \Yii::$app->db_academico;
        $estado = 1;


        $sql = "SELECT  asi_id as id, 
                        asi_nombre as nombre_materia                  
                FROM "
                . $con->dbname . ".asignatura 
                WHERE   asi_estado = :estado AND
                        asi_estado_logico = :estado
                ORDER BY nombre_materia asc";

        $comando = $con->createCommand($sql);
        $comando->bindParam(":estado", $estado, \PDO::PARAM_STR);
        $resultData = $comando->queryAll();
        $dataProvider = new ArrayDataProvider([
            'key' => 'id',
            'allModels' => $resultData,
            'pagination' => [
                'pageSize' => Yii::$app->params["pageSize"],
            ],
            'sort' => [
                'attributes' => [],
            ],
        ]);

        if ($onlyData) {
            return $resultData;
        } else {
            return $dataProvider;
        }
    }

    public function listadoAreaConocimiento() {
        $con = \Yii::$app->db_academico;
        $estado = 1;


        $sql = "SELECT  acon_id as id, 
                        acon_nombre as area_conocimiento                  
                FROM "
                . $con->dbname . ".area_conocimiento 
                WHERE   acon_estado = :estado AND
                        acon_estado_logico = :estado
                ORDER BY area_conocimiento asc";

        $comando = $con->createCommand($sql);
        $comando->bindParam(":estado", $estado, \PDO::PARAM_STR);
        $resultData = $comando->queryAll();
        $dataProvider = new ArrayDataProvider([
            'key' => 'id',
            'allModels' => $resultData,
            'pagination' => [
                'pageSize' => Yii::$app->params["pageSize"],
            ],
            'sort' => [
                'attributes' => [],
            ],
        ]);

        if ($onlyData) {
            return $resultData;
        } else {
            return $dataProvider;
        }
    }

    /**
     * Function obtener Facultad segun nivel interes estudio
     * @author  
     * @property       
     * @return  
     */
    public function obtenerFacultad($nivelinteres) {
        $con = \Yii::$app->db_academico;
        $estado = 1;
        $sql = "SELECT 
                    fact.fac_id as id,
                    fact.fac_nombre as name
                FROM 
                    " . $con->dbname . ".facultad as fact            
                WHERE   
                    fact.nint_id=:nivelinteres AND
                    fact.fac_estado_logico=:estado AND 
                    fact.fac_estado=:estado
                ORDER BY name asc";
        $comando = $con->createCommand($sql);
        $comando->bindParam(":estado", $estado, \PDO::PARAM_STR);
        $comando->bindParam(":nivelinteres", $nivelinteres, \PDO::PARAM_INT);
        $resultData = $comando->queryAll();
        return $resultData;
    }
    
    /**
     * Function obtener consultarCarrera 
     * @author      Grace Viteri <analistadesarrollo01@uteg.edu.ec>
     * @property       
     * @return  
     */
    public function consultarCarrera() {
        $con = \Yii::$app->db_academico;
        $estado = 1;
        $sql = "SELECT 
                    eac.eaca_id AS id,
                    eac.eaca_nombre AS value  
               FROM " . $con->dbname . ".estudio_academico eac                    
               WHERE  eac.eaca_estado_logico = :estado AND
                      eac.eaca_estado = :estado
               ORDER BY 2 ";
        $comando = $con->createCommand($sql);
        $comando->bindParam(":estado", $estado, \PDO::PARAM_STR);        
        $resultData = $comando->queryAll();
        return $resultData;
    }
    
     /** Se debe cambiar esta funcion que regrese el codigo de area ***ojo***
     * Function consultarIdsCarrera
     * @author  Byron Villacreses <developer@uteg.edu.ec>
     * @property integer car_id      
     * @return  
     */
    public static function consultarIdsEstudioAca($TextAlias) {
        $con = \Yii::$app->db_academico;        
        $sql = "SELECT eaca_id Ids 
                    FROM " . $con->dbname . ".estudio_academico  
                WHERE eaca_estado=1 AND eaca_alias=:eaca_alias ";                
        $comando = $con->createCommand($sql);
        $comando->bindParam(":eaca_alias", $TextAlias, \PDO::PARAM_STR);
        //return $comando->queryAll();
        $rawData=$comando->queryScalar();
        if ($rawData === false)
            return 0; //en caso de que existe problema o no retorne nada tiene 1 por defecto 
        return $rawData;
    }    
    
    /** Se debe cambiar esta funcion que regrese el codigo de area ***ojo***
     * Function consultarIdsCarrera
     * @author  Byron Villacreses <developer@uteg.edu.ec>
     * @property integer car_id      
     * @return  
     */
    public static function consultarIdsModEstudio($CodEmp,$TextAlias) {
        $con = \Yii::$app->db_academico;                
        $sql = "SELECT A.mest_id Ids 
                    FROM " . $con->dbname . ".modulo_estudio A
                            INNER JOIN 	" . $con->dbname . ".modulo_estudio_empresa B
                                    ON A.mest_id=B.mest_id
            WHERE A.mest_estado=1 AND B.emp_id=:emp_id AND A.mest_alias=:mest_alias;";
        
        $comando = $con->createCommand($sql);
        $comando->bindParam(":mest_alias", $TextAlias, \PDO::PARAM_STR);
        $comando->bindParam(":emp_id", $CodEmp, \PDO::PARAM_INT);
        //return $comando->queryAll();
        $rawData=$comando->queryScalar();
        if ($rawData === false)
            return 0; //en caso de que existe problema o no retorne nada tiene 1 por defecto 
        return $rawData;
    }
}
