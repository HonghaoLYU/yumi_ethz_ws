def return_joint_state(joint_num):
    joint_total=['joint_1_up','joint_1_down','joint_2_up','joint_2_down','joint_3_up','joint_3_down','joint_4_up','joint_4_down']
    joint_num_state=joint_total[joint_num]
    if joint_num_state=='joint_1_up':
        return [1.157333255,-1.083496332,-1.234670043,0.304010361,3.539110422,0.670507312,2.880841017]
    if joint_num_state=='joint_1_down':
        return [1.255236864,-1.088740706,-1.359657764,0.183731884,3.420984983,0.610562205,2.967915773]
    if joint_num_state=='joint_2_up':
        return [1.26391232,-1.044383764,-1.2821486,0.390825003,3.475851774,0.845203757,2.979694843]
    if joint_num_state=='joint_2_down':
        return [1.361658454,-1.064907432,-1.411565781,0.267770082,3.366454124,0.783987343,3.045247793]
    if joint_num_state=='joint_3_up':
        return [1.377745271,-1.010850906,-1.33680737,0.425317496,3.449352026,0.975173116,3.035112619]
    if joint_num_state=='joint_3_down':
        return [1.467242599,-1.044519901,-1.459583402,0.30772835,3.349332571,0.914431274,3.083241463]
    if joint_num_state=='joint_4_up':
        return [1.547721982,-0.975123584,-1.425058126,0.427137256,3.43200016,1.116520643,3.086297512]
    if joint_num_state=='joint_4_down':
        return [1.628669858,-1.028140903,-1.541170955,0.308510691,3.334285259,1.051267266,3.120129824]
