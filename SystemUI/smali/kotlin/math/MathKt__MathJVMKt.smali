.class Lkotlin/math/MathKt__MathJVMKt;
.super Lkotlin/math/MathKt__MathHKt;
.source "MathJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMathJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MathJVM.kt\nkotlin/math/MathKt__MathJVMKt\n*L\n1#1,1259:1\n*E\n"
.end annotation


# direct methods
.method public static roundToInt(F)I
    .locals 1

    .line 1132
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
