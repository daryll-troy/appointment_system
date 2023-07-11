<?php
include "connect.php";
?>

<?php
// form validation
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // date
    if (isset($_POST['obj']['date'])) {
        $date = test_input($_POST['obj']['date']);
    } else {
        $dateErr = "date is required";
    }

    // time
    if (isset($_POST['obj']['time'])) {
        $time = test_input($_POST['obj']['time']);
    } else {
        $timeErr = "time is required";
    }

    //   Validate name
    if (isset($_POST['obj']["name"])) {
        // Check if name contains only letters and whitespace
        if (preg_match("/^[a-zA-Z ]*$/", $_POST['obj']["name"])) {
            $name = test_input($_POST['obj']["name"]);
        } else {
            $nameErr = "Only letters and white space allowed";
        }
    } else {

        $nameErr = "Name is required";
    }

    // company or organization
    if (isset($_POST['obj']['compOrg'])) {
        $compOrg = test_input($_POST['obj']["compOrg"]);
    } else {
        $compOrgErr = "company/organization is required";
    }

    // number of visitors
    if (isset($_POST['obj']['visitorsNum'])) {
        if (is_nan($_POST['obj']['visitorsNum']) || $_POST['obj']['visitorsNum'] < 0 || $_POST['obj']['visitorsNum'] > 10) {
            $visitorsNumErr = "Invalid. Maximum of 10 visitors";
            echo $visitorsNumErr;
        } else {
            $visitorsNum = test_input($_POST['obj']['visitorsNum']);
        }
    } else {
        $visitorsNumErr = "visitorsNum is required";
    }

    // contactNum
    if (isset($_POST['obj']['contactNum'])) {
        if (preg_match("/^(09|\+639)\d{9}$/", $_POST['obj']["contactNum"])) {
            $contactNum = test_input($_POST['obj']['contactNum']);
        } else {
            $contactNumErr = "invalid mobile number format";
        }
    } else {
        $contactNumErr = "contactNum is required";
    }

    // purpose
    if (isset($_POST['obj']['purpose'])) {
        $purpose = test_input($_POST['obj']['purpose']);
    } else {
        $purposeErr = "purpose is required";
    }
}


function test_input($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}


// store to database
if (
    isset($date) && isset($time) && isset($name) && isset($compOrg) && isset($visitorsNum) && isset($contactNum) && isset($purpose)
) {
    $sql = "
        INSERT INTO contact_information(contact_no, full_name, company_organization) VALUES (?, ?, ?)
    ";
    try{
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('sss', $contactNum, $name, $compOrg);
    $stmt->execute();



    }catch(Exception $stmt){
        echo $stmt->getMessage();
    }
}

?>
<?php
$conn->close();
?>