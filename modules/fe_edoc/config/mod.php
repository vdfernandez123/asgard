<?php
return ['fe_edoc' => [
            'class' => 'app\modules\fe_edoc\Module',
            'db_fe_edoc' => [
                'class' => 'app\components\CConnection',
                'dsn' => 'mysql:host=localhost;dbname=db_edoc',
                'username' => 'uteg',
                'password' => 'Utegadmin2016*',
                'charset' => 'utf8',
                'dbname' => 'db_edoc',
                'dbserver' => 'localhost'
                ],
            ],
        ];
