<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "objeto_modulo".
 *
 * @property integer $omod_id
 * @property integer $mod_id
 * @property integer $omod_padre_id
 * @property string $omod_nombre
 * @property string $omod_tipo
 * @property string $omod_tipo_boton
 * @property string $omod_accion
 * @property string $omod_function
 * @property string $omod_dir_imagen
 * @property string $omod_entidad
 * @property integer $omod_orden
 * @property string $omod_estado_visible
 * @property string $omod_lang_file
 * @property string $omod_estado
 * @property string $omod_fecha_creacion
 * @property string $omod_fecha_actualizacion
 * @property string $omod_estado_logico
 *
 * @property GrupObmo[] $grupObmos
 * @property Modulo $mod
 * @property ObmoAcci[] $obmoAccis
 */
class ObjetoModulo extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'objeto_modulo';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['mod_id', 'omod_estado', 'omod_estado_logico'], 'required'],
            [['mod_id', 'omod_padre_id', 'omod_orden'], 'integer'],
            [['omod_fecha_creacion', 'omod_fecha_actualizacion'], 'safe'],
            [['omod_nombre', 'omod_accion'], 'string', 'max' => 50],
            [['omod_tipo'], 'string', 'max' => 45],
            [['omod_tipo_boton', 'omod_estado_visible', 'omod_estado', 'omod_estado_logico'], 'string', 'max' => 1],
            [['omod_function', 'omod_dir_imagen'], 'string', 'max' => 100],
            [['omod_entidad'], 'string', 'max' => 200],
            [['omod_lang_file'], 'string', 'max' => 60],
            [['mod_id'], 'exist', 'skipOnError' => true, 'targetClass' => Modulo::className(), 'targetAttribute' => ['mod_id' => 'mod_id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'omod_id' => 'Omod ID',
            'mod_id' => 'Mod ID',
            'omod_padre_id' => 'Omod Padre ID',
            'omod_nombre' => 'Omod Nombre',
            'omod_tipo' => 'Omod Tipo',
            'omod_tipo_boton' => 'Omod Tipo Boton',
            'omod_accion' => 'Omod Accion',
            'omod_function' => 'Omod Function',
            'omod_dir_imagen' => 'Omod Dir Imagen',
            'omod_entidad' => 'Omod Entidad',
            'omod_orden' => 'Omod Orden',
            'omod_estado_visible' => 'Omod Estado Visible',
            'omod_lang_file' => 'Omod Lang File',
            'omod_estado' => 'Omod Estado',
            'omod_fecha_creacion' => 'Omod Fecha Creacion',
            'omod_fecha_actualizacion' => 'Omod Fecha Actualizacion',
            'omod_estado_logico' => 'Omod Estado Logico',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGrupObmos() {
        return $this->hasMany(GrupObmo::className(), ['omod_id' => 'omod_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMod() {
        return $this->hasOne(Modulo::className(), ['mod_id' => 'mod_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getObmoAccis() {
        return $this->hasMany(ObmoAcci::className(), ['omod_id' => 'omod_id']);
    }

    /**
     * @inheritdoc
     */
    public static function findIdentity($id) {
        return static::findOne($id);
    }

    /**
     * Funcion que devuelve los objetos modulos dado un modulo
     *
     * @access public
     * @author Eduardo Cueva <ecueva@penblu.com>
     * 
     * @param string $route Ruta de Objeto Modulo
     * @return mixed       Arreglos de Objetos Modulos
     */
    public static function findIdentityByEntity($route) {
        return static::findOne(['omod_entidad' => $route]);
    }

    /**
     * Funcion que devuelve los objetos modulos dado un modulo
     *
     * @access public
     * @author Eduardo Cueva <ecueva@penblu.com>
     * @return mixed $menu      Arreglos de Objetos Modulos
     */
    public function getObjetoModulosXModulo($moduloid) {
        $usu_id = Yii::$app->session->get('PB_iduser', FALSE);
        $idempresa = Yii::$app->session->get('PB_idempresa', FALSE);
        $sql = "SELECT 
                    om.omod_id,
                    om.omod_padre_id,
                    om.omod_nombre,
                    om.omod_entidad,
                    om.omod_lang_file,
                    om.omod_tipo,
                    om.omod_tipo_boton,
                    om.omod_accion,
                    om.omod_function,
                    om.omod_dir_imagen,
                    om.omod_orden
                FROM 
                    objeto_modulo AS om 
                    INNER JOIN modulo AS mo ON om.mod_id = mo.mod_id 
                    INNER JOIN grup_obmo AS go ON om.omod_id = go.omod_id 
                    INNER JOIN grup_obmo_grup_rol AS gg ON go.gmod_id = gg.gmod_id
                    INNER JOIN grup_rol AS gr ON gg.grol_id = gr.grol_id
                    INNER JOIN usua_grol_eper AS ug ON gr.grol_id = ug.grol_id
                    INNER JOIN usuario AS us ON ug.usu_id = us.usu_id
                    INNER JOIN empresa_persona AS ep ON ug.eper_id = ep.eper_id
                    INNER JOIN empresa AS em ON ep.emp_id = em.emp_id
                WHERE 
                    om.mod_id=:mod_id AND 
                    us.usu_id=:usu_id AND 
                    em.emp_id=:emp_id AND 
                    mo.mod_estado=1 AND 
                    mo.mod_estado_logico=1 AND 
                    go.gmod_estado_logico=1 AND 
                    go.gmod_estado=1 AND 
                    gg.gogr_estado_logico=1 AND 
                    gg.gogr_estado=1 AND 
                    gr.grol_estado_logico=1 AND 
                    gr.grol_estado=1 AND 
                    ug.ugep_estado_logico=1 AND 
                    ug.ugep_estado=1 AND 
                    us.usu_estado_logico=1 AND 
                    us.usu_estado=1 AND 
                    ep.eper_estado_logico=1 AND 
                    ep.eper_estado=1 AND 
                    em.emp_estado=1 AND 
                    em.emp_estado_logico=1 AND 
                    om.omod_id=om.omod_padre_id AND 
                    om.omod_estado_logico=1 AND 
                    om.omod_estado=1 AND 
                    om.omod_estado_visible=1  
                ORDER BY om.omod_nombre;";
        $comando = Yii::$app->db->createCommand($sql);
        $comando->bindParam(":mod_id", $moduloid, \PDO::PARAM_INT);
        $comando->bindParam(":usu_id", $usu_id, \PDO::PARAM_INT);
        $comando->bindParam(":emp_id", $idempresa, \PDO::PARAM_INT);
        return $comando->queryAll();
    }

    /**
     * Función para obtener arreglo de objetos modulos por id de objeto modulo padre
     *
     * @author Eduardo Cueva <ecueva@penblu.com>
     * @access public
     * @param string $id_module        Id del Modulo
     * @param string $id_omod          Id del Objeto Modulo
     * @param string $id_omodpadre     Id del Objeto Modulo padre
     * @return mixed                   Retorna un array de los Objetos Modulos hijos del objeto modulo con la ruta o entidad especificada en $route
     *                      
     * */
    public function getObjModHijosXObjModPadre($id_module, $id_omod, $id_omodpadre) {
        $usu_id = Yii::$app->session->get('PB_iduser', FALSE);
        $idempresa = Yii::$app->session->get('PB_idempresa', FALSE);
        $sql = "SELECT 
                    om.* 
                FROM 
                    objeto_modulo AS om 
                    INNER JOIN modulo AS mo ON om.mod_id = mo.mod_id 
                    INNER JOIN grup_obmo AS go ON om.omod_id = go.omod_id 
                    INNER JOIN grup_obmo_grup_rol AS gg ON go.gmod_id = gg.gmod_id
                    INNER JOIN grup_rol AS gr ON gg.grol_id = gr.grol_id
                    INNER JOIN usua_grol_eper AS ug ON gr.grol_id = ug.grol_id
                    INNER JOIN usuario AS us ON ug.usu_id = us.usu_id
                    INNER JOIN empresa_persona AS ep ON ug.eper_id = ep.eper_id
                    INNER JOIN empresa AS em ON ep.emp_id = em.emp_id
                WHERE 
                    om.mod_id=:mod_id AND 
                    us.usu_id=:usu_id AND 
                    em.emp_id=:emp_id AND 
                    om.omod_padre_id=:omod_padre AND 
                    om.omod_id<>:omod_id AND 
                    mo.mod_estado=1 AND 
                    mo.mod_estado_logico=1 AND 
                    go.gmod_estado_logico=1 AND 
                    go.gmod_estado=1 AND 
                    gg.gogr_estado_logico=1 AND 
                    gg.gogr_estado=1 AND 
                    gr.grol_estado_logico=1 AND 
                    gr.grol_estado=1 AND 
                    ug.ugep_estado_logico=1 AND 
                    ug.ugep_estado=1 AND 
                    us.usu_estado_logico=1 AND 
                    us.usu_estado=1 AND 
                    ep.eper_estado_logico=1 AND 
                    ep.eper_estado=1 AND 
                    em.emp_estado=1 AND 
                    em.emp_estado_logico=1 AND 
                    om.omod_tipo='S' AND 
                    om.omod_estado_logico=1 AND 
                    om.omod_estado=1 AND 
                    om.omod_estado_visible=1  
                ORDER BY om.omod_orden;";

        $comando = Yii::$app->db->createCommand($sql);
        $comando->bindParam(":mod_id", $id_module, \PDO::PARAM_INT);
        $comando->bindParam(":usu_id", $usu_id, \PDO::PARAM_INT);
        $comando->bindParam(":emp_id", $idempresa, \PDO::PARAM_INT);
        $comando->bindParam(":omod_padre", $id_omodpadre, \PDO::PARAM_INT);
        $comando->bindParam(":omod_id", $id_omod, \PDO::PARAM_INT);
        $arrayObjMod = $comando->queryAll();
        return $arrayObjMod;
    }

    /**
     * Función para obtener un modulo dado el id del objeto modulo
     *
     * @author Eduardo Cueva <ecueva@penblu.com>
     * @param  $omod_id          Id del objeto modulo 
     * @return mixed             Objeto con los datos de un modulo
     */
    public function getModuleByObjModule($omod_id) {
        $usu_id = Yii::$app->session->get('PB_iduser', FALSE);
        $idempresa = Yii::$app->session->get('PB_idempresa', FALSE);
        $sql = "SELECT 
                    mo.* 
                FROM 
                    objeto_modulo AS om 
                    INNER JOIN modulo AS mo ON om.mod_id = mo.mod_id 
                    INNER JOIN grup_obmo AS go ON om.omod_id = go.omod_id 
                    INNER JOIN grup_obmo_grup_rol AS gg ON go.gmod_id = gg.gmod_id
                    INNER JOIN grup_rol AS gr ON gg.grol_id = gr.grol_id
                    INNER JOIN usua_grol_eper AS ug ON gr.grol_id = ug.grol_id
                    INNER JOIN usuario AS us ON ug.usu_id = us.usu_id
                    INNER JOIN empresa_persona AS ep ON ug.eper_id = ep.eper_id
                    INNER JOIN empresa AS em ON ep.emp_id = em.emp_id
                WHERE 
                    us.usu_id=:usu_id AND 
                    em.emp_id=:emp_id AND 
                    om.omod_id=:omod_id AND 
                    mo.mod_estado=1 AND 
                    mo.mod_estado_logico=1 AND 
                    go.gmod_estado_logico=1 AND 
                    go.gmod_estado=1 AND 
                    gg.gogr_estado_logico=1 AND 
                    gg.gogr_estado=1 AND 
                    gr.grol_estado_logico=1 AND 
                    gr.grol_estado=1 AND 
                    ug.ugep_estado_logico=1 AND 
                    ug.ugep_estado=1 AND 
                    us.usu_estado_logico=1 AND 
                    us.usu_estado=1 AND 
                    ep.eper_estado_logico=1 AND 
                    ep.eper_estado=1 AND 
                    em.emp_estado=1 AND 
                    em.emp_estado_logico=1 AND 
                    om.omod_estado_logico=1 AND 
                    om.omod_estado=1 AND 
                    om.omod_estado_visible=1  
                ORDER BY om.omod_orden;";

        $comando = Yii::$app->db->createCommand($sql);
        $comando->bindParam(":usu_id", $usu_id, \PDO::PARAM_INT);
        $comando->bindParam(":emp_id", $idempresa, \PDO::PARAM_INT);
        $comando->bindParam(":omod_id", $omod_id, \PDO::PARAM_INT);
        $arrMod = $comando->queryOne();
        return $arrMod;
    }

    /**
     * Función para obtener todos los padres de un objeto modulo
     *
     * @author Eduardo Cueva <ecueva@penblu.com>
     * @param  int   $id_objModulo          Id del objeto modulo 
     * @param  mixed $obj                   Objeto que contiene los padres. Inicialmente esta vacio
     * @return mixed                        Objeto con los datos de los padres de un objeto modulo
     */
    public static function getParentByObjModule($id_objModulo, $obj) {
        $sql = "SELECT * FROM objeto_modulo WHERE omod_id=:id_omod AND omod_estado_logico=1 AND omod_estado=1";
        $comando = Yii::$app->db->createCommand($sql);
        $comando->bindParam(":id_omod", $id_objModulo, \PDO::PARAM_INT);
        $fila = $comando->queryOne();

        if (isset($fila)) {
            if ($id_objModulo == $fila['omod_padre_id']) {
                $objmod_lang_file = isset($fila["omod_lang_file"]) ? $fila["omod_lang_file"] : "menu";
                $omod_nombre = Yii::t($objmod_lang_file, $fila['omod_nombre']);
                $obj[] = array($omod_nombre, $fila['omod_entidad']); // se agrega al padre
                $mod = Modulo::findIdentity($fila['mod_id']); // se agrega al modulo
                $mod_lang_file = isset($mod["mod_lang_file"]) ? $mod["mod_lang_file"] : "menu";
                $mod_nombre = Yii::t($mod_lang_file, $mod['mod_nombre']);
                $obj[] = array($mod_nombre, $mod['mod_url']);
                return $obj;
            } else {
                $objmod_lang_file = isset($fila["omod_lang_file"]) ? $fila["omod_lang_file"] : "menu";
                $omod_nombre = Yii::t($objmod_lang_file, $fila['omod_nombre']);
                $obj[] = array($omod_nombre, $fila['omod_entidad']);
                $obj = self::getParentByObjModule($fila['omod_padre_id'], $obj);
                return $obj;
            }
        } else
            return array();
    }

}
