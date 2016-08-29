// library vars
$fa = .01;
$fs = .01;


//helper modules
use </home/anton/vex_projects/openREX/obiscad-master/obiscad/attach.scad>
use </home/anton/vex_projects/openREX/obiscad-master/obiscad/vector.scad>
use </home/anton/vex_projects/openREX/obiscad-master/obiscad/bcube.scad>
module miniround(size, radius)
{
$fn=50;
x = size[0]-radius/2;
y = size[1]-radius/2;

minkowski()
{
    cube(size=[x,y,size[2]]);
    cylinder(r=radius);
    // Using a sphere is possible, but will kill performance
    //sphere(r=radius);
}

}

module roundedRect(size, radius)
{
x = size[0];
y = size[1];
z = size[2];

linear_extrude(height=z)
hull()
{
    // place 4 circles in the corners, with the given radius
    translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);
}

}

module bar_component()
{
    
}

module c_channel_component(type)
{
    
}

module angle_component()
{
    
}

module bar( l = 25)
{
    
}

module plate( l = 35, w = 5)
{
    
}

module c_channel( l = 35, w = 2)
{
    
}

module angle( l = 35)
{
    
}

module standoff( l = .5)
{
    
}

module bolt( l = .25)
{
    
}

module keps_nut()
{
    
}

module nylock_nut()
{
    
}

module shaft( l = .25)
{
    shaft_dimensions = [ .125, .125, l];
    roundedRect(size = shaft_dimensions, radius = .0625);
}

module shaft_collar()
{
    
}

module motor_393()
{
    
}

module motor_269()
{
    
}

module pinion()
{
    
}

module hs_pinion()
{
    
}

module gear_36()
{
    
}

module hs_gear_36()
{
    
}

module gear_60()
{
    
}

module hs_gear_60()
{
    
}

module gear_84()
{
    
}

module hs_gear_84()
{
    
}

// TESTING ZONE

shaft( l = 12);
