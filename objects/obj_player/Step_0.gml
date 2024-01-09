//Teclas
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

#region Movimento e colisão
xspd = (right_key - left_key) * spd;
yspd = (down_key - up_key) * spd;

x += xspd;
y += yspd;
#endregion

#region Controle de sprite



if xspd == 0 and yspd == 0
{
	sprite_index = spr_player_idle;	
}
else
{
	sprite_index = spr_player_walking;
}

if xspd < 0
{
	image_xscale = -1;
}
if xspd > 0
{
	image_xscale = 1;	
}
#endregion