.class public abstract Ldij;
.super Ldhr;
.source "PG"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field public static final e:Z


# instance fields
.field f:Ldik;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ldij;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ldij;->a:Ljava/util/logging/Logger;

    .line 2
    sget-boolean v0, Ldms;->b:Z

    sput-boolean v0, Ldij;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldhr;-><init>()V

    return-void
.end method

.method public static a(ILdks;)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    .line 12
    invoke-static {p1}, Ldij;->a(Ldks;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static a(Ldks;)I
    .locals 1

    iget-object v0, p0, Ldks;->b:Ldib;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ldks;->b:Ldib;

    .line 13
    invoke-virtual {p0}, Ldib;->a()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldks;->a:Ldlj;

    if-eqz v0, :cond_1

    iget-object p0, p0, Ldks;->a:Ldlj;

    .line 14
    invoke-interface {p0}, Ldlj;->h()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 13
    :goto_0
    invoke-static {p0}, Ldij;->l(I)I

    move-result p0

    return p0
.end method

.method static a(Ldlj;Ldlw;)I
    .locals 2

    .line 16
    check-cast p0, Ldhi;

    invoke-virtual {p0}, Ldhi;->U()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 17
    invoke-interface {p1, p0}, Ldlw;->b(Ljava/lang/Object;)I

    move-result v0

    .line 18
    invoke-virtual {p0, v0}, Ldhi;->a(I)V

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-static {v0}, Ldij;->l(I)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/OutputStream;I)Ldij;
    .locals 1

    new-instance v0, Ldig;

    .line 29
    invoke-direct {v0, p0, p1}, Ldig;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static a([B)Ldij;
    .locals 2

    .line 30
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ldij;->c([BII)Ldij;

    move-result-object p0

    return-object p0
.end method

.method static b(ILdlj;Ldlw;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    add-int/2addr p0, p0

    .line 8
    check-cast p1, Ldhi;

    invoke-virtual {p1}, Ldhi;->U()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-interface {p2, p1}, Ldlw;->b(Ljava/lang/Object;)I

    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Ldhi;->a(I)V

    goto :goto_0

    :cond_0
    nop

    :goto_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    .line 19
    invoke-static {p1}, Ldij;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(Ldib;)I
    .locals 0

    .line 7
    invoke-virtual {p0}, Ldib;->a()I

    move-result p0

    invoke-static {p0}, Ldij;->l(I)I

    move-result p0

    return p0
.end method

.method public static b(Ldlj;)I
    .locals 0

    .line 15
    invoke-interface {p0}, Ldlj;->h()I

    move-result p0

    invoke-static {p0}, Ldij;->l(I)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .line 20
    :try_start_0
    invoke-static {p0}, Ldmy;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Ldmw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    sget-object v0, Ldkl;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 22
    array-length p0, p0

    .line 20
    :goto_0
    invoke-static {p0}, Ldij;->l(I)I

    move-result p0

    return p0
.end method

.method public static b([B)I
    .locals 0

    .line 5
    array-length p0, p0

    invoke-static {p0}, Ldij;->l(I)I

    move-result p0

    return p0
.end method

.method public static c(ILdib;)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    .line 6
    invoke-static {p1}, Ldij;->b(Ldib;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c([BII)Ldij;
    .locals 1

    new-instance v0, Ldih;

    .line 31
    invoke-direct {v0, p0, p1, p2}, Ldih;-><init>([BII)V

    return-object v0
.end method

.method public static d(IJ)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Ldij;->f(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(Ldlj;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    invoke-interface {p0}, Ldlj;->h()I

    move-result p0

    return p0
.end method

.method public static e(IJ)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Ldij;->f(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static f(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static f(IJ)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Ldij;->g(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(J)I
    .locals 7

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    cmp-long v0, p0, v3

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v5, -0x200000

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v5, -0x4000

    and-long/2addr p0, v5

    cmp-long v1, p0, v3

    if-eqz v1, :cond_4

    add-int/2addr v0, v2

    :cond_4
    return v0
.end method

.method public static g(II)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    invoke-static {p1}, Ldij;->i(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static g(J)I
    .locals 0

    invoke-static {p0, p1}, Ldij;->h(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ldij;->f(J)I

    move-result p0

    return p0
.end method

.method public static h(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldnb;->a(II)I

    move-result p0

    invoke-static {p0}, Ldij;->j(I)I

    move-result p0

    return p0
.end method

.method public static h(II)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    invoke-static {p1}, Ldij;->j(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static h(J)J
    .locals 3

    add-long v0, p0, p0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static i(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Ldij;->j(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static i(II)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    invoke-static {p1}, Ldij;->k(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static j(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static j(II)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    invoke-static {p1}, Ldij;->i(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static k(I)I
    .locals 0

    invoke-static {p0}, Ldij;->m(I)I

    move-result p0

    invoke-static {p0}, Ldij;->j(I)I

    move-result p0

    return p0
.end method

.method static l(I)I
    .locals 1

    invoke-static {p0}, Ldij;->j(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static m(I)I
    .locals 1

    add-int v0, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static n(I)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static o(I)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static p(I)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static q(I)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static r(I)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static s(I)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static t(I)I
    .locals 0

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(D)V
    .locals 0

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldij;->d(J)V

    return-void
.end method

.method public final a(F)V
    .locals 0

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Ldij;->e(I)V

    return-void
.end method

.method public final a(ID)V
    .locals 0

    .line 32
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Ldij;->b(IJ)V

    return-void
.end method

.method public final a(IF)V
    .locals 0

    .line 34
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ldij;->e(II)V

    return-void
.end method

.method public abstract a(IJ)V
.end method

.method public abstract a(ILdib;)V
.end method

.method public abstract a(ILdlj;)V
.end method

.method public abstract a(ILdlj;Ldlw;)V
.end method

.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(IZ)V
.end method

.method public abstract a(Ldib;)V
.end method

.method public abstract a(Ldlj;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method final a(Ljava/lang/String;Ldmw;)V
    .locals 6

    sget-object v0, Ldij;->a:Ljava/util/logging/Logger;

    .line 23
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    sget-object p2, Ldkl;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 25
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Ldij;->d(I)V

    .line 28
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0, p2}, Ldij;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ldii; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 27
    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Ldii;

    .line 28
    invoke-direct {p2, p1}, Ldii;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract a([BI)V
.end method

.method public abstract a([BII)V
.end method

.method public abstract b(B)V
.end method

.method public abstract b(II)V
.end method

.method public abstract b(IJ)V
.end method

.method public abstract b(ILdib;)V
.end method

.method public final c()V
    .locals 2

    .line 3
    invoke-virtual {p0}, Ldij;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract c(I)V
.end method

.method public abstract c(II)V
.end method

.method public final c(IJ)V
    .locals 0

    invoke-static {p2, p3}, Ldij;->h(J)J

    move-result-wide p2

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Ldij;->a(IJ)V

    return-void
.end method

.method public abstract c(J)V
.end method

.method public final c(Ldlj;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-interface {p1, p0}, Ldlj;->a(Ldij;)V

    return-void
.end method

.method public abstract d(I)V
.end method

.method public abstract d(II)V
.end method

.method public abstract d(J)V
.end method

.method public abstract e(I)V
.end method

.method public abstract e(II)V
.end method

.method public final e(J)V
    .locals 0

    invoke-static {p1, p2}, Ldij;->h(J)J

    move-result-wide p1

    .line 40
    invoke-virtual {p0, p1, p2}, Ldij;->c(J)V

    return-void
.end method

.method public final f(II)V
    .locals 0

    invoke-static {p2}, Ldij;->m(I)I

    move-result p2

    .line 37
    invoke-virtual {p0, p1, p2}, Ldij;->d(II)V

    return-void
.end method

.method public final g(I)V
    .locals 0

    invoke-static {p1}, Ldij;->m(I)I

    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Ldij;->d(I)V

    return-void
.end method
