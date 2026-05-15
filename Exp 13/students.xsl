<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:template match="/">

<html>

<head>

    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Student Records</title>

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

        .roll{
            color:#2563eb;
            font-weight:bold;
        }

        .marks{
            color:green;
            font-weight:bold;
        }

        .hobby{
            color:#9333ea;
            font-style:italic;
        }

    </style>

</head>

<body>

<div class="container">

    <h1>Student Records</h1>

    <div class="table-box">

        <table>

            <tr>
                <th>Roll No</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Hobby</th>
                <th>Marks</th>
            </tr>

            <xsl:for-each select="class/student">

            <tr>

                <td>
                    <span class="roll">
                        <xsl:value-of select="@rollno"/>
                    </span>
                </td>

                <td>
                    <xsl:value-of select="firstname"/>
                </td>

                <td>
                    <xsl:value-of select="lastname"/>
                </td>

                <td>
                    <span class="hobby">
                        <xsl:value-of select="hobby"/>
                    </span>
                </td>

                <td>
                    <span class="marks">
                        <xsl:value-of select="marks"/>%
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