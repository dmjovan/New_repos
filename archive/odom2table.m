function [T] = odom2table(odomMessage)
%ODOM2TABLE Converts an odom message to a table row.
%   Converts a 'nav_msgs/Odometry' type message from a ROS bag to a table row.
%   Just the position, orientation, and twist are preserved.

    odomPositionX = odomMessage.Pose.Pose.Position.X;
    odomPositionY = odomMessage.Pose.Pose.Position.Y;
    odomPositionZ = odomMessage.Pose.Pose.Position.Z;
    odomOrientationX = odomMessage.Pose.Pose.Orientation.X;
    odomOrientationY = odomMessage.Pose.Pose.Orientation.Y;
    odomOrientationZ = odomMessage.Pose.Pose.Orientation.Z;
    odomOrientationW = odomMessage.Pose.Pose.Orientation.W;
    odomTwistLinearX = odomMessage.Twist.Twist.Linear.X;
    odomTwistLinearY = odomMessage.Twist.Twist.Linear.Y;
    odomTwistLinearZ = odomMessage.Twist.Twist.Linear.Z;
%     odomTwistAngularX = odomMessage.Twist.Twist.Angular.X;
%     odomTwistAngularY = odomMessage.Twist.Twist.Angular.Y;
%     odomTwistAngularZ = odomMessage.Twist.Twist.Angular.Z;

    T = table(...
        odomPositionX, ...
        odomPositionY, ...
        odomPositionZ, ...
        odomOrientationX, ...
        odomOrientationY, ...
        odomOrientationZ, ...
        odomOrientationW, ...
        odomTwistLinearX, ...
        odomTwistLinearY, ...
        odomTwistLinearZ ...
    );
%         odomTwistAngularX, ...
%         odomTwistAngularY, ...
%         odomTwistAngularZ...
end

