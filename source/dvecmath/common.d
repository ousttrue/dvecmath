module dvecmath.common;
import std.math;


struct radians
{
    float value;
    alias value this;

    static radians fromDegree(float n)
    {
        return radians(PI * (n/180));
    }

    float opCast(T)() const if (is(T==float))
    {
        return 180 * (value/PI);
    }
}

