#!/usr/bin/perl

$num_experiments = 10;
$num_trials_per_experiment = 1000000;

for ($j=0;$j<$num_experiments;$j++) {
$count_circle=0;
$count_all=0;
 for ($i=0;$i<$num_trials_per_experiment;$i++) {
                    # Assume a square dart board of dimension=A and a circle with radius=A/2 on it
  $range = 1000000; # Dimensions of the square
                    # Radius of the circle would be half the dimension of the square
  $x = rand($range);
  $y = rand($range);
  $dist = sqrt(($x-500000)**2+($y-500000)**2); # Calculate where the dart lands on the board

  if ($dist <= 500000.) { $count_circle++; } # If the thrown dart is inside the circle, it is a HIT
  $count_all++; # ALL THROWS
 }
 $piTemp=4.0*$count_circle/$count_all; # At the end, ratio of the HITS to ALL THROWS is proportional 
                                 # to areas of the circle and square (therefore to PI)
 $pi+=$piTemp;
}

$pi/=$num_experiments;
print "$pi\n";
