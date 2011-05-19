!SLIDE center hide_images
.notes Consider these datasets. Everything is nicely indexed by an identifier, and none of the data is mistyped or mis-entered. In fact, this really isn't a problem at all. If you saw these datasets, you'd probably be pretty happy.
# The Problem #

Consider these two datasets:

<div class="examples">
  <div class="example">
    <h3>Demographics</h3>
    <table>
      <thead>
        <tr>
          <th>id</th>
          <th>name</th>
          <th>age</th>
          <th>height</th>
          <th>weight</th>
          <th>race</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>Bob</td>
          <td>32</td>
          <td>73</td>
          <td>220</td>
          <td>Black</td>
        </tr>
        <tr>
          <td>2</td>
          <td>Susan</td>
          <td>45</td>
          <td>63</td>
          <td>150</td>
          <td>Other</td>
        </tr>
        <tr>
          <td>3</td>
          <td>Larry</td>
          <td>24</td>
          <td>68</td>
          <td>174</td>
          <td>White</td>
        </tr>
      </thead>
    </tbody>
  </div>

  <div class="example">
    <h3>Visits</h3>
    <table>
      <thead>
        <tr>
          <th>id</th>
          <th>temp</th>
          <th>systolic</th>
          <th>diastolic</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>98</td>
          <td>120</td>
          <td>78</td>
        </tr>
        <tr>
          <td>1</td>
          <td>96</td>
          <td>125</td>
          <td>82</td>
        </tr>
        <tr>
          <td>2</td>
          <td>99</td>
          <td>100</td>
          <td>70</td>
        </tr>
        <tr>
          <td>3</td>
          <td>101</td>
          <td>130</td>
          <td>70</td>
        </tr>
      </thead>
    </tbody>
  </div>
</div>

<img src="500px-Happy_smiley_face.png" alt="smiley" />

<script>
  var slide2 = $('div[ref$=02_slide]');
  slide2.bind("showoff:next", slide2_next);
  slide2.bind("showoff:prev", slide2_prev);
</script>
