<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:template match="/">

<html>

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Student Information</title>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg,#4facfe,#00f2fe);
            min-height:100vh;
            padding:40px;
        }

        .container{
            width:90%;
            margin:auto;
        }

        h1{
            text-align:center;
            color:white;
            margin-bottom:30px;
        }

        .table-box{
            background:white;
            padding:25px;
            border-radius:15px;
            box-shadow:0 10px 30px rgba(0,0,0,0.2);
        }

        table{
            width:100%;
            border-collapse:collapse;
        }

        th{
            background:#0077b6;
            color:white;
            padding:15px;
            text-align:left;
        }

        td{
            padding:14px;
            border-bottom:1px solid #ddd;
        }

        tr:hover{
            background:#f1f5f9;
        }

        .marks{
            color:green;
            font-weight:bold;
        }

        .year{
            background:#dbeafe;
            padding:5px 10px;
            border-radius:10px;
            color:#1d4ed8;
            font-weight:bold;
        }

    </style>

</head>

<body>

<div class="container">

    <h1>Student Information System</h1>

    <div class="table-box">

        <table>

            <tr>
                <th>Name</th>
                <th>Course</th>
                <th>College</th>
                <th>City</th>
                <th>Marks</th>
                <th>Year</th>
            </tr>

            <xsl:for-each select="students/student">

            <tr>

                <td>
                    <xsl:value-of select="name"/>
                </td>

                <td>
                    <xsl:value-of select="course"/>
                </td>

                <td>
                    <xsl:value-of select="college"/>
                </td>

                <td>
                    <xsl:value-of select="city"/>
                </td>

                <td>
                    <span class="marks">
                        <xsl:value-of select="marks"/>
                    </span>
                </td>

                <td>
                    <span class="year">
                        <xsl:value-of select="year"/>
                    </span>
                </td>

            </tr>

            </xsl:for-each>

        </table>

    </div>

</div>

</body>

</html>

</xsl:template>

</xsl:stylesheet>