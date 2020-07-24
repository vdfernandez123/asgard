<?php

namespace app\modules\academico\models;

use yii\data\ArrayDataProvider;
use Yii;

/**
 * This is the model class for table "estudiante".
 *
 * @property int $est_id
 * @property int $per_id
 * @property int $est_usuario_ingreso
 * @property int $est_usuario_modifica
 * @property string $est_estado
 * @property string $est_fecha_creacion
 * @property string $est_fecha_modificacion
 * @property string $est_estado_logico
 *
 * @property Matriculacion[] $matriculacions
 * @property MatriculacionProgramaInscrito[] $matriculacionProgramaInscritos
 */
class Estudiante extends \yii\db\ActiveRecord {

    /**
     * {@inheritdoc}
     */
    public static function tableName() {
        return 'estudiante';
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
            [['per_id', 'est_usuario_ingreso', 'est_estado', 'est_estado_logico'], 'required'],
            [['per_id', 'est_usuario_ingreso', 'est_usuario_modifica'], 'integer'],
            [['est_fecha_creacion', 'est_fecha_modificacion'], 'safe'],
            [['est_estado', 'est_estado_logico'], 'string', 'max' => 1],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels() {
        return [
            'est_id' => 'Est ID',
            'per_id' => 'Per ID',
            'est_usuario_ingreso' => 'Est Usuario Ingreso',
            'est_usuario_modifica' => 'Est Usuario Modifica',
            'est_estado' => 'Est Estado',
            'est_fecha_creacion' => 'Est Fecha Creacion',
            'est_fecha_modificacion' => 'Est Fecha Modificacion',
            'est_estado_logico' => 'Est Estado Logico',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMatriculacions() {
        return $this->hasMany(Matriculacion::className(), ['est_id' => 'est_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMatriculacionProgramaInscritos() {
        return $this->hasMany(MatriculacionProgramaInscrito::className(), ['est_id' => 'est_id']);
    }

    /**
     * Function guardar estudiante
     * @author  Giovanni Vergara <analistadesarrollo02@uteg.edu.ec>
     * @param   
     * @return  $resultData (Retornar el código de estudiante).
     */
    public function insertarEstudiante($per_id, $est_matricula, $est_usuario_ingreso, $est_usuario_modifica, $est_fecha_creacion, $est_fecha_modificacion) {

        $con = \Yii::$app->db_academico;
        $trans = $con->getTransaction(); // se obtiene la transacción actual
        if ($trans !== null) {
            $trans = null; // si existe la transacción entonces no se crea una
        } else {
            $trans = $con->beginTransaction(); // si no existe la transacción entonces se crea una
        }
        $param_sql = "est_estado_logico";
        $bsol_sql = "1";

        $param_sql .= ", est_estado";
        $bsol_sql .= ", 1";
        if (isset($per_id)) {
            $param_sql .= ", per_id";
            $bsol_sql .= ", :per_id";
        }

        if (isset($est_matricula)) {
            $param_sql .= ", est_matricula";
            $bsol_sql .= ", :est_matricula";
        }

        if (isset($est_usuario_ingreso)) {
            $param_sql .= ", est_usuario_ingreso";
            $bsol_sql .= ", :est_usuario_ingreso";
        }

        if (isset($est_usuario_modifica)) {
            $param_sql .= ", est_usuario_modifica";
            $bsol_sql .= ", :est_usuario_modifica";
        }

        if (isset($est_fecha_creacion)) {
            $param_sql .= ", est_fecha_creacion";
            $bsol_sql .= ", :est_fecha_creacion";
        }

        if (isset($est_fecha_modificacion)) {
            $param_sql .= ", est_fecha_modificacion";
            $bsol_sql .= ", :est_fecha_modificacion";
        }


        try {
            $sql = "INSERT INTO " . $con->dbname . ".estudiante ($param_sql) VALUES($bsol_sql)";
            $comando = $con->createCommand($sql);

            if (isset($per_id)) {
                $comando->bindParam(':per_id', $per_id, \PDO::PARAM_INT);
            }

            if (isset($est_matricula)) {
                $comando->bindParam(':est_matricula', $est_matricula, \PDO::PARAM_STR);
            }

            if (isset($est_usuario_ingreso)) {
                $comando->bindParam(':est_usuario_ingreso', $est_usuario_ingreso, \PDO::PARAM_INT);
            }

            if (isset($est_usuario_modifica)) {
                $comando->bindParam(':est_usuario_modifica', $est_usuario_modifica, \PDO::PARAM_INT);
            }

            if (isset($est_fecha_creacion)) {
                $comando->bindParam(':est_fecha_creacion', $est_fecha_creacion, \PDO::PARAM_STR);
            }

            if (isset($est_fecha_modificacion)) {
                $comando->bindParam(':est_fecha_modificacion', $est_fecha_modificacion, \PDO::PARAM_STR);
            }
            $result = $comando->execute();
            if ($trans !== null)
                $trans->commit();
            return $con->getLastInsertID($con->dbname . '.estudiante');
        } catch (Exception $ex) {
            if ($trans !== null)
                $trans->rollback();
            return FALSE;
        }
    }

    /**
     * Function Consultar estudiante existe creado y ya esta matriculado.
     * @author  Giovanni Vergara <analistadesarrollo02@uteg.edu.ec>;
     * @property       
     * @return  
     */
    public function getEstudiantexid($per_id) {
        $con = \Yii::$app->db_academico;
        $estado = 1;

        $sql = "SELECT 	
                        est.est_id as idestudiante                       
                        
                FROM " . $con->dbname . ".estudiante est
                        INNER JOIN " . $con->dbname . ".matriculacion_programa_inscrito mpi ON mpi.est_id = est.est_id
                WHERE   per_id = :per_id                        
                        AND est.est_estado = :estado
                        AND est.est_estado_logico = :estado 
                        AND mpi.mpin_estado = :estado
                        AND mpi.mpin_estado_logico = :estado ";

        $comando = $con->createCommand($sql);
        $comando->bindParam(":estado", $estado, \PDO::PARAM_STR);
        $comando->bindParam(":per_id", $per_id, \PDO::PARAM_INT);
        $resultData = $comando->queryOne();
        return $resultData;
    }

    /**
     * Function Consultar id estudiante segun per_id.
     * @author  Giovanni Vergara <analistadesarrollo02@uteg.edu.ec>;
     * @property       
     * @return  
     */
    public function getEstudiantexperid($per_id) {
        $con = \Yii::$app->db_academico;
        $estado = 1;

        $sql = "SELECT 	
                        est_id                       
                        
                FROM " . $con->dbname . ".estudiante est                       
                WHERE   per_id = :per_id                        
                        AND est_estado = :estado
                        AND est_estado_logico = :estado ";

        $comando = $con->createCommand($sql);
        $comando->bindParam(":estado", $estado, \PDO::PARAM_STR);
        $comando->bindParam(":per_id", $per_id, \PDO::PARAM_INT);
        $resultData = $comando->queryOne();
        return $resultData;
    }

    public function getInfoCarreraEstudiante($est_id, $emp_id) {
        $con = \Yii::$app->db_academico;
        $sql = "
            SELECT
                ea.eaca_nombre AS Carrera,
                ea.eaca_alias AS Alias,
                m.mod_nombre AS Modalidad,
                ea.eaca_alias_resumen AS ResumenCarrera
            FROM
            " . $con->dbname . ".estudiante AS e 
            INNER JOIN " . $con->dbname . ".estudiante_carrera_programa AS ecp ON e.est_id = ecp.est_id
            INNER JOIN " . $con->dbname . ".modalidad_estudio_unidad AS mea ON ecp.meun_id = mea.meun_id
            INNER JOIN " . $con->dbname . ".estudio_academico AS ea ON ea.eaca_id = mea.eaca_id
            -- INNER JOIN " . $con->dbname . ".unidad_academica AS ua ON ua.uaca_id = mea.uaca_id
            INNER JOIN " . $con->dbname . ".modalidad AS m ON m.mod_id = mea.mod_id
            
            WHERE 
                e.est_id = :est_id AND
                mea.emp_id = :emp_id AND
                e.est_estado = 1 AND
                e.est_estado_logico = 1;";
        $comando = $con->createCommand($sql);
        $comando->bindParam(":est_id", $est_id, \PDO::PARAM_INT);
        $comando->bindParam(":emp_id", $emp_id, \PDO::PARAM_INT);
        $resultData = $comando->queryOne();
        return $resultData;
    }

    public function getCategoryCost() {
        $con = \Yii::$app->db_sea;
        $sql = "SELECT COD_CAT AS Cod, NOM_CAT AS Nombre, VAL_ARA AS Precio FROM " . $con->dbname . ".CAT_ARANCEL WHERE EST_LOG = 1";
        $comando = $con->createCommand($sql);
        $resultData = $comando->queryAll();
        return $resultData;
    }

    public function getGastosMatriculaOtros($codMod) {
        $con = \Yii::$app->db_sea;
        $today = date('Y-m-d');
        $sql = "SELECT 
                    COD_ART AS Cod, 
                    DES_COM AS Nombre,
                    P_VENTA AS Precio,
                    '' AS Bloque,
                    '' AS Periodo,
                    '' AS FechaIniReg,
                    '' AS FechaFinReg
                FROM " . $con->dbname . ".IG0020
                WHERE 
                    TIP_PRO = 'A' 
                    AND (COD_ART = 'ASOEST')
                UNION ALL
                SELECT 
                    COD_ART AS Cod, 
                    '' AS Nombre, 
                    VALOR_P AS Precio,
                    NUM_BLO AS Bloque,
                    TIP_PER AS Periodo,
                    FREG_INI AS FechaIniReg,
                    FREG_FIN AS FechaFinReg
                FROM " . $con->dbname . ".ADM_ITEMS
                WHERE 
                    COD_CEN = '$codMod' AND
                    COD_ART = 'MAT-GRAD'
                UNION ALL
                SELECT 
                    COD_ART AS Cod, 
                    '' AS Nombre, 
                    VALOR_P AS Precio,
                    NUM_BLO AS Bloque,
                    TIP_PER AS Periodo,
                    FREG_INI AS FechaIniReg,
                    FREG_FIN AS FechaFinReg
                FROM pruebasea.ADM_ITEMS
                WHERE 
                    COD_CEN = 'G-004' AND
                    (FREG_INI <= '$today' AND FREG_FIN >= '$today') AND
                    COD_ART = 'VARIOS'
                ";
        $comando = $con->createCommand($sql);
        $resultData = $comando->queryAll();
        return $resultData;
    }

    /**
     * Function guardar estudiante carrera programa
     * @author  Giovanni Vergara <analistadesarrollo02@uteg.edu.ec>
     * @param   
     * @return  $resultData (Retornar el código de ecpr_id).
     */
    public function insertarEstcarreraprog($est_id, $meun_id, $ecpr_fecha_registro, $ecpr_usuario_ingreso, $ecpr_fecha_creacion) {

        $con = \Yii::$app->db_academico;
        $trans = $con->getTransaction(); // se obtiene la transacción actual
        if ($trans !== null) {
            $trans = null; // si existe la transacción entonces no se crea una
        } else {
            $trans = $con->beginTransaction(); // si no existe la transacción entonces se crea una
        }
        $param_sql = "ecpr_estado_logico";
        $bsol_sql = "1";

        $param_sql .= ", ecpr_estado";
        $bsol_sql .= ", 1";
        if (isset($est_id)) {
            $param_sql .= ", est_id";
            $bsol_sql .= ", :est_id";
        }

        if (isset($meun_id)) {
            $param_sql .= ", meun_id";
            $bsol_sql .= ", :meun_id";
        }

        if (isset($ecpr_fecha_registro)) {
            $param_sql .= ", ecpr_fecha_registro";
            $bsol_sql .= ", :ecpr_fecha_registro";
        }

        if (isset($ecpr_usuario_ingreso)) {
            $param_sql .= ", ecpr_usuario_ingreso";
            $bsol_sql .= ", :ecpr_usuario_ingreso";
        }

        if (isset($ecpr_fecha_creacion)) {
            $param_sql .= ", ecpr_fecha_creacion";
            $bsol_sql .= ", :ecpr_fecha_creacion";
        }


        try {
            $sql = "INSERT INTO " . $con->dbname . ".estudiante_carrera_programa ($param_sql) VALUES($bsol_sql)";
            $comando = $con->createCommand($sql);

            if (isset($est_id)) {
                $comando->bindParam(':est_id', $est_id, \PDO::PARAM_INT);
            }

            if (isset($meun_id)) {
                $comando->bindParam(':meun_id', $meun_id, \PDO::PARAM_INT);
            }

            if (isset($ecpr_fecha_registro)) {
                $comando->bindParam(':ecpr_fecha_registro', $ecpr_fecha_registro, \PDO::PARAM_STR);
            }

            if (isset($ecpr_usuario_ingreso)) {
                $comando->bindParam(':ecpr_usuario_ingreso', $ecpr_usuario_ingreso, \PDO::PARAM_INT);
            }

            if (isset($ecpr_fecha_creacion)) {
                $comando->bindParam(':ecpr_fecha_creacion', $ecpr_fecha_creacion, \PDO::PARAM_STR);
            }
            $result = $comando->execute();
            if ($trans !== null)
                $trans->commit();
            return $con->getLastInsertID($con->dbname . '.estudiante_carrera_programa');
        } catch (Exception $ex) {
            if ($trans !== null)
                $trans->rollback();
            return FALSE;
        }
    }

    /**
     * Function consultar informacion del estudiantes
     * @author  Giovanni Vergara <analistadesarrollo02@uteg.edu.ec>         
     * @property  
     * @return  
     */
    public function consultarEstudiante($arrFiltro = array(), $onlyData = false) {
        $con = \Yii::$app->db_academico;
        $con1 = \Yii::$app->db_asgard;
        if (isset($arrFiltro) && count($arrFiltro) > 0) {
            if ($arrFiltro['search'] != "") {
                $str_search .= "(pers.per_pri_nombre like :estudiante OR ";
                $str_search .= "pers.per_seg_nombre like :estudiante OR ";
                $str_search .= "pers.per_pri_apellido like :estudiante OR ";
                $str_search .= "pers.per_seg_nombre like :estudiante  OR ";
                $str_search .= "pers.per_cedula like :estudiante)  AND ";
            }
            if ($arrFiltro['f_ini'] != "" && $arrFiltro['f_fin'] != "") {
                $str_search .= "estu.est_fecha_creacion >= :fec_ini AND ";
                $str_search .= "estu.est_fecha_creacion <= :fec_fin AND ";
            }
            if ($arrFiltro['unidad'] != "" && $arrFiltro['unidad'] > 0) {
                $str_search .= " meun.uaca_id  = :unidad AND ";
            }
            if ($arrFiltro['modalidad'] != "" && $arrFiltro['modalidad'] > 0) {
                $str_search .= " meun.mod_id  = :modalidad AND ";
            }
            if ($arrFiltro['carrera'] != "" && $arrFiltro['carrera'] > 0) {
                $str_search .= " meun.eaca_id  = :carrera AND ";
            }
        }
        $sql = "SELECT 
	           -- pers.per_id,
                      concat(pers.per_pri_nombre, ' ', pers.per_pri_apellido) as nombres,
                      pers.per_cedula as dni,
                      IFNULL(estu.est_matricula, '') as matricula,
                      IFNULL(estu.est_categoria, '') as categoria,
                      IFNULL(DATE_FORMAT(estu.est_fecha_creacion,'%Y-%m-%d'), '') as fecha_creacion,
                      IFNULL(unid.uaca_nombre, '') as undidad,
                      IFNULL(moda.mod_nombre, '') as modalidad,
                      IFNULL(esac.eaca_nombre, '') as carrera
                FROM  " . $con->dbname . ".estudiante estu
                RIGHT JOIN " . $con1->dbname . ".persona pers ON pers.per_id = estu.per_id		
                LEFT JOIN " . $con->dbname . ".estudiante_carrera_programa ecpr ON ecpr.est_id = estu.est_id
                LEFT JOIN " . $con->dbname . ".modalidad_estudio_unidad meun ON meun.meun_id = ecpr.meun_id	
                LEFT JOIN " . $con->dbname . ".unidad_academica unid ON unid.uaca_id = meun.uaca_id
                LEFT JOIN " . $con->dbname . ".modalidad moda ON moda.mod_id = meun.mod_id
                LEFT JOIN " . $con->dbname . ".estudio_academico esac ON esac.eaca_id = meun.eaca_id
                WHERE 
                $str_search
                pers.per_id > 1000                
                ORDER BY estu.est_fecha_creacion DESC";

        $comando = $con->createCommand($sql);
        //$comando->bindParam(":estado", $estado, \PDO::PARAM_STR);
        if (isset($arrFiltro) && count($arrFiltro) > 0) {
            if ($arrFiltro['search'] != "") {
                $search_cond = "%" . $arrFiltro["search"] . "%";
                $comando->bindParam(":estudiante", $search_cond, \PDO::PARAM_STR);
            }
            if ($arrFiltro['f_ini'] != "" && $arrFiltro['f_fin'] != "") {
                $fecha_ini = $arrFiltro["f_ini"] . " 00:00:00";
                $fecha_fin = $arrFiltro["f_fin"] . " 23:59:59";
                $comando->bindParam(":fec_ini", $fecha_ini, \PDO::PARAM_STR);
                $comando->bindParam(":fec_fin", $fecha_fin, \PDO::PARAM_STR);
            }
            if ($arrFiltro['unidad'] != "" && $arrFiltro['unidad'] > 0) {
                $unidad = $arrFiltro["unidad"];
                $comando->bindParam(":unidad", $unidad, \PDO::PARAM_INT);
            }
            if ($arrFiltro['modalidad'] != "" && $arrFiltro['modalidad'] > 0) {
                $modalidad = $arrFiltro["modalidad"];
                $comando->bindParam(":modalidad", $modalidad, \PDO::PARAM_INT);
            }
            if ($arrFiltro['carrera'] != "" && $arrFiltro['carrera'] > 0) {
                $carrera = $arrFiltro["carrera"];
                $comando->bindParam(":carrera", $carrera, \PDO::PARAM_INT);
            }
        }
        $resultData = $comando->queryAll();
        $dataProvider = new ArrayDataProvider([
            'key' => 'id',
            'allModels' => $resultData,
            'pagination' => [
                'pageSize' => Yii::$app->params["pageSize"],
            ],
            'sort' => [
                'attributes' => [
                ],
            ],
        ]);
        if ($onlyData) {
            return $resultData;
        } else {
            return $dataProvider;
        }
    }

    /**
     * Function Consultar estudiante existe creado en estudiante_carrera_programa.
     * @author  Giovanni Vergara <analistadesarrollo02@uteg.edu.ec>;
     * @property       
     * @return  
     */
    public function consultarEstcarreraprogrma($est_id) {
        $con = \Yii::$app->db_academico;
        $estado = 1;

        $sql = "SELECT 	
                        ecpr_id as idestcarrera                       
                        
                FROM " . $con->dbname . ".estudiante_carrera_programa                        
                WHERE   est_id = :est_id                        
                        AND ecpr_estado = :estado
                        AND ecpr_estado_logico = :estado ";

        $comando = $con->createCommand($sql);
        $comando->bindParam(":estado", $estado, \PDO::PARAM_STR);
        $comando->bindParam(":est_id", $est_id, \PDO::PARAM_INT);
        $resultData = $comando->queryOne();
        return $resultData;
    }

}
