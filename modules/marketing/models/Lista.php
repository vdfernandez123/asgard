<?php

namespace app\modules\marketing\models;
use yii\data\ArrayDataProvider;
use Yii;

/**
 * This is the model class for table "lista".
 *
 * @property int $lis_id
 * @property int $eaca_id
 * @property int $mest_id
 * @property string $lis_nombre
 * @property string $lis_descripcion
 * @property string $lis_estado
 * @property string $lis_fecha_creacion
 * @property string $lis_fecha_modificacion
 * @property string $lis_estado_logico
 *
 * @property ListaSuscriptor[] $listaSuscriptors
 * @property Programacion[] $programacions
 */
class Lista extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'lista';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb()
    {
        return Yii::$app->get('db_mailing');
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['eaca_id', 'mest_id'], 'integer'],
            [['lis_nombre', 'lis_descripcion', 'lis_estado', 'lis_estado_logico'], 'required'],
            [['lis_fecha_creacion', 'lis_fecha_modificacion'], 'safe'],
            [['lis_nombre'], 'string', 'max' => 50],
            [['lis_descripcion'], 'string', 'max' => 500],
            [['lis_estado', 'lis_estado_logico'], 'string', 'max' => 1],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'lis_id' => 'Lis ID',
            'eaca_id' => 'Eaca ID',
            'mest_id' => 'Mest ID',
            'lis_nombre' => 'Lis Nombre',
            'lis_descripcion' => 'Lis Descripcion',
            'lis_estado' => 'Lis Estado',
            'lis_fecha_creacion' => 'Lis Fecha Creacion',
            'lis_fecha_modificacion' => 'Lis Fecha Modificacion',
            'lis_estado_logico' => 'Lis Estado Logico',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getListaSuscriptors()
    {
        return $this->hasMany(ListaSuscriptor::className(), ['lis_id' => 'lis_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProgramacions()
    {
        return $this->hasMany(Programacion::className(), ['lis_id' => 'lis_id']);
    }
    
    /**
     * Function consultarLista
     * @author  Grace Viteri <analistadesarrollo01@uteg.edu.ec>
     * @param   
     * @return  Listas creadas en mailchimp.
     */
    public function consultarLista() {
        $con = \Yii::$app->db_mailing;
        $con1 = \Yii::$app->db_academico;
        $estado = 1;
        $sql = "SELECT l.lis_id, l.lis_nombre, 
                        case when l.eaca_id > 0 then 
                                     ea.eaca_nombre else me.mest_nombre end as programa,
                        sum(case when (ls.lsus_estado = '1' and ls.lsus_estado_logico = '1') then
                                     1 else 0 end) as num_suscriptores
                FROM " . $con->dbname .".lista l left join " . $con->dbname .".lista_suscriptor ls on ls.lis_id = l.lis_id
                  left join " . $con1->dbname .".estudio_academico ea on ea.eaca_id = l.eaca_id
                  left join " . $con1->dbname .".modulo_estudio me on me.mest_id = l.mest_id
                WHERE lis_estado = :estado
                        and lis_estado_logico = :estado
                GROUP BY l.lis_id, l.lis_nombre, ea.eaca_nombre;";
        
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
                'attributes' => [
                    'lis_id',
                    'lis_nombre',
                    'num_suscriptores',                    
                ],
            ],
        ]);
        return $dataProvider;
        /*if ($onlyData) {
            return $resultData;
        } else {
            return $dataProvider;
        }*/
    }
    
               
}