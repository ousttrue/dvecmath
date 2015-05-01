module dvecmath.vec3;


unittest {

    auto a=vec3(1, 2, 3);
    auto b=vec3(2, 3, 4);

    assert(a + b == vec3(3, 5, 7));
    assert(a - b == vec3(-1, -1, -1));
    assert(a.dot(b)==20);
    assert(a.cross(b)==vec3(-1, 2, -1));
    assert(vec3.ex==vec3(1, 0, 0));
}


struct vec3
{
    float x;
    float y;
    float z;

    vec3 opBinary(string op)(in vec3 rhs)const 
        if(op=="+" || op=="-")
    {
        return vec3(
                mixin("x"~op~"rhs.x"), 
                mixin("y"~op~"rhs.y"),
                mixin("z"~op~"rhs.z"));
    }

    float dot(in vec3 rhs)const
    {
        return x*rhs.x + y*rhs.y + z*rhs.z;
    }

    vec3 cross(in vec3 rhs)const
    {
        return vec3(
                y * rhs.z - z * rhs.y,
                z * rhs.x - x * rhs.z,
                x * rhs.y - y * rhs.x
                );
    }

    @property static ex=vec3(1, 0, 0);
    @property static ey=vec3(0, 1, 0);
    @property static ez=vec3(0, 0, 1);
}

