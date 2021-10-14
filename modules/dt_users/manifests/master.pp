class dt_users::master
{

    group 
    { 'masters':
        ensure => present,
        gid => '50',
    }
    user 
    {  'masters':
        ensure   => present,
        expiry => absent,
        managehome => true,
        shell => '/bin/bash',
        uid => '49',
        gid => 'masters',
       
    }

    file
    { '/home/masters': 
        ensure => directory,
        recurse => true,
        owner => 'masters',
        group => 'masters',
    }

    ssh_authorized_key 
    { 'masters@jmp.sg1.delatorre.network':
     
    	ensure => present,
  	user   => 'masters',
  	type   => 'ssh-rsa',
  	key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCekShkWBGexAeCgAjAcgnoQkFyuFwrrHvIsztHN4MGyQDa1s2PQrsoxnsH1Ude83MOXvaKHwEJA6xxVXpv+v6Jov81j6po2riDC9Vs+n+1+I2i3Cg0MENFNUZ3b5MFWOnZRMbbR2uTt7Av81N9vxyogcKMAeur9WeOs9BUs08sXGekYI5ePkUORqthe9t5/QA39tiFQTqMd5SL7gRvsdhZk745gHcpBirDaebatn6kIIq4OQamlB7yumlVEiCHNYzZmvl2QeU14yKp+307nBwdDbJglr5+ZP5OBeZSNrvXaQuYblAcu5ldFI9Tf3eM3rr1zWMkYkXJFoPLkDdQ94iT',  
    }

}
