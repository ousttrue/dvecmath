module dvecmath.mat4;
import dvecmath.common;
import dvecmath.vec3;
import std.math;

struct mat4
{
    float[16] value;
	alias value this;

	this(float[16] args...)
	{
		value=args.dup;
	}

    static mat4 zAxisRotation(in radians angle)
    {
        return mat4(
                cos(angle), sin(angle), 0, 0,
                -sin(angle), cos(angle), 0, 0,
                0, 0, 1, 0,
                0, 0, 0, 1
                );
    }
}
