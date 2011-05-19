!SLIDE center
# The Problem #

Now consider these two datasets:

<div class="examples-2">
  <div class="example bad">
    <h3>Demographics</h3>
    <table>
      <thead>
        <tr>
          <th>mrn</th>
          <th>name</th>
          <th>age</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>8675309</td>
          <td class="highlight-1">Bo b</td>
          <td>32</td>
        </tr>
        <tr>
          <td>43770</td>
          <td class="highlight-2">Susan Doe</td>
          <td>45</td>
        </tr>
        <tr>
          <td>123ba9x81</td>
          <td class="highlight-3">L. Smith</td>
          <td>24</td>
        </tr>
      </thead>
    </tbody>
  </div>

  <div class="example bad">
    <h3>Visits</h3>
    <table>
      <thead>
        <tr>
          <th>name</th>
          <th>temp</th>
          <th>systolic</th>
          <th>diastolic</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="highlight-1">Bob</td>
          <td>98</td>
          <td>120</td>
          <td>78</td>
        </tr>
        <tr>
          <td class="highlight-1">Bob</td>
          <td>96</td>
          <td>125</td>
          <td>82</td>
        </tr>
        <tr>
          <td class="highlight-2">Susan</td>
          <td>99</td>
          <td>100</td>
          <td>70</td>
        </tr>
        <tr>
          <td class="highlight-3">Larry</td>
          <td>101</td>
          <td>130</td>
          <td>70</td>
        </tr>
      </thead>
    </tbody>
  </div>
</div>

<script>
  var slide3 = $('div[ref$=03_slide]');
  slide3.bind('showoff:next', slide3_next);
</script>
