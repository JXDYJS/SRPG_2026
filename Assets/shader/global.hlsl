#if !defined(_MY_GLOBAL)
#define _MY_GLOBAL

#define clamp01(x) clamp((x),0.0,1.0)
#define max0(x) max((x),0.0)

half linear_step(float edge0, float edge1, float x) {
    return clamp01((x - edge0) / (edge1 - edge0));
}

half linear_step(half edge0, half edge1, half x) {
    return clamp01((x - edge0) / (edge1 - edge0));
}
#endif