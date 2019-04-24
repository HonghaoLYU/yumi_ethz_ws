def return_joint_state(arm_num, joint_num):

    if arm_num == 'right_arm':
        right_joint_total=['joint_1_up','joint_1_down','joint_2_up','joint_2_down','joint_3_up','joint_3_down','joint_4_up','joint_4_down','joint_5_up','joint_5_down','joint_hand_out_low','joint_hand_inside_release']
        joint_num_state=right_joint_total[joint_num]
        if joint_num_state=='joint_1_up':
            return [1.157333255,-1.083496332,-1.234670043,0.304010361,3.539110422,0.670507312,2.880841017]
        if joint_num_state=='joint_1_down':
            return [1.2437962294,-1.0886821747,-1.346349597,0.197231859,3.432359457,0.6172484159,2.9567523003]
        if joint_num_state=='joint_2_up':
            return [1.26391232,-1.044383764,-1.2821486,0.390825003,3.475851774,0.845203757,2.979694843]
        if joint_num_state=='joint_2_down':
            return [1.3628693819,-1.0662180185,-1.4130979776,0.2626849413,3.3649909496,0.7802559733,3.0457861423]
        if joint_num_state=='joint_3_up':
            return [1.377745271,-1.010850906,-1.33680737,0.425317496,3.449352026,0.975173116,3.035112619]
        if joint_num_state=='joint_3_down':
            return [1.4602495432,-1.0487210751,-1.4602504969,0.2961947322,3.3461575508,0.896327436,3.0816366673]
        if joint_num_state=='joint_4_up':
            return [1.547721982,-0.975123584,-1.425058126,0.427137256,3.43200016,1.116520643,3.086297512]
        if joint_num_state=='joint_4_down':
            return [1.6134154797,-1.032587409,-1.5367376804,0.3015876412,3.3316938877,1.0310608149,3.1173522472]
        if joint_num_state=='joint_5_up':
            return [1.6798139811,-0.9578893185,-1.4970027208,0.4048714936,3.4262340069,1.2005531788,3.1135492325]
        if joint_num_state=='joint_5_down':
            return [1.7620639801,-1.0336602926,-1.6182199717,0.2667441964,3.315778017,1.1212291718,3.1433637142]
        if joint_num_state=='joint_hand_out_low':
            return [1.596020221710205, -0.7798439860343933, -1.2379815578460693, -0.14349110424518585, 3.9499971866607666, 0.8009695410728455, 2.5808541774749756]
        if joint_num_state=='joint_hand_inside_release':
            return[0.42854681611061096, -1.3110144138336182, -1.4462252855300903, 0.8245474696159363, 2.740112543106079, 0.45960697531700134, 3.49589467048645]

    if arm_num == 'left_arm':
        left_joint_total=['joint_1_up','joint_1_down','joint_2_up','joint_2_down','joint_3_up','joint_3_down','joint_4_up','joint_4_down','joint_5_up','joint_5_down','joint_hand_out_low','joint_hand_inside_release']
        joint_num_state=left_joint_total[joint_num]
        if joint_num_state=='joint_1_up':
            return [-1.157333255,-1.083496332,1.234670043,0.304010361,-3.539110422,0.670507312,6.28-2.880841017]
        if joint_num_state=='joint_1_down':
            return [-1.2437962294,-1.0886821747,1.346349597,0.197231859,-3.432359457,0.6172484159,6.28-2.9567523003]
        if joint_num_state=='joint_2_up':
            return [-1.26391232,-1.044383764,1.2821486,0.390825003,-3.475851774,0.845203757,6.28-2.979694843]
        if joint_num_state=='joint_2_down':
            return [-1.3628693819,-1.0662180185,1.4130979776,0.2626849413,-3.3649909496,0.7802559733,6.28-3.0457861423]
        if joint_num_state=='joint_3_up':
            return [-1.377745271,-1.010850906,1.33680737,0.425317496,-3.449352026,0.975173116,6.28-3.035112619]
        if joint_num_state=='joint_3_down':
            return [-1.4602495432,-1.0487210751,1.4602504969,0.2961947322,-3.3461575508,0.896327436,6.28-3.0816366673]
        if joint_num_state=='joint_4_up':
            return [-1.547721982,-0.975123584,1.425058126,0.427137256,-3.43200016,1.116520643,6.28-3.086297512]
        if joint_num_state=='joint_4_down':
            return [-1.6134154797,-1.032587409,1.5367376804,0.3015876412,-3.3316938877,1.0310608149,6.28-3.1173522472]
        if joint_num_state=='joint_5_up':
            return [-1.6798139811,-0.9578893185,1.4970027208,0.4048714936,-3.4262340069,1.2005531788,6.28-3.1135492325]
        if joint_num_state=='joint_5_down':
            return [-1.7620639801,-1.0336602926,1.6182199717,0.2667441964,-3.315778017,1.1212291718,6.28-3.1433637142]
        if joint_num_state=='joint_hand_out_low':
            return [-1.596020221710205, -0.7798439860343933, 1.2379815578460693, -0.14349110424518585, -3.9499971866607666, 0.8009695410728455, 6.28-2.5808541774749756]
        if joint_num_state=='joint_hand_inside_release':
            return [-0.42854681611061096, -1.3110144138336182, 1.4462252855300903, 0.8245474696159363, -2.740112543106079, 0.45960697531700134, 6.28-3.49589467048645]