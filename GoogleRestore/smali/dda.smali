.class public Ldda;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    return-void
.end method

.method public static a(IILjava/math/RoundingMode;)I
    .locals 5

    .line 1
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 3
    div-int v0, p0, p1

    mul-int v1, p1, v0

    sub-int v1, p0, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    const/4 v2, 0x1

    or-int/2addr p0, v2

    .line 4
    sget-object v3, Lcyd;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 8
    new-instance p0, Ljava/lang/AssertionError;

    .line 9
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 6
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr v1, p1

    if-nez v1, :cond_2

    .line 8
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, p1, :cond_4

    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, v0, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_2
    if-lez v1, :cond_5

    goto :goto_1

    :pswitch_1
    if-lez p0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 8
    :pswitch_2
    if-gez p0, :cond_5

    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    :pswitch_3
    add-int/2addr v0, p0

    return v0

    .line 5
    :pswitch_4
    invoke-static {v4}, Ldgy;->a(Z)V

    :cond_6
    :pswitch_5
    return v0

    .line 1
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 2
    const-string p1, "/ by zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 10
    return-void

    .line 0
    :cond_0
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 11
    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 12
    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
