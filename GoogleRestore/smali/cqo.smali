.class public abstract Lcqo;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(CC)Lcqo;
    .locals 1

    new-instance v0, Lcqh;

    .line 7
    invoke-direct {v0, p0, p1}, Lcqh;-><init>(CC)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    new-instance v0, Lcqe;

    .line 6
    invoke-direct {v0, p0}, Lcqe;-><init>(Ljava/lang/CharSequence;)V

    return-void

    .line 2
    :cond_0
    nop

    .line 3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    new-instance v1, Lcqj;

    .line 4
    invoke-direct {v1, v0, p0}, Lcqj;-><init>(CC)V

    return-void

    :cond_1
    nop

    .line 5
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcqo;->b(C)Lcqo;

    return-void

    .line 2
    :cond_2
    sget p0, Lcql;->b:I

    return-void
.end method

.method public static b(C)Lcqo;
    .locals 1

    new-instance v0, Lcqi;

    .line 11
    invoke-direct {v0, p0}, Lcqi;-><init>(C)V

    return-object v0
.end method

.method public static c(C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    rsub-int/lit8 v3, v1, 0x5

    and-int/lit8 v4, p0, 0xf

    .line 12
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 9
    invoke-static {p2, v0}, Lcrj;->b(II)V

    :goto_0
    if-ge p2, v0, :cond_1

    .line 10
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcqo;->a(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract a(C)Z
.end method
