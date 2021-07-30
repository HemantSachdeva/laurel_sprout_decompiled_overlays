.class public Ldgy;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ldbj;
    .locals 1

    new-instance v0, Ldgx;

    .line 2
    invoke-direct {v0, p0, p1}, Ldgx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, Ldgx;

    .line 3
    invoke-static {p0}, Ldbj;->a(Ljava/lang/Class;)Ldbi;

    move-result-object p0

    const/4 p1, 0x1

    iput p1, p0, Ldbi;->a:I

    new-instance p1, Ldbh;

    .line 4
    invoke-direct {p1, v0}, Ldbh;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ldbi;->a(Ldbl;)V

    invoke-virtual {p0}, Ldbi;->a()Ldbj;

    move-result-object p0

    return-object p0
.end method

.method public static a(Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 1
    const-string v0, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
