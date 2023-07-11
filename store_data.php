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
    try {
        $stmt = $conn->prepare($sql);
        $stmt->bind_param('sss', $contactNum, $name, $compOrg);
        $stmt->execute();
        store_preferrences($conn, $contactNum, $date, $time, $visitorsNum);
    } catch (Exception $stmt) {
        // echo $stmt->getMessage();
        for_repeating_cellnumber($conn, $contactNum, $name, $compOrg);
    }
}

function store_preferrences($conn, $contactNum, $date, $time, $visitorsNum)
{
    $sql = "
    SELECT id FROM contact_information WHERE contact_no = $contactNum
    ";
    $stmt = $conn->query($sql);
    if ($stmt->num_rows > 0) {
        $row = $stmt->fetch_assoc();
        $id = $row['id'];
    }

    $sql = "
        INSERT INTO preferrences(preferred_time, preferred_date, number_of_visitors, contact_information_id)
        VALUES(?,?,?,?)
    ";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param('ssii', $time, $date, $visitorsNum, $id);
    $stmt->execute();
}

function for_repeating_cellnumber($conn, $contactNum, $name, $compOrg)
{
    $sql = "
        SELECT full_name, company_organization FROM contact_information WHERE contact_no = $contactNum
    ";
    $stmt = $conn->query($sql);
    if ($stmt->num_rows > 0) {
        $row = $stmt->fetch_assoc();
        echo $row['company_organization'];

        if ($row['full_name'] != $name || $row['company_organization'] != $compOrg) {
            $sql = "
            INSERT INTO contact_information_dump(contact_no, full_name, company_organization) VALUES (?, ?, ?)
            ";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param('sss', $contactNum, $row['full_name'], $row['company_organization']);
            $stmt->execute();
            


            $sql = "
                UPDATE contact_information SET full_name = ?, company_organization = ? WHERE contact_no = ?
            ";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param('sss', $name,  $compOrg, $contactNum);
            $stmt->execute();
        }
    }
}
?>
<?php
$conn->close();
?>