.class public Lcom/android/settingslib/display/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# direct methods
.method public static final convertGammaToLinearFloat(IFF)F
    .locals 3

    int-to-float p0, p0

    const/4 v0, 0x0

    const v1, 0x477fff00    # 65535.0f

    .line 78
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, p0, v1

    if-gtz v2, :cond_0

    div-float/2addr p0, v1

    .line 81
    invoke-static {p0}, Landroid/util/MathUtils;->sq(F)F

    move-result p0

    goto :goto_0

    :cond_0
    const v1, 0x3f0f564f

    sub-float/2addr p0, v1

    const v1, 0x3e371ff0

    div-float/2addr p0, v1

    .line 83
    invoke-static {p0}, Landroid/util/MathUtils;->exp(F)F

    move-result p0

    const v1, 0x3e91c020

    add-float/2addr p0, v1

    :goto_0
    const/high16 v1, 0x41400000    # 12.0f

    .line 88
    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    div-float/2addr p0, v1

    .line 92
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static final convertLinearToGammaFloat(FFF)I
    .locals 0

    .line 131
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    const/high16 p1, 0x41400000    # 12.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_0

    .line 134
    invoke-static {p0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const p1, 0x3e371ff0

    const p2, 0x3e91c020

    sub-float/2addr p0, p2

    .line 136
    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result p0

    mul-float/2addr p0, p1

    const p1, 0x3f0f564f

    add-float/2addr p0, p1

    :goto_0
    const/4 p1, 0x0

    const p2, 0x477fff00    # 65535.0f

    .line 139
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
