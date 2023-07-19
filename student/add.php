                      <?php 
                       if (!isset($_SESSION['ACCOUNT_ID'])){
                          redirect(web_root."index.php");
                         }

                      
                       ?> 

 <section id="feature" class="transparent-bg">
        <div class="container">
           <div class="center wow fadeInDown">
                 <h2 class="page-header">Add New Student</h2>
            </div>

            <div class="row">
                <div class="features">

                        <form class="form-horizontal span6  wow fadeInDown" action="controller.php?action=add" method="POST"> 
                             <div class="form-group">
                              <div class="col-md-8">
                                <label class="col-md-4 control-label" for=
                                "StudentID">Student ID:</label>

                                <div class="col-md-8">
                                   <input class="form-control input-sm" id="StudentID" name="StudentID" placeholder=
                                      "Student ID" type="number" value="" required  onkeyup="javascript:capitalize(this.id, this.value);" autocomplete="off">
                                </div>
                                <div id="checkid_message"></div>
                              </div>
                            </div>

                            <div class="form-group">
                              <div class="col-md-8">
                                <label class="col-md-4 control-label" for=
                                "Firstname">Firstname:</label>

                                <div class="col-md-8">
                                  
                                   <input class="form-control input-sm" id="Firstname" name="Firstname" placeholder=
                                      "Firstname" type="text" value="" required  onkeyup="javascript:capitalize(this.id, this.value);"  autocomplete="off">
                                </div>
                              </div>
                            </div>

                            <div class="form-group">
                              <div class="col-md-8">
                                <label class="col-md-4 control-label" for=
                                "Lastname">Lastname:</label>

                                <div class="col-md-8">
                                  
                                   <input class="form-control input-sm" id="Lastname" name="Lastname" placeholder=
                                      "Lastname" type="text" value="" required  onkeyup="javascript:capitalize(this.id, this.value);" autocomplete="off">
                                </div>
                              </div>
                            </div>

                            <div class="form-group">
                              <div class="col-md-8">
                                <label class="col-md-4 control-label" for=
                                "Middlename">Middlename:</label>

                                <div class="col-md-8">
                                  
                                   <input class="form-control input-sm" id="Middlename" name="Middlename" placeholder=
                                      "Middlename" type="text" value="" required  onkeyup="javascript:capitalize(this.id, this.value);" autocomplete="off">
                                </div>
                              </div>
                            </div>

                             <div class="form-group">
                              <div class="col-md-8">
                                <label class="col-md-4 control-label" for=
                                "Address">Address:</label>

                                <div class="col-md-8">
                                  
                                   <input class="form-control input-sm" id="Address" name="Address" placeholder=
                                      "Address" type="text" value="" required  onkeyup="javascript:capitalize(this.id, this.value);" autocomplete="off">
                                </div>
                              </div>
                            </div> 

                            <div class="form-group">
                              <div class="col-md-8">
                                <label class="col-md-4 control-label" for=
                                "Gender">Sex:</label>

                                <div class="col-md-8">
                                   <div class="col-lg-5">
                                      <div class="radio">
                                        <label><input checked id="optionsRadios1" checked="True" name="optionsRadios" type="radio" value="Female">Female</label>
                                      </div>
                                    </div>

                                    <div class="col-lg-4">
                                      <div class="radio">
                                        <label><input id="optionsRadios2"   name="optionsRadios" type="radio" value="Male"> Male</label>
                                      </div>
                                    </div> 
                                   
                                </div>
                              </div>
                            </div> 

                            
                             <div class="form-group">
                              <div class="rows">
                                <div class="col-md-8">
                                  <h4>
                                  <div class="col-md-4">
                                    <label class="col-lg-12 control-label">Birthday</label>
                                  </div>

                                  <div class="col-lg-3">
                                    <select class="form-control input-sm" name="month">
                                      <option>Month</option>
                                      <?php

                                         $mon = array('Jan' => 1 ,'Feb'=> 2,'Mar' => 3 ,'Apr'=> 4,'May' => 5 ,'Jun'=> 6,'Jul' => 7 ,'Aug'=> 8,'Sep' => 9 ,'Oct'=> 10,'Nov' => 11 ,'Dec'=> 12 );    
                                      
                                    
                                        foreach ($mon as $month => $value ) {
                                          
                                             
                                               echo '<option value='.$value.'>'.$month.'</option>';
                                            }
                                      
                                           
                                      ?>
                                    </select>
                                  </div>

                                  <div class="col-lg-2">
                                    <select class="form-control input-sm" name="day">
                                      <option>Day</option>
                                    <?php 
                                      $d = range(31, 1);
                                      foreach ($d as $day) {
                                        echo '<option value='.$day.'>'.$day.'</option>';
                                      }
                                    
                                    ?>
                                      
                                    </select>
                                  </div>

                                  <div class="col-lg-3">
                                    <select class="form-control input-sm" name="year">
                                      <option>Year</option>
                                    <?php 
                                      $years = range(2010, 1900);
                                      foreach ($years as $yr) {
                                        echo '<option value='.$yr.'>'.$yr.'</option>';
                                      }
                                    
                                    ?>
                                    
                                    </select>
                                  </div>
                                  </h4>
                                </div>
                              </div>
                            </div>

                               

                             <div class="form-group">
                              <div class="col-md-8">
                                <label class="col-md-4 control-label" for=
                                "ContactNo">Mobile No:</label>

                                <div class="col-md-8">
                                  
                                   <input class="form-control input-sm" id="ContactNo" name="ContactNo" placeholder=
                                      "Mobile Number" type="number" any value="" required  onkeyup="javascript:capitalize(this.id, this.value);" autocomplete="off">
                                </div>
                              </div>
                            </div> 

                            <div class="form-group">
                              <div class="col-md-8">
                                <label class="col-md-4 control-label" for=
                                "CourseID">Course:</label>

                                <div class="col-md-8">
                                 <select class="form-control input-sm" name="CourseID" id="CourseID">
                                 <option value="none" >Select</option>
                                    <?php 

                                      $mydb->setQuery("SELECT * FROM `tblcourse`");
                                      $cur = $mydb->loadResultList();

                                      foreach ($cur as $result) {
                                        echo '<option value='.$result->CourseID.' >'.$result->CourseCode.' </option>';

                                      }
                                    ?>


                                   
                                  </select> 
                                </div>
                              </div>
                            </div>
                           <div class="form-group">
                              <div class="col-md-8">
                                <label class="col-md-4 control-label" for=
                                "YearLevel">Level:</label>

                                <div class="col-md-8">
                                  <select class="form-control input-sm" name="YearLevel" id="YearLevel">
                                      <option value="none" >Select</option>
                                      <option value="First">First</option>
                                      <option value="Second">Second</option>
                                      <option value="Third" >Third</option>
                                      <option value="Fourth" >Fourth</option>
                                  </select> 
                                </div>
                              </div>
                            </div>
                      
                       <div class="form-group">
                              <div class="col-md-8">
                                <label class="col-md-4 control-label" for=
                                "idno"></label>

                                <div class="col-md-8">
                                 <button class="btn btn-mod btn-sm studsave" name="save" type="submit" ><span class="fa fa-save fw-fa"></span>  Save</button> 
                                 </div>
                              </div>
                            </div> 
                  </form>
       
                
                </div>
            </div>
        </div>
    </section>

    
