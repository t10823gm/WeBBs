#!/usr/bin/perl

use strict;

opendir(DIR,".");

#system("perl /home/ducky/graph_pac.d/delete_zero.pl .");

my %hash = ();
my $flag = 0;
my %name_hash = ();

while(my $filename = readdir(DIR)){
    if(substr($filename,-3) eq "ecd"){
#   if(substr($filename,-3) eq "cmt" || substr($filename,-3) eq "gnu" || substr($filename,-3) eq "out"){
	my $label = "";
	my @file_split = ();
	$label = $filename;
	substr($label,-4) = "";
#	print $label;

#	if($filename =~ /CELL/){
#	    @file_split = split(/Variable_/,$filename);
#	    print @file_split, "\n";
#	    $label = $file_split[1];
#	    substr($label,-4) = "";
#	    substr($label,0,5) = "";
#	    $label =~ s/CYTOPLASM\_//;
#	}
#	elsif($filename =~ /^[0-9]/){
#	    @file_split = split(/[\.\_]/,$filename);
#	    $label = $file_split[0] . "_" . $file_split[1] . "_" . $file_split[-2];
#	}
#	else{
#	    $label = "";
#	}
#	if($filename =~ /\_\_\_/){
#	    my @file_split = split(/\_+/,$filename);
#	    $label = $file_split[1];
#	#    print $file_split[1],"\n";
#	}
#	elsif($filename =~ /SR/){
#	    my @file_split = split(/\_+/,$filename);
#	    $label = $file_split[4] . "_" . $file_split[5];
#	#    print $file_split[4],"\_", $file_split[5],"\n";
#	}
#	elsif($filename =~ /^[0-9]/){
#	    my @file_split = split(/\./,$filename);
#	    $label = $file_split[0];
#	}
#	elsif($filename =~ /Value/){
#	    my @file_split = split(/[\_\.]+/,$filename);
#	    $label = $file_split[2] . "_" . $file_split[3] . "_" . $file_split[4];
#	}
#	elsif($filename =~ /dV/){
#	    my @file_split = split(/[\_\.]+/,$filename);
#	    $label = $file_split[2] . "_" . $file_split[3] . "_" . $file_split[5];
#	}
#	elsif($filename =~ /gating\_Activity/){
#	    my @file_split = split(/\_+/,$filename);
#	    $label = $file_split[2] . "_" . $file_split[3] . "_" . $file_split[4];
#	}
#	elsif(substr($
#	else{
#	    my @file_split = split(/\_+/,$filename);
#	    $label = $file_split[2] . "_" . $file_split[3];
#	#    print $file_split[2],"\_", $file_split[3],"\n";
#	}

	unless($label eq ""){
	    open(IN,$filename);	
	    my %avoid_duplicate = ();
	    my $flag2 = 0;
	    my $save = "";

	    $name_hash{$label} = $filename;

	    while(<IN>){
		if($_ =~ /^[0-9]/){
		 
		    my @splitted = split(/[\t\n]+/,$_);
		    $splitted[0] =~ /([0-9]\.[0-9]+)e/;
		    my $t = $1;
		    
		    $splitted[0] =~ /e([\+\-])([0-9]+)/;
		    if($1 eq "-"){
			for(my $i=0;$i<$2;$i++){
			    $t /= 10;
			}
		    }
		    elsif($2 > 0){
			for(my $i=0;$i<$2;$i++){
			    $t *= 10;
			}
		    }			
		    my $tmp = $t * 1000 + 0.5;
		    $t = int $tmp;
		    $t = $t/1000;		
		    
		    if($_ =~ /^0/){
			if($flag2 == 1){
			    last;
			}
#			elsif($flag == 0){
#			    push(@time,$t);
#			}
			$flag2 = 1;
			$save = $splitted[1];
		    }
		    else{			
			unless(exists $avoid_duplicate{$t}){
			    if($flag2 == 1){
				$flag2 = 0;
				push(@{$hash{$label}},$save);
			    }
			    push(@{$hash{$label}},$splitted[1]);
			    
#			    if($flag == 0){		 
#				push(@time,$t);
#			    }
			}
			$avoid_duplicate{$t} = 0;	
		    }	
		}
	    }
	    close(IN);
	    if($flag == 0){
		$flag = 1;
	    }
	}
    }
}

my %new_hash = ();
my @label_array = ();
my %length = ();

foreach my $key (sort keys %hash){
    my $a_length = @{$hash{$key}};
#    print $key,",",$a_length,"\n";
    $length{$a_length} = $key;
}
my $maximum = 0;

my @time = ();
my %avoiding = {};

foreach my $value (sort {$b <=> $a} keys %length){
    $maximum = $value;
#    print "xxxx", $length{$value},$maximum,"\n";
    
    open(TIM,$name_hash{$length{$value}});
    while(<TIM>){
       	if($_ =~ /^[0-9]/){
	    
	    my @splitted = split(/[\t\n]+/,$_);
	    $splitted[0] =~ /([0-9]\.[0-9]+)e/;
	    my $t = $1;
	    
	    $splitted[0] =~ /e([\+\-])([0-9]+)/;
	    if($1 eq "-"){
		for(my $i=0;$i<$2;$i++){
		    $t /= 10;
		}
	    }
	    elsif($2 > 0){
		for(my $i=0;$i<$2;$i++){
		    $t *= 10;
		}
	    }			
	    my $tmp = $t * 1000 + 0.5;
	    $t = int $tmp;
	    $t = $t/1000;		
	    
	    unless(exists $avoiding{$t}){
	#	print $t,"\n";
		push(@time,$t);
	    }
	    $avoiding{$t} = 0;
	}		    
    }
    close(TIM);
    my $tmp_length = @time;
#    print $tmp_length,"\n";
    last;
}

open(TMP,">tmp.txt");
print TMP "time,";
foreach my $t (@time){
    print TMP $t,"\,";
}
print TMP "\n";

foreach my $key (sort keys %hash){
    print TMP $key,",";
    push(@label_array,$key);
    
    my $i = 0;
    foreach my $value (@{$hash{$key}}){
	print TMP $value,",";
	my $t_label = $time[$i];
	#print $t_label,"\,";
	push(@{$new_hash{$t_label}},$value);
	$i++;
    }
    for(my $j=$i;$j<$maximum;$j++){
	print TMP "tab,";
	my $t_label = $time[$j];
	push(@{$new_hash{$t_label}},"tab");
    }
    print TMP "\n";
}
close(TMP);

open(OUT,">$ARGV[0]");
print OUT "time","\t";
foreach my $l (@label_array){
    print OUT $l,"\t";
}
print OUT "\n";

foreach my $t (sort {$a <=> $b} keys %new_hash){
    if($t =~ /[0-9]/){
#	my $tmp = 1000.0 * $t;
#	print OUT $tmp,"\t";
	print OUT $t,"\t";

	foreach my $v (@{$new_hash{$t}}){
	    if($v =~ /tab/){
		print OUT "\t";
	    }		 
	    else{
		print OUT $v,"\t";
	    }
	}
	print OUT "\n";
    }
    else{
	print OUT "\t";
    }
}
close(OUT);
system("rm tmp.txt");
closedir(DIR);
