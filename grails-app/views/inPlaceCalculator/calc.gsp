<html>
<head>
    <meta name="layout" content="form"/>
    <title>
        In-Place Calculator
    </title>
    %{--
    <script>
        function attachValidator() {
            document.getElementById('en').addEventListener('change', validate);
            document.getElementById('exam').addEventListener('change', validate);
        }

        document.addEventListener('DOMContentLoaded', attachValidator);
    </script>
    --}%
</head>

<body>

<form action="/inPlaceCalculator/calc" method="get">
    <fieldset class="form padded">

        <tmpl:form_row name="en" label="En" calculatorInstance="${calculatorInstance}"/>

        <tmpl:form_row name="exam" label="Exam" calculatorInstance="${calculatorInstance}"/>

        <div>
            <label>&nbsp;</label>
            <input type="submit" value="Calculate"/>
        </div>
    </fieldset>
</form>


<div class="padded">
    <label>Result</label>
    <mvc:decorate grade="${calculatorInstance.result}">
        <output>${calculatorInstance.result}</output>
    </mvc:decorate>
</div>

</body>
</html>

