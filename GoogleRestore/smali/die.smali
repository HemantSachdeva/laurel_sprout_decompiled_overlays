.class public abstract Ldie;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:I

.field final b:I

.field public c:I

.field d:Ldif;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Ldie;->b:I

    const v0, 0x7fffffff

    iput v0, p0, Ldie;->c:I

    return-void
.end method

.method public static a(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static a([B)Ldie;
    .locals 1

    .line 1
    array-length v0, p0

    invoke-static {p0, v0}, Ldie;->a([BI)Ldie;

    move-result-object p0

    return-object p0
.end method

.method public static a([BI)Ldie;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ldie;->a([BII)Ldie;

    move-result-object p0

    return-object p0
.end method

.method static a([BII)Ldie;
    .locals 1

    new-instance v0, Ldic;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Ldic;-><init>([BII)V

    .line 4
    :try_start_0
    invoke-virtual {v0, p2}, Ldic;->c(I)I
    :try_end_0
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 4
    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static f(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)V
.end method

.method public abstract b()D
.end method

.method public abstract b(I)Z
.end method

.method public abstract c()F
.end method

.method public abstract c(I)I
.end method

.method public abstract d()J
.end method

.method public abstract d(I)V
.end method

.method public abstract e()J
.end method

.method public abstract f()I
.end method

.method public abstract g()J
.end method

.method public abstract h()I
.end method

.method public abstract i()Z
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()Ldib;
.end method

.method public abstract m()I
.end method

.method public abstract n()I
.end method

.method public abstract o()I
.end method

.method public abstract p()J
.end method

.method public abstract q()I
.end method

.method public abstract r()J
.end method

.method public abstract x()Z
.end method

.method public abstract y()I
.end method
