<?php
use voku\db\DB;
class Vehicle{
    static $db;
    function __construct(){
    }
    public static function sync(){
        self::$db=DB::getInstance();
        // $clear="DELETE FROM vehicles";
        // self::$db->query($clear);
        $next = true;

        $curl = new Curl\Curl();
        $i = 0;
        do {
            $i++;
            $url=$_ENV['SWAPI_URL'].'vehicles?page='.$i;
            $response=$curl->get($url);
            $response=json_decode($response->response,true);
            $results = $response['results'];
            foreach($results as $result){
                $single=array();
                $single['name']=$result['name'];
                $single['model']=$result['model'];
                $single['vehicle_class']=$result['vehicle_class'];
                $single['manufacturer']=$result['manufacturer'];
                $single['length']=$result['length'];
                $single['cost_in_credits']=$result['cost_in_credits'];
                $single['crew']=$result['crew'];
                $single['passengers']=$result['passengers'];
                $single['max_atmosphering_speed']=$result['max_atmosphering_speed'];
                $single['cargo_capacity']=$result['cargo_capacity'];
                $single['consumables']=$result['consumables'];
                $single['pilots']=implode($result['pilots']);
                $single['films']=implode(",", $result['films']);
                $single['created']=date('Y-m-d H:i:s',strtotime($result['created']));
                $single['edited']=date('Y-m-d H:i:s',strtotime($result['edited']));
                $single['url']=$result['url'];
                $split=explode("/", $result['url']);
                $ind = sizeof($split) - 2;
                $single['id']=$split[$ind];
                
                $check="SELECT * FROM vehicles WHERE id='".$split[$ind]."'";
                $check_result=self::$db->query($check);
                $list=$check_result->fetchArray();
                if($list) {
                    $single['units']=$list['units'];
                }
                self::$db->replace('vehicles',$single);
            }
            
            if($response['next'] == null) {
                $next = false;
            }
        } while($next);
        return;
    }

    public static function all() {
        self::$db=DB::getInstance();
        $sql="SELECT * FROM vehicles";
        $result=self::$db->query($sql);
        $all_vehicles=$result->fetchAllArray();

        return $all_vehicles;
    }

    public static function single($id) {
        self::$db=DB::getInstance();

        $sql="SELECT * FROM vehicles WHERE id='$id'";
        $result=self::$db->query($sql);
        $vehicle=$result->fetchArray();
        if(!$vehicle) {
            return "No products with this id";
        }

        return $vehicle;
    }
    
    public static function get_units($id) {
        self::$db=DB::getInstance();

        $sql="SELECT * FROM vehicles WHERE id='$id'";
        $result=self::$db->query($sql);
        $vehicle=$result->fetchArray();
        if(!$vehicle) {
            return "No products with this id";
        }

        return $vehicle['units'];
    }

    public static function put_units($id, $units) {
        self::$db=DB::getInstance();
        if(empty($id) || empty($units)) {
            return "Some params are missing";
        }
        $sql="SELECT * FROM vehicles WHERE id='$id'";
        $result=self::$db->query($sql);
        $vehicle=$result->fetchArray();
        if(!$vehicle) {
            return "No products with this id";
        }

        $putSQL="UPDATE vehicles SET units='$units' WHERE id='$id'";
        self::$db->query($putSQL);

        return "Success";
    }

    public static function increment_units($id, $units) {
        self::$db=DB::getInstance();
        if(empty($id) || empty($units)) {
            return "Some params are missing";
        }
        $sql="SELECT * FROM vehicles WHERE id='$id'";
        $result=self::$db->query($sql);
        $vehicle=$result->fetchArray();
        
        if(!$vehicle) {
            return "No products with this id";
        }
        $units = $units + $vehicle['units'];
        $putSQL="UPDATE vehicles SET units='$units' WHERE id='$id'";
        self::$db->query($putSQL);

        return "Success";
    }

    public static function decrement_units($id, $units) {
        self::$db=DB::getInstance();
        if(empty($id) || empty($units)) {
            return "Some params are missing";
        }
        $sql="SELECT * FROM vehicles WHERE id='$id'";
        $result=self::$db->query($sql);
        $vehicle=$result->fetchArray();
        
        if(!$vehicle) {
            return "No products with this id";
        }
        $units = $vehicle['units'] - $units;
        $value = max($units, 0);
        $putSQL="UPDATE vehicles SET units='$value' WHERE id='$id'";
        self::$db->query($putSQL);

        return "Success";
    }

}