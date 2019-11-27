clear
clc, close all;



BODY_THICKNESS = 2.5;
GIRL_BODY_THICKNESS = 2.5;

BIKE_THICKNESS = 1.5;


yellow_color = [0.80,0.80,0.00];
brown_color = [0.59,0.29,0.00];
gray_color = [0.80,0.75,0.71];

n = 60; 
theta = linspace(0,2*pi,n);
theta = fliplr(theta);

pedal_radius = 1.1;
back_pedal_radius = 0.5;
outer_pedal_radius = 1.5;

bag_radius = 2;

head_radius = 1.0;


wheel_radius = 3.3;
b = 2.7;
c = 0.6;
d = 0.4;


% Bike X and Y line plots
pedal_X = pedal_radius * cos(theta); % x axis for pedal
pedal_Y = pedal_radius * sin(theta); % y axis for pedal

outer_pedal_X = outer_pedal_radius * cos(theta); % x axis for pedal
outer_pedal_Y = outer_pedal_radius * sin(theta); % y axis for pedal

back_pedal_X = -7 + back_pedal_radius * cos(theta); % x axis for pedal
back_pedal_Y = back_pedal_radius * sin(theta); % y axis for pedal

front_wheel_X = 7 + wheel_radius * cos(theta); % x axis for front wheel
front_wheel_Y = wheel_radius * sin(theta); % y axis for front wheel

back_wheel_X = -7 + wheel_radius * cos(theta); % x axis for back wheel
back_wheel_Y = wheel_radius * sin(theta); % y axis for back wheel

upper_bike_chain_X = [-7, 0]; % x axis for upper bike chain
upper_bike_chain_Y = [0.5, 1.1]; % y axis for upper bike chain

lower_bike_chain_X = [-7, 0]; % x axis for lower bike chain
lower_bike_chain_Y = [-0.5, -1.1]; % y axis for lower bike chain

bike_chasis_X = [0, -3, 5, 0]; % x axis for bike chasis
bike_chasis_Y = [0, 4, 4, 0]; % y axis for bike chasis

front_wheel_frame_X = [5, 7]; % x axis for front wheel frame
front_wheel_frame_Y = [4, 0];

back_wheel_frame_X = [-3, -7];
back_wheel_frame_Y = [4, 0];

bike_handle_X = [5, 4];
bike_handle_Y = [4, 5.8];

bike_seat_X = [-3, -4, -5.0, -2.5];
bike_seat_Y = [4, 5.5, 5.5, 5.5];

bike_psgr_seat_X = [-7, -8.5, -8.5, -9.5, -7];
bike_psgr_seat_Y = [0, 3, 5, 5, 5];



%  Human Body X and Y line plots
% Boy Body
upper_leg_arc_theta = linspace(5.5,(1/5) * pi,n);
bag_theta = linspace(20, 2 * (-135/360) * pi,n);

upper_leg_arc_X = 1 + pedal_radius * cos(upper_leg_arc_theta);
upper_leg_arc_Y = 4 + pedal_radius * sin(upper_leg_arc_theta);

boy_head_X = 1 + head_radius * cos(theta);
boy_head_Y = 9 + head_radius * sin(theta);

boy_back_X = [-4, 0];
boy_back_Y = [5.5, 8];

boy_upper_arm_X = [0, 1.6];
boy_upper_arm_Y = [8, 6.3];

boy_lower_arm_X = [1.6, 4];
boy_lower_arm_Y = [6.3, 5.8];


boy_upper_arm_2_X = [0, -2.5];
boy_upper_arm_2_Y = [8, 10];

boy_arm_arc_theta =  linspace( 0.3, 2 * (100/360) * pi, n/2);
boy_arm_arc_X = -2.5 + 3 * cos(boy_arm_arc_theta); % Chenge radius to constant
boy_arm_arc_Y = 10 + 3 * sin(boy_arm_arc_theta);

boy_arm_arc_X = fliplr(boy_arm_arc_X);
boy_arm_arc_Y = fliplr(boy_arm_arc_Y);


bag_X = -2 + bag_radius * cos(bag_theta);
bag_Y = 7 + bag_radius * sin(bag_theta);



% Girl Body
girl_head_X = -7 + (head_radius - 0.2)* cos(theta);
girl_head_Y = 10 + (head_radius - 0.2)* sin(theta);

girl_back_X = [-7, -7];
girl_back_Y = [5, 8];

girl_arms_X = [-7, -8.5, -7, -5.5, -7];
girl_arms_Y = [5, 6.5, 8, 6.5, 5];

girl_neck_X = [-7, -7];
girl_neck_Y = [8, 9];

girl_legs_X = [-7, -6.8, -8, -6, -5, -7];
girl_legs_Y = [0, 5, 5, 5, 5, 0];


% Father Body 

% Head
father_head_X = -123.3 + (head_radius + 0.3)* cos(theta);
father_head_Y = 8.3 + (head_radius + 0.3)* sin(theta);

% Legs
% First Leg
father_first_lower_leg_X = [-135, -132];
father_first_lower_leg_Y = [-3.3, -0.5];

father_first_upper_leg_X = [-132, -131];
father_first_upper_leg_Y = [-0.5, 3];

% Second Leg
father_second_lower_leg_X = [-127, -127];
father_second_lower_leg_Y = [-0, -3.3];

father_second_upper_leg_X = [-131.5, -127];
father_second_upper_leg_Y = [3.5, -0];

% Back
father_back_X = [-131.3, -124.3];
father_back_Y = [3.3, 7.3];

% Arms
father_upper_arm_X = [-126, -123.6];
father_upper_arm_Y = [6.3, 3.3];

% Hoe Arc
hoe_arc_theta =  linspace( 0, 2 * (85/360) * pi, n/2);
hoe_arc_X = -130 + 17 * cos(hoe_arc_theta); % Chenge radius to constant
hoe_arc_Y = -3.3 + 17 * sin(hoe_arc_theta);

% Arm Arc
father_arm_arc_theta =  linspace(-1, 2 * (60/360) * pi, n/2);
father_arm_arc_X = -123.6 + 5 * cos(father_arm_arc_theta); % Chenge radius to constant
father_arm_arc_Y = 3.3 + 5 * sin(father_arm_arc_theta);


% Mother Body

% Head
mother_head_X = -72.5 + (head_radius + 0.3)* cos(theta);
mother_head_Y = 14.3 + (head_radius + 0.3)* sin(theta);

% Legs
mother_first_leg_X = [-75, -75];
mother_first_leg_Y = [-3.3, 1];

mother_second_leg_X = [-70, -70];
mother_second_leg_Y = [-3.3, 1];

% skirt
mother_skirt_X = [-77.5, -67.5, -72.5, -77.5];
mother_skirt_Y = [1, 1, 7, 1];

% Back
mother_back_X = [-72.5, -72.5];
mother_back_Y = [7, 13];

% Arms
mother_arm_1_X = [-72.5, -77, -77];
mother_arm_1_Y = [10, 13, 18];

mother_upper_arm_2_X = [-72.5, -69];
mother_upper_arm_2_Y = [10, 10];


mother_arm_arc_theta =  linspace( 0.5, 2 * (85/360) * pi, n/2);
mother_arm_arc_X = -69 + 4 * cos(mother_arm_arc_theta); % Chenge radius to constant
mother_arm_arc_Y = 10 + 4 * sin(mother_arm_arc_theta);


% Bucket
bucket_X = [-76, -69, -67.5, -78, -76];
bucket_Y = [15.6, 15.6, 20.6, 20.6, 15.6];


% Environment
% Ground
ground_X = [-210, 220];
ground_Y = [-3.3, -3.3];

tree_1_X = [40, 40];
tree_1_Y = [-3.3, 15];


tree_2_X = [-30, -30];
tree_2_Y = [-3.3, 20.6];

tree_leaves_2_X = [-40, -20, -30, -40];
tree_leaves_2_Y = [20.6, 20.6, 35.6, 20.6];

house_bottom_X = [-140, -140, -105, -105, -120, -120, -125, -125, -140];
house_bottom_Y = [-3.3, 17.7, 17.7, -3.3, -3.3, 7.7, 7.7, -3.3, -3.3];

house_roof_X = [-145, -122.5, -100, -145];
house_roof_Y = [17.7, 30.7, 17.7, 17.7];

v_garden_fence_1_X = [-145, -145];
v_garden_fence_1_Y = [-3.3, 4];

v_garden_fence_2_X = [-100, -100];
v_garden_fence_2_Y = [-3.3, 4];


h_garden_fence_1_X = [-145, -100];
h_garden_fence_1_Y = [5, 5];

h_garden_fence_2_X = [-145, -100];
h_garden_fence_2_Y = [2, 2];

h_garden_fence_3_X = [-145, -100];
h_garden_fence_3_Y = [-1, -1];


class_1_bottom_X = [50.3, 50.3, 150.3, 150.3, 50.3];
class_1_bottom_Y = [-3.3, 25.3, 25.3, -3.3, -3.3];

class_1_roof_X = [45.3, 50.3, 150.3, 155.3, 45.3];
class_1_roof_Y = [25.3, 45.3, 45.3, 25.3, 25.3];

class_1_door_X = [60.3, 60.3, 68.3, 68.3, 60.3];
class_1_door_Y = [-3.3, 12.3, 12.3, -3.3, -3.3];

class_1_window_X = [73.3, 73.3, 80.3, 80.3, 73.3];
class_1_window_Y = [8.3, 14.3, 14.3, 8.3, 8.3];

flag_post_base_X = [170.3, 170.3, 174.3, 174.3, 170.3,];
flag_post_base_Y = [-3.3, -1.3, -1.3, -3.3, -3.3];

flag_post_X = [172.3, 172.3];
flag_post_Y = [-1.3, 30.3];

flag_sec_1_X = [172.3, 172.3, 185.3, 185.3, 172.3];
flag_sec_1_Y = [27.3, 24.3, 24.3, 27.3, 27.3];


mountain_1_X = [-40, 30, 60];
mountain_1_Y = [18, 60, 40];

mountain_2_X = [38, 100, 200];
mountain_2_Y = [55, 80, -3.3];

% Axis limits
bike_scene_limits = [-110, 130, -5, 70];
home_scene_limits = [-230, 20, -5, 70];
school_scene_limits = [-30, 210, -5, 70];

set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]);

% Home Scene
for times_to_play = 0:6
    for g = 1:n
        % break
        % Environment plots
        plot(ground_X, ground_Y, 'k', 'LineWidth', 1.5)
        hold on

        plot(mountain_1_X-140, mountain_1_Y, 'k', 'LineWidth', 3)
        plot(mountain_2_X-140, mountain_2_Y, 'k', 'LineWidth', 3)

        plot(tree_2_X, tree_2_Y, 'Color', brown_color, 'LineWidth', 10)
        fill(tree_leaves_2_X, tree_leaves_2_Y-15, 'g')
        fill(tree_leaves_2_X, tree_leaves_2_Y-10, 'g')
        fill(tree_leaves_2_X, tree_leaves_2_Y-5, 'g')
        fill(tree_leaves_2_X, tree_leaves_2_Y, 'g')


        fill((house_bottom_X * 1.2 )-30, house_bottom_Y, brown_color, 'LineWidth', 2)
        fill((house_roof_X * 1.2 )-30, house_roof_Y, yellow_color, 'LineWidth', 2)

        plot(v_garden_fence_1_X, v_garden_fence_1_Y, 'k', 'LineWidth', 4)
        plot(v_garden_fence_2_X, v_garden_fence_2_Y, 'k', 'LineWidth', 4)

        plot(h_garden_fence_2_X, h_garden_fence_2_Y, 'k--', 'LineWidth', 0.3)
        plot(h_garden_fence_3_X, h_garden_fence_3_Y, 'k--', 'LineWidth', 0.3)

        % Bike Plots
        % plot the circular bit of the pedal
        plot(pedal_X, pedal_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        hold on

        plot(back_pedal_X, back_pedal_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(upper_bike_chain_X , upper_bike_chain_Y , 'k', 'LineWidth', BIKE_THICKNESS)
        plot(lower_bike_chain_X, lower_bike_chain_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(front_wheel_X, front_wheel_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(back_wheel_X, back_wheel_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(bike_chasis_X, bike_chasis_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(front_wheel_frame_X, front_wheel_frame_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(back_wheel_frame_X, back_wheel_frame_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(bike_seat_X, bike_seat_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(bike_psgr_seat_X, bike_psgr_seat_Y, 'k', 'LineWidth', BIKE_THICKNESS)


        % Body plots (Boy, Girl, Father and Mother)

        % Father Plot
        plot(father_first_lower_leg_X, father_first_lower_leg_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(father_first_upper_leg_X, father_first_upper_leg_Y, 'k', 'LineWidth', BODY_THICKNESS)

        plot(father_second_upper_leg_X, father_second_upper_leg_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(father_second_lower_leg_X, father_second_lower_leg_Y, 'k', 'LineWidth', BODY_THICKNESS)

        plot(father_back_X, father_back_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(father_upper_arm_X, father_upper_arm_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(father_head_X, father_head_Y, 'k', 'LineWidth', BODY_THICKNESS)

        % Mother Plot
        plot(mother_first_leg_X, mother_first_leg_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(mother_second_leg_X, mother_second_leg_Y, 'k', 'LineWidth', BODY_THICKNESS)

        fill(mother_skirt_X, mother_skirt_Y, 'r', 'LineWidth', BODY_THICKNESS)
        plot(mother_back_X, mother_back_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(mother_head_X, mother_head_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(mother_upper_arm_2_X, mother_upper_arm_2_Y, 'k', 'LineWidth', BODY_THICKNESS)
        fill(bucket_X, bucket_Y, 'b', 'LineWidth', BODY_THICKNESS)

        plot(mother_arm_1_X, mother_arm_1_Y, 'k', 'LineWidth', BODY_THICKNESS)

        % Boy Plot
        plot(boy_head_X, boy_head_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(boy_back_X, boy_back_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        plot(boy_upper_arm_X, boy_upper_arm_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        plot(boy_lower_arm_X, boy_lower_arm_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        plot(boy_upper_arm_2_X, boy_upper_arm_2_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        fill(bag_X, bag_Y, 'b')

        % Girl Plot
        plot(girl_back_X, girl_back_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        plot(girl_arms_X, girl_arms_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        plot(girl_neck_X, girl_neck_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(girl_head_X, girl_head_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(girl_legs_X, girl_legs_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(bike_handle_X, bike_handle_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        

        % plot the pedal crank/step
        pedal_crank_X = [0, outer_pedal_X(g)];
        pedal_crank_Y = [0, outer_pedal_Y(g)];
        plot(pedal_crank_X, pedal_crank_Y,'k.-', 'LineWidth', BIKE_THICKNESS)

        % Plot and simulate boy leg movement
        lower_boy_leg_X = [upper_leg_arc_X(g), outer_pedal_X(g)];
        lower_boy_leg_Y = [upper_leg_arc_Y(g), outer_pedal_Y(g)];
        plot(lower_boy_leg_X, lower_boy_leg_Y,'k.-', 'LineWidth', BODY_THICKNESS)

        upper_boy_leg_X = [-4, upper_leg_arc_X(g)];
        upper_boy_leg_Y = [5.5, upper_leg_arc_Y(g)];
        plot(upper_boy_leg_X, upper_boy_leg_Y,'k.-', 'LineWidth', BODY_THICKNESS)


        % simulate front wheel movement
        front_wheel_spoke_1_X = [7, front_wheel_X(g)];
        front_wheel_spoke_1_Y = [0, front_wheel_Y(g)];
        plot(front_wheel_spoke_1_X, front_wheel_spoke_1_Y,'k-', 'LineWidth', BIKE_THICKNESS)

        % simulate back wheel movement
        back_wheel_spoke_1_X = [-7, back_wheel_X(g)];
        back_wheel_spoke_1_Y = [0, back_wheel_Y(g)];
        plot(back_wheel_spoke_1_X, back_wheel_spoke_1_Y,'k-', 'LineWidth', BIKE_THICKNESS)


        if g <= n/2 && g ~= n/2 - 1
            hoe_counter = g;
            % Plot hoe and create simulation of movement
            hoe_X = [father_arm_arc_X(hoe_counter), hoe_arc_X(hoe_counter)]; % third: -123
            hoe_Y = [father_arm_arc_Y(hoe_counter), hoe_arc_Y(hoe_counter)]; % Third: 14
            plot(hoe_X, hoe_Y, 'k*-', 'LineWidth', BODY_THICKNESS)

            father_lower_arm_X = [-123.6, father_arm_arc_X(hoe_counter)];
            father_lower_arm_Y = [3.3, father_arm_arc_Y(hoe_counter)];
            plot(father_lower_arm_X, father_lower_arm_Y, 'k', 'LineWidth', BODY_THICKNESS)

            mother_lower_arm_2_X = [-69, mother_arm_arc_X(hoe_counter)];
            mother_lower_arm_2_Y = [10,mother_arm_arc_Y(hoe_counter)];
            plot(mother_lower_arm_2_X, mother_lower_arm_2_Y, 'k', 'LineWidth', BODY_THICKNESS)

            boy_lower_arm_2_X = [-2.5, boy_arm_arc_X(hoe_counter)];
            boy_lower_arm_2_Y = [10, boy_arm_arc_Y(hoe_counter)];
            plot(boy_lower_arm_2_X, boy_lower_arm_2_Y, 'k', 'LineWidth', BODY_THICKNESS)

        elseif g ~= n - 1
            % Plot hoe and create simulation of movement
            hoe_X = [father_arm_arc_X(hoe_counter), hoe_arc_X(hoe_counter)]; % third: -123
            hoe_Y = [father_arm_arc_Y(hoe_counter), hoe_arc_Y(hoe_counter)]; % Third: 14
            plot(hoe_X, hoe_Y, 'k*-', 'LineWidth', BODY_THICKNESS)

            father_lower_arm_X = [-123.6, father_arm_arc_X(hoe_counter)];
            father_lower_arm_Y = [3.3, father_arm_arc_Y(hoe_counter)];
            plot(father_lower_arm_X, father_lower_arm_Y, 'k', 'LineWidth', BODY_THICKNESS)

            mother_lower_arm_2_X = [-69, mother_arm_arc_X(hoe_counter)];
            mother_lower_arm_2_Y = [10,mother_arm_arc_Y(hoe_counter)];
            plot(mother_lower_arm_2_X, mother_lower_arm_2_Y, 'k', 'LineWidth', BODY_THICKNESS)

            boy_lower_arm_2_X = [-2.5, boy_arm_arc_X(hoe_counter)];
            boy_lower_arm_2_Y = [10, boy_arm_arc_Y(hoe_counter)];
            plot(boy_lower_arm_2_X, boy_lower_arm_2_Y, 'k', 'LineWidth', BODY_THICKNESS)

            hoe_counter = hoe_counter-1;
        end

    

        % Axis settings
        axis(home_scene_limits)
        axis off equal

        % create a frame with each loop
        Frames(g + (n * times_to_play)) = getframe(gcf);
        hold off
    end
end




% Bike Riding Scene
for times_to_play = 7:20
    for k = 1:n
        % break
        % Environment plots
        plot(ground_X, ground_Y, 'k', 'LineWidth', 2)
        hold on

        plot(mountain_1_X-60, mountain_1_Y, 'k', 'LineWidth', 3)
        plot(mountain_2_X-60, mountain_2_Y, 'k', 'LineWidth', 3)

        if mod(times_to_play, 2) ~= 0
            plot(tree_2_X + 110 - k*2.5, tree_2_Y, 'Color', brown_color, 'LineWidth', 10)
            fill(tree_leaves_2_X + 110 - k*2.5, tree_leaves_2_Y-15, 'g')
            fill(tree_leaves_2_X + 110 - k*2.5, tree_leaves_2_Y-10, 'g')
            fill(tree_leaves_2_X + 110 - k*2.5, tree_leaves_2_Y-5, 'g')
            fill(tree_leaves_2_X + 110 - k*2.5, tree_leaves_2_Y, 'g')
        else
            plot(tree_2_X + 110 - k*2.9, tree_2_Y, 'Color', brown_color, 'LineWidth', 10)
            fill(tree_leaves_2_X + 110 - k*2.9, tree_leaves_2_Y-15, 'g')
            fill(tree_leaves_2_X + 110 - k*2.9, tree_leaves_2_Y-10, 'g')
            fill(tree_leaves_2_X + 110 - k*2.9, tree_leaves_2_Y-5, 'g')
            fill(tree_leaves_2_X + 110 - k*2.9, tree_leaves_2_Y, 'g')

            
            plot(tree_2_X + 80 - k*3.3, tree_2_Y, 'Color', brown_color, 'LineWidth', 10)
            fill(tree_leaves_2_X + 80 - k*3.3, tree_leaves_2_Y-15, 'g')
            fill(tree_leaves_2_X + 80 - k*3.3, tree_leaves_2_Y-10, 'g')
            fill(tree_leaves_2_X + 80 - k*3.3, tree_leaves_2_Y-5, 'g')
            fill(tree_leaves_2_X + 80 - k*3.3, tree_leaves_2_Y, 'g')
        
        end

        
        % Bike Plots
        % plot the circular bit of the pedal
        plot(pedal_X, pedal_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        hold on

        plot(back_pedal_X, back_pedal_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(upper_bike_chain_X , upper_bike_chain_Y , 'k', 'LineWidth', BIKE_THICKNESS)
        plot(lower_bike_chain_X, lower_bike_chain_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(front_wheel_X, front_wheel_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(back_wheel_X, back_wheel_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(bike_chasis_X, bike_chasis_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(front_wheel_frame_X, front_wheel_frame_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(back_wheel_frame_X, back_wheel_frame_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(bike_seat_X, bike_seat_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(bike_psgr_seat_X, bike_psgr_seat_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        


        % Body plots (Boy and Girl)

        % Boy Plot
        plot(boy_head_X, boy_head_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(boy_back_X, boy_back_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        plot(boy_upper_arm_X, boy_upper_arm_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        plot(boy_lower_arm_X, boy_lower_arm_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        fill(bag_X, bag_Y, 'b')

        % Girl Plot
        plot(girl_back_X, girl_back_Y, 'k.-', 'LineWidth', GIRL_BODY_THICKNESS)
        plot(girl_arms_X, girl_arms_Y, 'k.-', 'LineWidth', GIRL_BODY_THICKNESS)
        plot(girl_neck_X, girl_neck_Y, 'k', 'LineWidth', GIRL_BODY_THICKNESS)
        plot(girl_head_X, girl_head_Y, 'k', 'LineWidth', GIRL_BODY_THICKNESS)
        plot(girl_legs_X, girl_legs_Y, 'k', 'LineWidth', GIRL_BODY_THICKNESS)
        plot(bike_handle_X, bike_handle_Y, 'ko-', 'LineWidth', GIRL_BODY_THICKNESS)




        
        % plot the pedal crank/step
        pedal_crank_X = [0, outer_pedal_X(k)];
        pedal_crank_Y = [0, outer_pedal_Y(k)];
        plot(pedal_crank_X, pedal_crank_Y,'k.-', 'LineWidth', BIKE_THICKNESS)

        % Plot and simulate boy leg movement
        lower_boy_leg_X = [upper_leg_arc_X(k), outer_pedal_X(k)];
        lower_boy_leg_Y = [upper_leg_arc_Y(k), outer_pedal_Y(k)];
        plot(lower_boy_leg_X, lower_boy_leg_Y,'k.-', 'LineWidth', BODY_THICKNESS)

        upper_boy_leg_X = [-4, upper_leg_arc_X(k)];
        upper_boy_leg_Y = [5.5, upper_leg_arc_Y(k)];
        plot(upper_boy_leg_X, upper_boy_leg_Y,'k.-', 'LineWidth', BODY_THICKNESS)


        % simulate front wheel movement
        front_wheel_spoke_1_X = [7, front_wheel_X(k)];
        front_wheel_spoke_1_Y = [0, front_wheel_Y(k)];
        plot(front_wheel_spoke_1_X, front_wheel_spoke_1_Y,'k-', 'LineWidth', BIKE_THICKNESS)

        % simulate back wheel movement
        back_wheel_spoke_1_X = [-7, back_wheel_X(k)];
        back_wheel_spoke_1_Y = [0, back_wheel_Y(k)];
        plot(back_wheel_spoke_1_X, back_wheel_spoke_1_Y,'k-', 'LineWidth', BIKE_THICKNESS)


        if mod(times_to_play, 2) == 0
            plot(tree_2_X + 140 - k*3.3, tree_2_Y, 'Color', brown_color, 'LineWidth', 10)
            fill(tree_leaves_2_X + 140 - k*3.3, tree_leaves_2_Y-15, 'g')
            fill(tree_leaves_2_X + 140 - k*3.3, tree_leaves_2_Y-10, 'g')
            fill(tree_leaves_2_X + 140 - k*3.3, tree_leaves_2_Y-5, 'g')
            fill(tree_leaves_2_X + 140 - k*3.3, tree_leaves_2_Y, 'g')
        end
    
        % Axis settings
        axis(bike_scene_limits)
        axis off equal

        % create a frame with each loop
        Frames(k +  (n * times_to_play)) = getframe(gcf);
        hold off
    end
end





% School Scene
for times_to_play = 21:21
    for s = 1:n
        % break
        % Environment plots
        plot(ground_X, ground_Y, 'k', 'LineWidth', 3)
        hold on
        % plot(tree_1_X - k, tree_1_Y, 'k', 'LineWidth', 5)

        plot(mountain_1_X, mountain_1_Y, 'k', 'LineWidth', 3)
        plot(mountain_2_X, mountain_2_Y, 'k', 'LineWidth', 3)


        plot(tree_2_X + 60, tree_2_Y, 'Color', brown_color, 'LineWidth', 10)
        fill(tree_leaves_2_X + 60, tree_leaves_2_Y-15, 'g')
        fill(tree_leaves_2_X + 60, tree_leaves_2_Y-10, 'g')
        fill(tree_leaves_2_X + 60, tree_leaves_2_Y-5, 'g')
        fill(tree_leaves_2_X + 60, tree_leaves_2_Y, 'g')

        fill(class_1_bottom_X, class_1_bottom_Y, brown_color, 'LineWidth', 3)
        fill(class_1_roof_X, class_1_roof_Y, 'b', 'LineWidth', 3)

        fill(class_1_door_X, class_1_door_Y, 'k', 'LineWidth', 3)
        fill(class_1_window_X, class_1_window_Y, 'k', 'LineWidth', 3)

        fill(class_1_door_X + 30, class_1_door_Y, 'k', 'LineWidth', 3)
        fill(class_1_window_X + 30, class_1_window_Y, 'k', 'LineWidth', 3)

        fill(class_1_door_X + 60, class_1_door_Y, 'k', 'LineWidth', 3)
        fill(class_1_window_X + 60, class_1_window_Y, 'k', 'LineWidth', 3)

        fill(flag_post_base_X, flag_post_base_Y, gray_color, 'LineWidth', 5)
        fill(flag_post_X, flag_post_Y, 'k', 'LineWidth', 5)
        
        fill(flag_sec_1_X, flag_sec_1_Y, 'k', 'LineWidth', 3)
        fill(flag_sec_1_X, flag_sec_1_Y-3, 'r', 'LineWidth', 3)
        fill(flag_sec_1_X, flag_sec_1_Y-6, 'g', 'LineWidth', 3)

        % Bike Plots
        % plot the circular bit of the pedal
        plot(pedal_X, pedal_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        % hold on

        plot(back_pedal_X, back_pedal_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(upper_bike_chain_X , upper_bike_chain_Y , 'k', 'LineWidth', BIKE_THICKNESS)
        plot(lower_bike_chain_X, lower_bike_chain_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(front_wheel_X, front_wheel_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(back_wheel_X, back_wheel_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(bike_chasis_X, bike_chasis_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(front_wheel_frame_X, front_wheel_frame_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(back_wheel_frame_X, back_wheel_frame_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(bike_seat_X, bike_seat_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        plot(bike_psgr_seat_X, bike_psgr_seat_Y, 'k', 'LineWidth', BIKE_THICKNESS)
        


        % Body plots (Boy and Girl)

        % Boy Plot
        plot(boy_head_X, boy_head_Y, 'k', 'LineWidth', BODY_THICKNESS)
        plot(boy_back_X, boy_back_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        plot(boy_upper_arm_X, boy_upper_arm_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        plot(boy_lower_arm_X, boy_lower_arm_Y, 'k.-', 'LineWidth', BODY_THICKNESS)
        fill(bag_X, bag_Y, 'b')

        % Girl Plot
        plot(girl_back_X, girl_back_Y, 'k.-', 'LineWidth', GIRL_BODY_THICKNESS)
        plot(girl_arms_X, girl_arms_Y, 'k.-', 'LineWidth', GIRL_BODY_THICKNESS)
        plot(girl_neck_X, girl_neck_Y, 'k', 'LineWidth', GIRL_BODY_THICKNESS)
        plot(girl_head_X, girl_head_Y, 'k', 'LineWidth', GIRL_BODY_THICKNESS)
        plot(girl_legs_X, girl_legs_Y, 'k', 'LineWidth', GIRL_BODY_THICKNESS)
        plot(bike_handle_X, bike_handle_Y, 'ko-', 'LineWidth', GIRL_BODY_THICKNESS)




        
        % plot the pedal crank/step
        pedal_crank_X = [0, outer_pedal_X(s)];
        pedal_crank_Y = [0, outer_pedal_Y(s)];
        plot(pedal_crank_X, pedal_crank_Y,'k.-', 'LineWidth', BIKE_THICKNESS)

        % Plot and simulate boy leg movement
        lower_boy_leg_X = [upper_leg_arc_X(s), outer_pedal_X(s)];
        lower_boy_leg_Y = [upper_leg_arc_Y(s), outer_pedal_Y(s)];
        plot(lower_boy_leg_X, lower_boy_leg_Y,'k.-', 'LineWidth', BODY_THICKNESS)

        upper_boy_leg_X = [-4, upper_leg_arc_X(s)];
        upper_boy_leg_Y = [5.5, upper_leg_arc_Y(s)];
        plot(upper_boy_leg_X, upper_boy_leg_Y,'k.-', 'LineWidth', BODY_THICKNESS)


        % simulate front wheel movement
        front_wheel_spoke_1_X = [7, front_wheel_X(s)];
        front_wheel_spoke_1_Y = [0, front_wheel_Y(s)];
        plot(front_wheel_spoke_1_X, front_wheel_spoke_1_Y,'k-', 'LineWidth', BIKE_THICKNESS)

        % simulate back wheel movement
        back_wheel_spoke_1_X = [-7, back_wheel_X(s)];
        back_wheel_spoke_1_Y = [0, back_wheel_Y(s)];
        plot(back_wheel_spoke_1_X, back_wheel_spoke_1_Y,'k-', 'LineWidth', BIKE_THICKNESS)

        % Axis settings
        axis(school_scene_limits)
        axis off equal

        % create a frame with each loop
        Frames(s+(n * times_to_play)) = getframe(gcf);
        hold off
    end
end

% home_scene=[2:60];
% bike_scene_1=[62:120];
% bike_scene_2=[122:179];
% school_scene=[180:209];

% movie(Frames(1, home_scene),6, 30)
% movie(Frames(1, bike_scene_1), 3, 30)
% movie(Frames(1, bike_scene_2), 6, 30)
% movie(Frames(1, school_scene), 1, 30)

all_valid = true;
flen = length(Frames);
for K = 1 : flen
  if isempty(Frames(K).cdata)
    all_valid = false;
    fprintf('Empty frame occurred at frame #%d of %d\n', K, flen);
  end
end
if ~all_valid
   error('Did not write movie because of empty frames')
end

videoObj = VideoWriter('project');
open(videoObj);
writeVideo(videoObj, Frames);
close(videoObj);