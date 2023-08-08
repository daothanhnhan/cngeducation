<?php 
    session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

    $action = new action();

    $lang = $_SESSION['lang'];

	$thang_chon = $_GET['thang'];


class Calendar {

    private $active_year, $active_month, $active_day;
    private $events = [];

    public function __construct($date = null) {
        $this->active_year = $date != null ? date('Y', strtotime($date)) : date('Y');
        $this->active_month = $date != null ? date('m', strtotime($date)) : date('m');
        $this->active_day = $date != null ? date('d', strtotime($date)) : date('d');
    }

    public function add_event($txt, $date, $days = 1, $color = '') {
        $color = $color ? ' ' . $color : $color;
        $this->events[] = [$txt, $date, $days, $color];
    }

    public function __toString() {
        $num_days = date('t', strtotime($this->active_day . '-' . $this->active_month . '-' . $this->active_year));
        $num_days_last_month = date('j', strtotime('last day of previous month', strtotime($this->active_day . '-' . $this->active_month . '-' . $this->active_year)));
        // $days = [0 => 'Sun', 1 => 'Mon', 2 => 'Tue', 3 => 'Wed', 4 => 'Thu', 5 => 'Fri', 6 => 'Sat'];
        $days = [0 => 'Mon', 1 => 'Tue', 2 => 'Wed', 3 => 'Thu', 4 => 'Fri', 5 => 'Sat', 6 => 'Sun'];
        // $days = [0 => 'T2', 1 => 'T3', 2 => 'T4', 3 => 'T5', 4 => 'T6', 5 => 'T7', 6 => 'CN'];
        $first_day_of_week = array_search(date('D', strtotime($this->active_year . '-' . $this->active_month . '-1')), $days);

        $thang_nay_nut = date('Y-m-d');
        $thang_truoc_nut = date('Y-m-d', strtotime($this->active_year . '-' . $this->active_month . '-' . $this->active_day. ' -1 month'));
        $thang_sau_nut = date('Y-m-d', strtotime($this->active_year . '-' . $this->active_month . '-' . $this->active_day. ' +1 month'));
        $html = '<div class="calendar">';
        $html .= '<div class="header">';
        $html .= '<div class="month-year">';
        $html .= date('F Y', strtotime($this->active_year . '-' . $this->active_month . '-' . $this->active_day));
        $html .= '</div>';

        $html .= '<div class="text-right">';
        $html .= '<button type="" onclick="calendar(\''.$thang_truoc_nut.'\')"><i class=\'fa fa-chevron-left\'></i></button>';
        $html .= '<button type="" onclick="calendar(\''.$thang_sau_nut.'\')"><i class=\'fa fa-chevron-right\'></i></button>';
        $html .= '<button type="" onclick="calendar(\''.$thang_nay_nut.'\')">TODAY</button>';
        $html .= '</div>';

        $html .= '</div>';
        $html .= '<div class="days">';
        foreach ($days as $day) {
            $html .= '
                <div class="day_name">
                    ' . $day . '
                </div>
            ';
        }
        // var_dump($first_day_of_week);
        for ($i = $first_day_of_week; $i > 0; $i--) {
            $html .= '
                <div class="day_num ignore">
                    ' . ($num_days_last_month-$i+1);
            foreach ($this->events as $event) {
            	// $html .= 'event';
                for ($d = 0; $d <= ($event[2]-1); $d++) {
                    $thang_truoc = date('y-m', strtotime($this->active_year . '-' . $this->active_month. ' - 1 month'));
                    $thang_truoc_ngay = $num_days_last_month-$i+1;
                    $lich = $thang_truoc.'-'.$thang_truoc_ngay;
                    $lich = date('y-m-d', strtotime($lich . ' -'.$d.' day'));
                	// $html .= date('y-m-d', strtotime($this->active_year . '-' . $this->active_month . '-' . $i . ' -' . $d . ' day'));
                	// $html .= date('y-m-d', strtotime($event[1]));
                    if ($lich == date('y-m-d', strtotime($event[1]))) {
                        $html .= '<div class="event' . $event[3] . '">';
                        $html .= $event[0];
                        $html .= '</div>';
                    }
                }
            }
            $html .=    '</div>';
            
            // var_dump($num_days_last_month-$i+1);
        }
        for ($i = 1; $i <= $num_days; $i++) {
            $selected = '';
            if ($i == $this->active_day) {
                $selected = ' selected';
            }
            $html .= '<div class="day_num' . $selected . '">';
            $html .= '<span>' . $i . '</span>';
            foreach ($this->events as $event) {
                for ($d = 0; $d <= ($event[2]-1); $d++) {
                    if (date('y-m-d', strtotime($this->active_year . '-' . $this->active_month . '-' . $i . ' -' . $d . ' day')) == date('y-m-d', strtotime($event[1]))) {
                        $html .= '<div class="event' . $event[3] . '">';
                        $html .= $event[0];
                        $html .= '</div>';
                    }
                }
            }
            $html .= '</div>';
        }
        for ($i = 1; $i <= (42-$num_days-max($first_day_of_week, 0)); $i++) {
            $html .= '
                <div class="day_num ignore">
                    ' . $i;

            foreach ($this->events as $event) {
                for ($d = 0; $d <= ($event[2]-1); $d++) {
                    $thang_sau = date('y-m', strtotime($this->active_year . '-' . $this->active_month. ' + 1 month'));
                    if ($i < 10) {
                        $thang_sau_ngay = '0'.$i;
                    } else {
                        $thang_sau_ngay = $i;
                    }
                    $lich = $thang_sau.'-'.$thang_sau_ngay;
                    $lich = date('y-m-d', strtotime($lich . ' -'.$d.' day'));
                    // $html .= 'event '.$lich;
                    // $html .= date('y-m-d', strtotime($this->active_year . '-' . $this->active_month . '-' . $i . ' -' . $d . ' day'));
                    // $html .= date('y-m-d', strtotime($event[1]));
                    if ($lich == date('y-m-d', strtotime($event[1]))) {
                        $html .= '<div class="event' . $event[3] . '">';
                        $html .= $event[0];
                        $html .= '</div>';
                    }
                }
            }

            $html .=     '</div>
            ';
        }
        $html .= '</div>';
        $html .= '</div>';
        return $html;
    }

}



// include 'Calendar.php';
$now = date('Y-m-d');
// echo $thang_chon;
$calendar = new Calendar($thang_chon);
// $calendar->add_event('Birthday', '2023-07-01', 1, 'green');
// $calendar->add_event('Doctors', '2023-07-02', 1, 'red');
// $calendar->add_event('Holiday', '2023-07-03', 7);

for ($i=1; $i<=31;$i++) {
	if ($i < 10) {
		$ngay = '0' . $i;
	} else {
		$ngay = $i;
	}

	$thang = date('Y-m', strtotime($thang_chon.' - 1 month')) . '-' . $ngay;//echo $thang;

	$sql = "SELECT * FROM product WHERE product_created_date LIKE '%$thang%'";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$num = mysqli_num_rows($result);
	if ($num != 0) {
		// echo 'ok';
        while ($row = mysqli_fetch_assoc($result)) {
           $row_lang = $action->getDetail_New('product_languages', array('product_id', 'languages_code'), array($row['product_id'], $lang), 'is');
            $show_sukien = '<a href="'.$row_lang['friendly_url'].'">'.$row_lang['lang_product_name'].'</a>';//echo $show_sukien;

            $them = 0;
            if (!empty($row['date_end'])) {
                $date1 = new DateTime($thang);
                $date2 = new DateTime($row['date_end']);
                $interval = $date1->diff($date2);
                $so_ngay = $interval->days;//echo $so_ngay;
                if ($so_ngay > 0) {
                    $them = 1;
                }
            }

            if ($them == 1) {
                $calendar->add_event($show_sukien, $thang, $so_ngay+1, 'green');
            } else {
                $calendar->add_event($show_sukien, $thang, 1, 'green');
            }
        }
		
		
	}
}

for ($i=1; $i<=31;$i++) {
	if ($i < 10) {
		$ngay = '0' . $i;
	} else {
		$ngay = $i;
	}

	$thang = date('Y-m', strtotime($thang_chon)) . '-' . $ngay;

	$sql = "SELECT * FROM product WHERE product_created_date LIKE '%$thang%'";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$num = mysqli_num_rows($result);
	if ($num != 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $row_lang = $action->getDetail_New('product_languages', array('product_id', 'languages_code'), array($row['product_id'], $lang), 'is');
            $show_sukien = '<a href="'.$row_lang['friendly_url'].'">'.$row_lang['lang_product_name'].'</a>';//echo $show_sukien;
            
            $them = 0;
            if (!empty($row['date_end'])) {
                $date1 = new DateTime($thang);
                $date2 = new DateTime($row['date_end']);
                $interval = $date1->diff($date2);
                $so_ngay = $interval->days;//echo $so_ngay;
                if ($so_ngay > 0) {
                    $them = 1;
                }
            }


            $thang_tiep_sau[] = array($show_sukien, $row['date_end']);
            

            if ($them == 1) {
                $calendar->add_event($show_sukien, $thang, $so_ngay+1, 'green');
            } else {
                $calendar->add_event($show_sukien, $thang, 1, 'green');
            }
        }
		
		
	}
}

for ($i=1; $i<=31;$i++) {
	if ($i < 10) {
		$ngay = '0' . $i;
	} else {
		$ngay = $i;
	}

	$thang = date('Y-m', strtotime($thang_chon.' + 1 month')) . '-' . $ngay;

	$sql = "SELECT * FROM product WHERE product_created_date LIKE '%$thang%'";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$num = mysqli_num_rows($result);
	if ($num != 0) {
        while ($row = mysqli_fetch_assoc($result)) {
           $row_lang = $action->getDetail_New('product_languages', array('product_id', 'languages_code'), array($row['product_id'], $lang), 'is');
            $show_sukien = '<a href="'.$row_lang['friendly_url'].'">'.$row_lang['lang_product_name'].'</a>';//echo $show_sukien;

            $them = 0;
            if (!empty($row['date_end'])) {
                $date1 = new DateTime($thang);
                $date2 = new DateTime($row['date_end']);
                $interval = $date1->diff($date2);
                $so_ngay = $interval->days;//echo $so_ngay;
                if ($so_ngay > 0) {
                    $them = 1;
                }
            }

            
            if ($them == 1) {
                $calendar->add_event($show_sukien, $thang, $so_ngay+1, 'green');
            } else {
                $calendar->add_event($show_sukien, $thang, 1, 'green');
            }
        }
		
		
	}
}
?>

<?=$calendar?>