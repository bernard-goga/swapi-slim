<?php
use voku\db\DB;
class Starship{
    static $db;
    function __construct(){
    }
    public static function sync(){
        self::$db=DB::getInstance();
        $next = true;

        $curl = new Curl\Curl();
        $i = 0;
        do {
            $i++;
            $url=$_ENV['SWAPI_URL'].'starships?page='.$i;
            $response=$curl->get($url);
            $response=json_decode($response->response,true);
            $results = $response['results'];
            foreach($results as $result){
                $single=array();
                $single['name']=$result['name'];
                $single['model']=$result['model'];
                $single['manufacturer']=$result['manufacturer'];
                $single['cost_in_credits']=$result['cost_in_credits'];
                $single['length']=$result['length'];
                $single['max_atmosphering_speed']=$result['max_atmosphering_speed'];
                $single['crew']=$result['crew'];
                $single['passengers']=$result['passengers'];
                $single['cargo_capacity']=$result['cargo_capacity'];
                $single['consumables']=$result['consumables'];
                $single['hyperdrive_rating']=$result['hyperdrive_rating'];
                $single['MGLT']=$result['MGLT'];
                $single['starship_class']=$result['starship_class'];
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
                self::$db->replace('starships',$single);
            }
            
            if($response['next'] == null) {
                $next = false;
            }
        } while($next);
        return;
    }

    public static function all() {
        self::$db=DB::getInstance();
        $sql="SELECT * FROM starships";
        $result=self::$db->query($sql);
        $all_starships=$result->fetchAllArray();

        return $all_starships;
    }

    public static function single($id) {
        self::$db=DB::getInstance();

        $sql="SELECT * FROM starships WHERE id='$id'";
        $result=self::$db->query($sql);
        $starship=$result->fetchArray();
        if(!$starship) {
            return "No products with this id";
        }

        return $starship;
    }

    public static function get_units($id) {
        self::$db=DB::getInstance();

        $sql="SELECT * FROM starships WHERE id='$id'";
        $result=self::$db->query($sql);
        $starship=$result->fetchArray();
        if(!$starship) {
            return "No products with this id";
        }

        return $starship['units'];
    }

    public static function put_units($id, $units) {
        self::$db=DB::getInstance();
        if(empty($id) || empty($units)) {
            return "Some params are missing";
        }
        $sql="SELECT * FROM starships WHERE id='$id'";
        $result=self::$db->query($sql);
        $starship=$result->fetchArray();
        if(!$starship) {
            return "No products with this id";
        }

        $putSQL="UPDATE starships SET units='$units' WHERE id='$id'";
        self::$db->query($putSQL);

        return "Success";
    }

    public static function increment_units($id, $units) {
        self::$db=DB::getInstance();
        if(empty($id) || empty($units)) {
            return "Some params are missing";
        }
        $sql="SELECT * FROM starships WHERE id='$id'";
        $result=self::$db->query($sql);
        $starship=$result->fetchArray();
        
        if(!$starship) {
            return "No products with this id";
        }
        $units = $units + $starship['units'];
        $putSQL="UPDATE starships SET units='$units' WHERE id='$id'";
        self::$db->query($putSQL);

        return "Success";
    }

    public static function decrement_units($id, $units) {
        self::$db=DB::getInstance();
        if(empty($id) || empty($units)) {
            return "Some params are missing";
        }
        $sql="SELECT * FROM starships WHERE id='$id'";
        $result=self::$db->query($sql);
        $starship=$result->fetchArray();
        
        if(!$starship) {
            return "No products with this id";
        }
        $units = $starship['units'] - $units;
        $value = max($units, 0);
        $putSQL="UPDATE starships SET units='$value' WHERE id='$id'";
        self::$db->query($putSQL);

        return "Success";
    }

}