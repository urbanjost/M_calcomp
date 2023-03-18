# M_calcomp
  _This is an old Calcomp-compatible graphics library that requires
  `fpm(Fortran Package Manager)` to build properly. If you were not
  specifically looking for a Calcomp look-alike this is not recommended
  for general use._
## Documentation   ![docs](docs/images/docs.gif)
### User
   - a simple [index](https://urbanjost.github.io/M_calcomp/man3.html) to
     the individual man-pages in HTML form

   - A single page that uses javascript to combine all the HTML
     descriptions of the man-pages is at 
     [BOOK_M_calcomp](https://urbanjost.github.io/M_calcomp/BOOK_M_calcomp.html).
<?
  <blockquote>
    <b>M_calcomp</b>(3fm) - [M_calcomp::INTRO] emulate old Calcomp graphics library (LICENSE:PD)
  </blockquote><a name="contents" id="contents"></a>
  <h3>CONTENTS</h3>
  <blockquote>
    <a href="#1">Synopsis</a><br />
    <a href="#2">Table Of Contents</a><br />
    <a href="#3">Introduction</a><br />
    <a href="#4">Calcomp Basic Software</a><br />
    <a href="#5">Calcomp General Functional Software</a><br />
    <a href="#6">Calcomp Scientific Functional Software</a><br />
    <a href="#7">Applications Routines</a><br />
    <a href="#8">Calcomp Code Migration Supplement</a><br />
    <a href="#9">Introduction</a><br />
    <a href="#10">Calcomp Basic Software</a><br />
    <a href="#11">Example</a><br />
    <a href="#12">A Sample Plotting Program</a><br />
    <a href="#13">Calcomp General Functional Software</a><br />
    <a href="#14">Calcomp Scientific Functional Software</a><br />
    <a href="#15">Application Routines</a><br />
    <a href="#16">Calcomp Man-pages</a><br />
    <a href="#17">Calcomp Setup</a><br />
    <a href="#18">Calcomp Supplement</a><br />
    <a href="#19">Moving Existing Calcomp Code</a><br />
    <a href="#20">Record Of Revisions</a><br />
    <a href="#21">Example</a><br />
    <a href="#22">License</a><br />
  </blockquote><a name="23" id="23">
  <h3>SYNOPSIS</h3></a> <a name="">
  <h4>THE CALCOMP GRAPHICS LIBRARY USER GUIDE</h4></a>
  <blockquote>
    <p>This is an interface that closely emulates a very early de-facto
    graphics standard called the "CALCOMP-compatible library" and is
    generally used to interface to older utilities that support CALCOMP
    interfaces, or to quickly resurrect codes that have CALCOMP calls
    in them. It is not recommended for new large code development.</p>

    <p>The CALCOMP library is a simple set of FORTRAN callable graphic
    routines that allows users to quickly construct plots. It was
    historically used principally to interface to purchased vendor
    software that often supplied a "CALCOMP library interface", and for
    quick development of codes that generated XY plots (that is right --
    products often could not produce graphics without being hooked up
    to the customer custom plotting interfaces!).</p>

    <p>Consult the supplement at the end of this guide for specific
    guidelines on how to convert existing user and vendor CALCOMP
    code.</p>

    <p>Revision 1.0.0: 07/01/91</p>
  </blockquote><a name="2" id="2">
  <h3>TABLE OF CONTENTS</h3></a>
  <blockquote>
    <p>The following sections are available ....</p>
  </blockquote><a name="9" id="9">
  <h4>INTRODUCTION</h4></a> <a name="10" id="10">
  <h4>CALCOMP BASIC SOFTWARE</h4></a>
  <blockquote>
    <table cellpadding="3">
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">PLOT</td>
       <td valign="bottom">- Move or draw to specified point, establish plot origin, update pen position and terminate plotting</td>
      </tr>
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">PLOTS</td>
       <td valign="bottom">- Initialization, specify output file unit number</td>
      </tr>
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">FACTOR</td>
       <td valign="bottom">- Adjusts the overall size of the plot</td>
      </tr>
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">WHERE</td>
       <td valign="bottom">- Returns current pen location</td>
      </tr>
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">NFRAME</td>
       <td valign="bottom">- Ends current frame and re-origins pen position</td>
      </tr>
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">SYMBOL</td>
       <td valign="bottom">- Plots annotation (text) and special symbols</td>
      </tr>
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">NUMBER</td>
       <td valign="bottom">- Plot decimal equivalent of a floating point number</td>
      </tr>
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">SCALE</td>
       <td valign="bottom">- Determine starting value and scale for an array to be plotted on a graph</td>
      </tr>
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">AXIS</td>
       <td valign="bottom">- Draws an annotated linear graph axis</td>
      </tr>
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">LINE</td>
       <td valign="bottom">- Scale and plot a set of X,Y values</td>
      </tr>
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">NEWPEN</td>
       <td valign="bottom">- Select new pen color</td>
      </tr>
      <tr valign="top">
       <td class="c1" width="6%" nowrap="nowrap">WIDTH</td>
       <td valign="bottom">- Set line thickness</td>
      </tr>
      <tr>
        <td></td>
      </tr>
    </table>Sample Plotting Program
  </blockquote><a name="13" id="13">
  <h4>CALCOMP GENERAL FUNCTIONAL SOFTWARE</h4></a>
  <blockquote>
    <table cellpadding="3">
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">CIRCL</td>
        <td valign="bottom">- Draws a circle, arc, or spiral</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">ELIPS</td>
        <td valign="bottom">- Draws an ellipse or elliptical (or circular) arc</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">DASHL</td>
        <td valign="bottom">- Draws dashed line connecting a series of data points</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">DASHP</td>
        <td valign="bottom">- Draws a dashed line to a specified point</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">FIT</td>
        <td valign="bottom">- Draws a curve through three points</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">GRID</td>
        <td valign="bottom">- Draws a linear grid</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">POLY</td>
        <td valign="bottom">- Draws an equilateral polygon</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">RECT</td>
        <td valign="bottom">- Draws a rectangle</td>
      </tr>
      <tr>
        <td></td>
      </tr>
    </table>
  </blockquote><a name="14" id="14">
  <h4>CALCOMP SCIENTIFIC FUNCTIONAL SOFTWARE</h4></a>
  <blockquote>
    <table cellpadding="3">
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">CURVX</td>
        <td valign="bottom">- Draws a function of X over a given range</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">CURVY</td>
        <td valign="bottom">- Draws a function of Y over a given range</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">FLINE</td>
        <td valign="bottom">- Draws a smooth curve through a set of data points</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">SMOOT</td>
        <td valign="bottom">- Draws a smooth curve through sequential data points</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">SCALG</td>
        <td valign="bottom">- Performs scaling for logarithmic plotting</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">LGAXS</td>
        <td valign="bottom">- Plots an annotated logarithmic axis</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">LGLIN</td>
        <td valign="bottom">- Draws data in either log-log or semi-log mode</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">POLAR</td>
        <td valign="bottom">- Draws data points using polar coordinates</td>
      </tr>
      <tr>
        <td></td>
      </tr>
    </table>
  </blockquote><a name="7" id="7">
  <h4>APPLICATIONS ROUTINES</h4></a>
  <blockquote>
    <table cellpadding="3">
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">CNTOUR</td>
        <td valign="bottom">- Makes a contour plot</td>
      </tr>
      <tr>
        <td></td>
      </tr>
    </table>
  </blockquote><a name="8" id="8">
  <h4>CALCOMP CODE MIGRATION SUPPLEMENT</h4></a> <a name="9" id="9">
  <h3>INTRODUCTION</h3></a>
  <blockquote>
    <p>This user guide describes the calling sequences and arguments
    for the FORTRAN-callable CALCOMP software subroutines. The routines
    do not produce a device dependent CALCOMP file but rather call the
    <b>M_draw</b>(3f) graphics module.</p>

    <p>CALCOMP divides their routines into three categories:</p>

    <pre>
    Basic, General Function, and Scientific Function.
<br />
    Differences between the implemented routines and the standard CALCOMP
    routines are:
<br />
     o All coordinate values should be greater than or equal to zero, and
       less than 100 inches. Values outside this range may result in
       unpredictable results (Negative values are possible if the
       frame coordinate origin is set first using the PLOT call).
<br />
     o The metalanguage output filename is "pdf", and uses FORTRAN
       unit 50 unless an appropriate alternate value is specified
       in the PLOTS routine call. The output filename may be specified
       using the environment variable CALCOMP_PDF.
<br />
     o A routine NFRAME is available for creating multiple frames for
       graphic devices other than pen plotters.
<br />
     o Color is supported via the NEWPEN routine
<br />
     o Line thickness is supported via the WIDTH routine
<br />
     o Frames will not plot to true inches unless specific steps are
       taken in the generation and post-processing of the plot file.
<br />
</pre>
  </blockquote>
  Other changes may be needed in existing CALCOMP code from vendors as
  CALCOMP has produced several versions of CALCOMP routines that vary in
  such ways as use of CHARACTER variables versus Hollerith, the number
  of parameters on SYMBOL calls, and the current pen position after a
  call to SYMBOL.
  <blockquote>
    <p>The CALCOMP subroutines were written for use with CALCOMP pen
    plotters and originally worked in units of inches for the mapping
    of the plot directly to the output device. There are two classes of
    CALCOMP subroutines-<b>-those</b> that accept user units and scale
    them to inches and those that require data to be directly in units
    of inches.</p>

    <p>Table 1 lists the CALCOMP subroutines that fall into each class.</p>
    <p>The main difference CALCOMP users will notice when using this
    CALCOMP library is that when the CALCOMP subroutines were incorporated
    into <b>M_DRAW</b>(3fm) the meaning of CALCOMP inches was altered
    to no longer mean a physical inch but just a unit-less measure
    (since <b>M_DRAW</b>(3fm) uses device-independent space and the
    graphics post processing procedures produce output for a number of
    graphics devices, some of which have a limited device space unlike
    pen plotters). THIS DIFFERENCE IS USUALLY ONLY OF SIGNIFICANCE TO
    USERS TRYING TO PRODUCE PLOTS USING TRUE INCHES.</p>

    <p>The graphics post processing procedures use the CALCOMP inches
    to determine the aspect ratio of the plot, and the plot is made as
    large as possible for a given device while maintaining the aspect
    ratio specified by the user CALCOMP calls. A parameter called SIZE
    is included with most graphics post-processor procedures which
    facilitates the scaling of plots to a specific size in inches. An
    example program shows how to use these parameters to get consistent
    frames in as close as possible to true inches.</p>

  </blockquote>
  <p>TABLE 1</p>
  <pre>
 Scaling versus Device units
<br />
  &gt;    Routines Which                    Routines Which Require
  &gt;    Perform Scaling                           Inches
  &gt; of User Data to Inches         (Data Must be Scaled to Inches)
  &gt; ______________________          _______________________________
  &gt;
  &gt;         SCALE                               PLOT
  &gt;         AXIS                                WHERE
  &gt;         LINE                                SYMBOL
  &gt;         DASHL                               NUMBER
  &gt;         FLINE                               CIRCL
  &gt;         SCALG                               ELIPS
  &gt;         LGAXS                               DASHP
  &gt;         LGLIN                               FIT
  &gt;         POLAR                               GRID
  &gt;                                             POLY
  &gt;                                             RECT
  &gt;                                             CURVX
  &gt;                                             CURVY
  &gt;                                             SMOOT
<br />
</pre><a name="10" id="10">
  <h3>CALCOMP BASIC SOFTWARE</h3></a>
  <blockquote>
    <p>The routines included in the CALCOMP Basic Software category
    are PLOT, PLOTS, FACTOR, WHERE, SYMBOL, NUMBER, SCALE, AXIS, LINE,
    WIDTH and NEWPEN.  NFRAME, an enhancement, is included here because
    it performs a basic function.</p>

    <p>Usually when examining existing CALCOMP code you will find it
    breaks down into two categories - that which produces XY plots
    and that which does almost everything in its own high-level
    routines and uses CALCOMP mostly just to draw lines with the PLOT
    command. Therefore you are likely not to need to be familiar with
    many of the CALCOMP routines described here.</p>

    <p>The majority of graphic applications are intended to produce
    an XY-plot. Usually the production of these graphs requires only a
    combination of the routines PLOTS (initialize), SCALE, AXIS, LINE,
    NFRAME and PLOT (terminate). Additional text can be added with SYMBOL,
    and options such as frame borders and general line drawing might be
    added with PLOT calls.</p>

    <p>When plotting requirements cannot be satisfied by using these
    subroutines, the code often calls the PLOT routine almost exclusively
    ( which basically draws a line or moves the pen directly in units
    of inches). This is often done by vendors so that it is very easy
    for them to interface to virtually any graphics library.</p>

    <p>Two other routines are often found in programs that do not call the
    higher level routines (such as the axis and contour plot routines):
    follows:</p>

    <table cellpadding="3">
      <!-- tsb: Two other routines are often found in programs that do not call the
 -->
      <tr>
        <td></td>
      </tr>
      <tr>
        <td></td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">FACTOR</td>
        <td valign="bottom">Adjusts the overall size of a plot.</td>
      </tr>
      <tr valign="top">
        <td class="c1" width="6%" nowrap="nowrap">WHERE</td>
        <td valign="bottom">Returns the current pen location.</td>
      </tr>
      <tr>
        <td></td>
      </tr>
    </table>
  </blockquote><a name="21" id="21">
  <h3>EXAMPLE</h3></a> <a name="12" id="12">
  <h4>A SAMPLE PLOTTING PROGRAM</h4></a>
  <blockquote>

    <p>To illustrate the use of the CALCOMP routines, a sample program
    is provided which will produce the graph shown below. The only
    assumption made is that the 24 pairs of TIME and VOLTAGE data values
    are contained in a file of 24 records.</p>

    <pre>
   program sample
   use M_calcomp
   !  Reserve space for 24 data values plus two additional locations
   !  required by the SCALE, AXIS, and LINE subroutines.
   dimension xarray(26),yarray(26)
   !  Perform initialization.
   call plots(0.0,10.0,0.0,10.0)
   !  Read 24 pairs of TIME and VOLTAGE from an input file into two arrays
   !  with names XARRAY and YARRAY.
   read (5,25)(xarray(i),yarray(i),i=1,24)
   25    format(2f6.2)
   !  Establish a new origin one-half inch higher than the point where the
   !  pen was initially placed so that the annotation of the TIME axis will
   !  fit between the axis and the edge of the plotting surface.
   call plot(0.0,0.5,-3)
   !  Compute scale factors for use in plotting the TIME values within a
   !  five-inch plotting area.
   call scale(xarray,5.0,24,1)
   !  Compute scale factors for use in plotting the VOLTAGE data values
   !  within a six-inch plotting area (i.e., the data pairs of TIME,
   !  VOLTAGE will plot within a five-by-six inch area).
   call scale(yarray,6.0,24,1)
   !  Draw the TIME axis (5 inches long), using the scale factors computed
   !  in statement 40 to determine the milliseconds at each inch along the
   !  TIME axis.
   call axis(0.0,0.0,'time in milliseconds',-20,5.0,0.0,xarray(25),xarray(26))
   !  Draw the VOLTAGE axis (6 inches long) using the scale factors
   !  computed in statement 50 to determine the voltage at each inch along
   !  the VOLTAGE axis.
   call axis(0.0,0.0,'voltage',7,6.0,90.0,yarray(25),yarray(26))
   !  Plot VOLTAGE vs TIME, drawing a line between each of the 24 scaled
   !  points and a symbol X at every other point.
   call line(xarray,yarray,24,1,2,4)
   !  Plot the first line of the graph title.
   call symbol(0.5,5.6,0.21,'performance test',inteq,0.0,16)
   !  Plot the second line of the graph title.
   call symbol(0.5,5.2,0.14,'ref. no. 1623-46',inteq,0.0,16)
   !  Terminate the plot.
   call nframe()
   !  Close the plot file.
   CALL PLOT(0.0,00.0,999)
   !  Terminate Program execution.
   end program sample
<br />
</pre>
  </blockquote><a name="13" id="13">
  <h3>CALCOMP GENERAL FUNCTIONAL SOFTWARE</h3></a>
  <blockquote>
    <p>The routines included in the CALCOMP General Functional
    software category are CIRCL, DASHL, DASHP, ELIPS, FIT, GRID,
    POLY and RECT. These routines call the Basic routines and should
    be viewed as an extension of the Basic library rather than as a
    separate entity.</p>
  </blockquote><a name="14" id="14">
  <h3>CALCOMP SCIENTIFIC FUNCTIONAL SOFTWARE</h3></a>
  <blockquote>
    <p>The routines included in the CALCOMP Scientific Functional
    software category are CURVX, CURVY, FLINE, LGAXS, LGLIN, POLAR,
    SCALG, and SMOOT. These routines call the Basic routines and should
    be viewed as an extension of the Basic library.</p>
  </blockquote><a name="15" id="15">
  <h3>APPLICATION ROUTINES</h3></a>
  <blockquote>
    <p>The routines included in this category draw, on a single call,
    complete plots of types useful to engineers. They are not part
    of the software from CALCOMP, but they do use the Basic CALCOMP
    subroutines.</p>
  </blockquote><a name="">
  <h4>CNTOUR</h4></a> <a name="16" id="16">
  <h3>CALCOMP MAN-PAGES</h3></a>
  <blockquote>
    <p>If the man-pages have been installed properly, you should be able
    to list all the CALCOMP-related pages by entering</p>
    <pre>
   man -s 3m_calcomp -k .
<br />
</pre>
   There should be a directory in the source for the GPF (General Purpose
   Fortran) collection that contains a collection of example CALCOMP
   programs in
    <pre>
   PROGRAMS/CALCOMP
<br />
</pre>You can list all the man-pages sorted by section using
    <pre>
   #!/bin/bash
   export MANWIDTH=80
   for NAME in $(man -s 3m_calcomp -k . |sort -k 4|awk '{print $1}')
   do
      man -s 3m_calcomp $NAME |col -b
   done
<br />
</pre>
  </blockquote><a name="17" id="17">
  <h3>CALCOMP SETUP</h3></a>
  <blockquote>
    <p>Since this version of a CALCOMP-compatible library uses the
    <b>M_draw</b>(3f) graphic primitives, the same environment variables
    can be used to select the type and size of output. For example:</p>
    <pre>
   # where the M_draw(3f) font files are located
   export M_DRAW_FONTLIB=/usr/share/hershey
<br />
   # X11
   # set output to Poskanzer pixel map format at specified size
   export M_DRAW_DEVICE='x11'
   # run a program
   demo_general
<br />
   # There are many output formats available (Adobe PDF, PostScript, SVG, ...)
<br />
   # POSKANZER ASCII FILES (one of the harder ones to use in this case)
   # set output to Poskanzer pixel map format at specified size
   export M_DRAW_DEVICE='p3 850 1100'
   # the name of the output file
   export M_DRAW_OUTPUT=calcomp.p3
<br />
   # optionally set up the virtual size in inches of the calcomp drawing surface
   export CALCOMP_XMIN CALCOMP_XMAX CALCOMP_YMIN CALCOMP_YMAX
   CALCOMP_XMIN=0
   CALCOMP_XMAX=8.5
   CALCOMP_YMIN=0
   CALCOMP_YMAX=11
<br />
   # run a program
   demo_general
   # split pixmap file into individual drawings
    csplit -f P3. -k calcomp.p3 '%^P3%' '/^P3/' '{999}' 2&gt;&amp;1 &gt;/dev/null
<br />
</pre>
  </blockquote><a name="18" id="18">
  <h3>CALCOMP SUPPLEMENT</h3></a> <a name="19" id="19">
  <h4>MOVING EXISTING CALCOMP CODE</h4></a>
  <blockquote>
    <p>The CALCOMP plot library emulates the interface originally leased
    from California Computer Products, Inc; and had been available in a
    very similar form on the old CDC 7600 Super Computers. Of course,
    this similarity is intentional. This library is trying to provide
    a consistent programming environment wherever possible.</p>

    <p>All of the subroutines from the 7600 version of the CALCOMP library
    have been included in this version; although plots generated will
    not always look exactly the same as those produced on the 7600s.</p>

    <p>The CALCOMP library is interfaced to locally developed routines
    (called primitives) which produce plots using the <b>M_DRAW</b>(3fm)
    module. This allows CALCOMP-based code to generate output which can
    be sent to any supported <b>M_DRAW</b>(3fm) output device.</p>

    <p>CALCOMP is not the recommended graphics package for major new
    program development.</p>

    <p>CALCOMP is being provided to meet certain special requirements:</p>
    <blockquote>
      <table cellpadding="3">
        <!-- tsb: CALCOMP is being provided to meet certain special requirements:
 -->
        <tr>
          <td></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr valign="top">
          <td width="4%">1.</td>
          <td>To facilitate the migration of user code that already uses a CALCOMP-like package to new machines.</td>
        </tr>
        <tr valign="top">
          <td width="4%">2.</td>
          <td>To support interfaces to non-inhouse code. Such code may often already support a set of CALCOMP-like calls.</td>
        </tr>
        <tr valign="top">
          <td width="4%">3.</td>
          <td>Applications where a simple portable interface is more important than powerful graphics capabilities.</td>
        </tr>
        <tr>
          <td></td>
        </tr>
      </table>
    </blockquote>
    <p>There are no plans to provide local enhancements to CALCOMP, and
    capabilities such as high-level charting routines will not be made
    available with CALCOMP. Those involved in program conversions and
    development are urged to consider long-term graphics requirements
    in deciding which package to use (CALCOMP or an alternative).</p>

    <p>The CALCOMP software was initially developed to drive only CALCOMP
    plotters. In general, the calls produced plots directly in inches
    (A call to draw a line one unit long produced a one-inch line on
    the plotter).</p>

    <p>With the interfacing of CALCOMP to the <b>M_DRAW</b>(3f) module
    graphics system (which provides the ability to obtain output on a
    wide range of devices), the meaning of units in the CALCOMP library
    has undergone a change. CALCOMP Inches, therefore, may not translate
    directly into physical inches on a pen plotter.</p>

    <p>Important differences exist between this CALCOMP and "standard"
    CALCOMP interfaces third-party software often provides interfaces
    to. The format of the following primary example program can be used
    as a guide as to how to nullify the affects of these differences.</p>
    <pre>
  DIFFERENCES FROM 7600 CALCOMP LIBRARIES
<br />
  1. For subroutines SYMBOL, AXIS, and LGAXS, the parameter used to
     specify text or title information (IBCD) has been changed to be
     type CHARACTER to be consistent with ANSI 77 FORTRAN. Data for these
     arguments should be changed to be type CHARACTER (although use of
     a Hollerith string or INTEGER array may currently work, their use is
     not recommended, and there are no plans to support this usage).
<br />
  2. For subroutine SYMBOL on the 7600s, there is a "STANDARD" call
     (used to plot a text string) and a "SPECIAL" call (used to plot a
     single symbol). To Accommodate CHARACTER data and both versions of
     the call to SYMBOL, the calling sequence was modified to have 7
     arguments. All programs being converted from the 7600
     -MUST- make this change to the call to SYMBOL.
<br />
     The new calling sequence is
<br />
           CALL SYMBOL(XPAGE,YPAGE,HEIGHT,IBCD,INTEQ,ANGLE,NCHAR)
<br />
</pre>
    <blockquote>
      Where XPAGE, YPAGE, HEIGHT, and ANGLE are defined as on the 7600s,
      and the user guide can be consulted for details of their use.

      <p>The last parameter NCHAR is used as a flag to specify whether a
      text string or a single symbol is being plotted. If NCHAR is less
      that zero, a single symbol is plotted regardless of the contents
      of IBCD. If NCHAR is equal to or greater than zero the string
      in IBCD is used (FAILURE TO SPECIFY THE PROPER VALUE FOR NCHAR,
      INTEQ OR IBCD WILL CAUSE ERRONEOUS RESULTS).</p>

      <p>To use SYMBOL to plot text for titles, captions, or legends--</p>

      <pre>
        IBCD--Contains the text string as CHARACTER data.
<br />
        INTEQ--Should be set to 999 .
               (THE ACTUAL VALUE IS NOT USED FOR ANYTHING.)
<br />
        NCHAR--Is the number of characters in IBCD.
<br />
</pre>For example, the following call to SYMBOL will result in the characters
      <pre>
         CHARACTER GRLBL*8
         GRLBL = 'TITLE 10'
         CALL SYMBOL(1.0,1.0,0.14,GRLBL,999,0.0,8)
<br />
</pre>To use SYMBOL to plot a single symbol or character--
      <pre>
        IBCD--  A dummy CHARACTER variable or string should be used
                THE ACTUAL VALUE IS NOT USED FOR ANYTHING.)
<br />
        INTEQ--Contains the INTEGER EQUIVALENT of the desired symbol.
               If INTEQ has a value of 0 (zero) through 14, a centered
               symbol (where XPAGE and YPAGE specify the center of
               the symbol) is produced. The symbol table is unchanged
               from that on the 7600s, so the table on page 2-10 of the
               7600 CALCOMP guide is still applicable.
<br />
        NCHAR--Determines whether the pen is up or down during the move
               to XPAGE and YPAGE. (IT MUST BE NEGATIVE.)
<br />
               When NCHAR is--
<br />
                -1, the pen is UP during the move.
                -2 or less, the pen is DOWN during the move.
<br />
</pre>
   For example, the following call to SYMBOL will result in special symbol
   number 5 being output with its center at XY coordinates of (1.0,1.0).
      <pre>
        CALL SYMBOL(1.0,1.0,0.14,DUMMY,5,0.0,-1)
<br />
</pre>
    </blockquote>
    <table cellpadding="3">
      <tr valign="top">
        <td width="4%">3.</td>
        <td>
          Because of interfacing the CALCOMP routines to the device
          dependent <b>M_DRAW</b>(3fm)<b>-based</b> post-processing
          procedures, some limit for the maximum plot size had to
          be established. For the CALCOMP library, a plot frame is
          limited to a maximum size in either the X or Y direction of
          100 "CALCOMP inches". (The actual frame size on a particular
          output medium is dependent on the method of post- processing
          and the device selected.)

          <p>Each plot frame is usually initialized by a call to
          subroutine PLOT with the third argument (IPEN) equal to
          <b>-2</b> or <b>-3</b>. For example,</p>
          <pre>
          CALL PLOT(0.5,1.0,-3)
<br />
</pre>
   Says to move 0.5 inches in the X-direction and 1.0 inch in the
   Y-direction before establishing a new origin. When establishing
   a new origin, all offsets are included inside the frame boundary,
   and therefore, they are part of the plot frame size. If any X or Y
   coordinate value (Plus the appropriate offset) exceeds the 100 inch
   limit, results are unpredictable. In programs where X and Y coordinate
   values exceed the scaling limit, a call to the CALCOMP routine FACTOR
   may be used to scale down the plot size appropriately. Each plot
   frame is terminated by a call to subroutine NFRAME; no additional
   offset is added here.

   <p>Knowledge of the plot frame size in the X and Y directions will be
   needed to scale pen plots to actual inches when the device dependent post
   processing procedures are available. The following example
   is provided to assist in understanding how the frame size
   is determined.</p>

          <pre>
      &gt;   PROGRAM CALTEST
      &gt;   USE M_calcomp
      &gt;   CALL PLOTS()           ! perform initialization
      &gt;   CALL BORDER(8.5,11.0)  ! establish a consistent frame size
      &gt;!  Calls to generate first plot go here
      &gt;!  where all calls stay inside area established by border
      &gt;!    .
      &gt;!    .
      &gt;   CALL NFRAME()          ! terminate first plot
      &gt;   CALL BORDER(8.5,11.0)  ! establish a consistent frame size
      &gt;!  In next plot negative values up to (-1,-2) are needed
      &gt;   CALL PLOT(1.0,2.0,-3) ! establish origin for second plot
      &gt;!  To stay in the border no numbers greater than XBORDER-1 in X
      &gt;!  or YBORDER-2 can be used
      &gt;!  Calls to generate second plot go here
      &gt;!    .
      &gt;!    .
      &gt;   CALL NFRAME()          ! terminate second plot
      &gt;   CALL PLOT(0.0,0.0,999)! close the plot file
      &gt;   END PROGRAM CALTEST
      &gt;   SUBROUTINE BORDER(XBORDER,YBORDER)
      &gt;!  Must be called with same values throughout entire program
      &gt;!  or not all frames will plot to same scale.
      &gt;!  Draw a box inside of which all frames can appear
      &gt;   CALL PLOT(XBORDER,0.0,    2)
      &gt;   CALL PLOT(XBORDER,YBORDER,2)
      &gt;   CALL PLOT(0.0,    YBORDER,2)
      &gt;   CALL PLOT(0.0,    0.0,    2)
      &gt;   END SUBROUTINE BORDER
<br />
</pre>
        </td>
      </tr>
      <tr valign="top">
        <td width="4%">4.</td>
        <td>
          All coordinate values (XPAGE, YPAGE for example) should
          be greater than or equal to zero relative to the original
          frame origin. Negative values will be clipped or might cause
          post-processor errors. (Although this was not a requirement
          on the 7600s, it is necessary because metafiles must contain
          only positive values and it would be very inefficient to store
          each frame's data and then translate all the values to positive
          numbers once the frame was finished and the largest negative
          numbers in the frame could be identified.

          <table width="100%" cellpadding="3">
            <!-- tsb: All coordinate values (XPAGE, YPAGE for example) should be greater
 -->
            <tr>
              <td></td>
            </tr>
            <tr>
              <td></td>
            </tr>
            <tr valign="top">
              <td width="4%">6.</td>
              <td>Subroutine PLOTS must still be the first CALCOMP
              subroutine called. It performs various initialization
              functions and should be called only one time per program
              execution. Although some of the values are not used,
              they are maintained for compatibility purposes.</td>
            </tr>
            <tr valign="top">
              <td width="4%">7.</td>
              <td>Subroutine CNTOUR (Which was developed at the
              Westinghouse Research Laboratories) is available in the
              CALCOMP library. The plot produced by CNTOUR will look
              different from that produced on the 7600s since the legend
              is placed at the top of the plot. If more that 20 contours
              are used, the legend could overwrite the plot. A limit
              of 6.5 inches must be observed for the height parameter
              (HGT).</td>
            </tr>
            <tr>
              <td></td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td></td>
      </tr>
    </table>
  </blockquote><a name="20" id="20">
  <h3>RECORD OF REVISIONS</h3></a>
  <blockquote>
    <table cellpadding="3">
      <tr valign="top">
        <td class="c1" colspan="2">06/24/85</td>
      </tr>
      <tr valign="top">
        <td width="4%"></td>
        <td>Preliminary release was made for COS.</td>
      </tr>
      <tr valign="top">
        <td class="c1" colspan="2">07/11/89</td>
      </tr>
      <tr valign="top">
        <td width="4%"></td>
        <td>The routine NEWPEN may be used to select color.</td>
      </tr>
      <tr>
        <td></td>
      </tr>
    </table><!-- .nf -->
    <pre>
    07/01/91   The first release of the documentation on UNICOS.
    <!--
               Output file goes to default filename "pdf". User
               may specify the output filename with the environment
               variable CALCOMP_PDF.
    -->
<br />
</pre>
  </blockquote><a name="21" id="21">
  <h3>EXAMPLE</h3></a>
  <blockquote>
    Sample program:
    <pre>
   program demo_M_calcomp
   use M_calcomp
   ! 07/30/69
   real              :: x(104), y(104)
   character(len=40) :: msg
   integer,parameter :: kin = 50
   equivalence(x(1),xl),(y(1),yl)
   9007 format(7(1X,F9.3),F7.1)
      call make_c_qa4()   ! create datafile
      f = 1.0
      ipn = 2
      call plots(0.0,10.0,0.0,10.0)
   !-----------------------------------------------------------------------
      open(unit=kin,file='qa4.dat',action="read")
      NEXTREAD: do
         read(kin,9001) nrec, msg
         9001 format(1X,I2,7X,A40)
         write(*,*)'NREC=',nrec,'MSG=',trim(msg)
         select case(adjustl(msg))
   !-----------------------------------------------------------------------
          case('DATA')
            do i = 1,nrec
               read(kin,9007) x(1),y(1),x(2),y(2),x(3),y(3),x(4),y(4)
               do j = 1,4
                  if(x(j).eq.0)then
                     if(y(j).eq.0)then
                        ipn = 3
                        cycle
                     endif
                  endif
                  call plot(x(j),y(j),ipn)
                  ipn = 2
               enddo
            enddo
   !-----------------------------------------------------------------------
          case('CIRCL')
            do i = 1,nrec
               read(kin,9007) xl,yl,tho,thf,ro,rf,di
               call circl(xl,yl,tho,thf,ro,rf,di)
            enddo
   !-----------------------------------------------------------------------
          case('DASHL')
            do i = 1,nrec
               read(kin,9009) x(1),y(1),npts,inc
               9009 format(2(1X,F9.3),1X,I3,7X,I1)
               j1 = inc+1
               j2 = inc*npts+1-inc
               do j = j1,j2,inc
                  read(kin,9007) x(j),y(j)
               enddo
               j = j2+inc
               x(j) = 0.
               y(j) = 0.
               j = j+inc
               x(j) = 1.
               y(j) = 1.
               call dashl(x,y,npts,inc)
            enddo
   !-----------------------------------------------------------------------
          case('DASHP')
            do i = 1,nrec
               read(kin,9007) xl,yl,d
               call dashp(xl,yl,d)
            enddo
   !-----------------------------------------------------------------------
          case('ELIPS')
            do i = 1,nrec
               read(kin,9012) xl,yl,rma,rmi,a,th0,thf,ipen
               9012 format(7(1X,F9.3),1X,I1)
               call elips(xl,yl,rma,rmi,a,tho,thf,ipen)
            enddo
   !-----------------------------------------------------------------------
          case('FIT')
            do i = 1,nrec
               read(kin,9007) x(1),y(1),x(2),y(2),x(3),y(3)
               call fit(x(1),y(1),x(2),y(2),x(3),y(3))
            enddo
   !-----------------------------------------------------------------------
          case('GRID')
            do i = 1,nrec
               read(kin,9014) xl,yl,dx,dy,nx,ny
               9014 format(4(1X,F9.3),2(1X,I2,7X))
               call grid(xl,yl,dx,dy,nx,ny)
            enddo
   !-----------------------------------------------------------------------
          case('POLY')
            do i = 1,nrec
               read(kin,9007) xl,yl,sl,sn,a
               call poly(xl,yl,sl,sn,a)
            enddo
   !-----------------------------------------------------------------------
          case('RECT')
            do i = 1,nrec
               read(kin,9021) xl,yl,h,w,a,ipen
               9021 format(5(1X,F9.3),1X,I2)
               call rect(xl,yl,h,w,a,ipen)
            enddo
   !-----------------------------------------------------------------------
          case('SYMBOL')
            do i = 1,nrec
               read(kin,9016) xl,yl,h,msg,inc
               9016 format(3(1X,F9.3), A40,1X,I3)
               read(kin,9017) a,nc
               9017 format(1X,F9.3,1X,I2)
               if(inc.lt.0)cycle NEXTREAD
               call symbol(xl,yl,h,msg,inc,a,nc)
            enddo
   !-----------------------------------------------------------------------
          case('1100')
            do i = 1,nrec
               read(kin,9007) xl,yl
               call plot(xl,yl,-3)
            enddo
   !-----------------------------------------------------------------------
          case('FACTOR')
            do i = 1,nrec
               read(kin,9007) f
               call factor(f)
            enddo
   !-----------------------------------------------------------------------
          case('END')
            call factor(1.)
            call plot(20.,0.,999)
            exit NEXTREAD
   !-----------------------------------------------------------------------
          case default
            write(*,*)'unknown keyword ',trim(msg)
   !-----------------------------------------------------------------------
         end select
   !-----------------------------------------------------------------------
      enddo NEXTREAD
      close(unit=kin,status='delete')
   !-----------------------------------------------------------------------
   contains
<br />
   subroutine make_c_qa4()
   integer,parameter :: io=40
   open(unit=io,file='qa4.dat',action="write")
   write(io,'(a)')'  1                RECT'
   write(io,'(a)')' 1.        1.        9.         7.       0.         3'
   write(io,'(a)')'  7                SYMBOL'
   write(io,'(a)')' 1.5       9.5       .14      SAMPLE OF GENERAL SUBROUTINES PACKAGE    999'
   write(io,'(a)')' 0.        37'
   write(io,'(a)')' 2.25      9.        .105     CIRCL                                    999'
   write(io,'(a)')' 0.         6'
   write(io,'(a)')' 5.75      9.        .105     ELIPS                                    999'
   write(io,'(a)')' 0.         5'
   write(io,'(a)')' 2.25      6.5       .105     FIT, DASHP                               999'
   write(io,'(a)')' 0.        11'
   write(io,'(a)')' 5.75      6.5       .105     POLY                                     999'
   write(io,'(a)')' 0.         4'
   write(io,'(a)')' 3.75      4.25      .105     GRID, DASHL                              999'
   write(io,'(a)')' 0.        12'
   write(io,'(a)')' 2.        1.1       .07      THE BORDER IS DRAWN WITH RECT            999'
   write(io,'(a)')' 0.        29'
   write(io,'(a)')'  3                CIRCL'
   write(io,'(a)')' 3.25      8.        0.        720.      .75       .25       0.'
   write(io,'(a)')' 3.25      8.        0.        360.      .75       .25       1.'
   write(io,'(a)')' 3.35      8.        0.        360.      .85       .85       0.'
   write(io,'(a)')'  6                ELIPS'
   write(io,'(a)')' 6.5       8.        .5        .7        0.        0.        360.      3'
   write(io,'(a)')' 6.6       8.        .6        .6        0.        0.        360.      3'
   write(io,'(a)')' 6.7       8.        .7        .5        0.        0.        360.      3'
   write(io,'(a)')' 6.8       8.        .8        .4        0.        0.        360.      3'
   write(io,'(a)')' 6.9       8.        .9        .3        0.        0.        360.      3'
   write(io,'(a)')' 7.        8.        1.        .2        0.        0.        360.      3'
   write(io,'(a)')'  3                DATA'
   write(io,'(a)')' 0.        0.        1.5       5.        1.5       5.5       2.375     6.'
   write(io,'(a)')' 3.5       6.125     2.625     5.5       1.5       5.5       0.        0.'
   write(io,'(a)')' 1.5       5.        2.625     5.        3.5       5.625     0.        0.'
   write(io,'(a)')'  1                  DASHP'
   write(io,'(a)')' 2.375     5.625     .1'
   write(io,'(a)')'  1                  DATA'
   write(io,'(a)')' 1.5       5.        1.5       5.        1.5       5.        0.       0'
   write(io,'(a)')'  2                  DASHP'
   write(io,'(a)')' 2.375     5.625     .1'
   write(io,'(a)')' 2.375     6.125     .1'
   write(io,'(a)')'  2                FIT'
   write(io,'(a)')' 2.625     5.        2.5       5.25      2.625     5.5'
   write(io,'(a)')' 3.5       5.625     3.375     5.875     3.5       6.125'
   write(io,'(a)')' 10                  POLY'
   write(io,'(a)')' 5.75      5.        .35       3.        0.'
   write(io,'(a)')' 5.75      5.        .35       4.        0.'
   write(io,'(a)')' 5.75      5.        .35       5.        0.'
   write(io,'(a)')' 5.75      5.        .35       6.        0.'
   write(io,'(a)')' 5.75      5.        .35       7.        0.'
   write(io,'(a)')' 5.75      5.        .35       8.        0.'
   write(io,'(a)')' 5.75      5.        .35       9.        0.'
   write(io,'(a)')' 5.75      5.        .35       10.       0.'
   write(io,'(a)')' 5.75      5.        .35       11.       0.'
   write(io,'(a)')' 5.75      5.        .35       12.       0.'
   write(io,'(a)')'  2                GRID'
   write(io,'(a)')' 1.5       2.        .25       .25       24         8'
   write(io,'(a)')' 1.51      1.99      1.5       1.         4         2'
   write(io,'(a)')'  1                DASHL'
   write(io,'(a)')' 1.75      2.25       11       1'
   write(io,'(a)')' 2.5       3.75'
   write(io,'(a)')' 2.75      3.25'
   write(io,'(a)')' 3.        3.5'
   write(io,'(a)')' 3.5       2.75'
   write(io,'(a)')' 4.        2.5'
   write(io,'(a)')' 4.25      3.25'
   write(io,'(a)')' 5.25      2.75'
   write(io,'(a)')' 5.5       3.75'
   write(io,'(a)')' 6.5       2.5'
   write(io,'(a)')' 7.25      3.5'
   write(io,'(a)')'                    END'
   close(unit=io)
   end subroutine make_c_qa4
<br />
   end program demo_M_calcomp
</pre>
  </blockquote><a name="22" id="22">
  <h3>LICENSE</h3></a>
  <blockquote>
    Public Domain
  </blockquote>
  <hr />
  <table width="100%">
    <tr>
      <td width="33%"></td>
      <td width="33%" align="center">M_calcomp (3m_calcomp)</td>
      <td class="c2" align="right" width="33%">December 29, 2020</td>
    </tr>
  </table><span class="c3">Generated by <a href="http://www.squarebox.co.uk/download/manServer.shtml">manServer 1.08</a> from
  516ba989-0954-4676-a49f-d6be9a4a3f9b using man macros.</span><br />
  <br />
  <div class="c4"><img src="images/M_calcomp.gif" /></div>M_calcomp.3m_calcomp.html
