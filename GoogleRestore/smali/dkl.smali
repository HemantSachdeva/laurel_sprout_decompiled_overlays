.class public final Ldkl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ldkl;->a:Ljava/nio/charset/Charset;

    .line 2
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ldkl;->b:[B

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {v0}, Ldie;->a([B)Ldie;

    return-void
.end method

.method static a(I[BII)I
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    .line 13
    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static a(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p0, Ldlj;

    invoke-interface {p0}, Ldlj;->V()Ldli;

    move-result-object p0

    check-cast p1, Ldlj;

    invoke-interface {p0, p1}, Ldli;->a(Ldlj;)V

    invoke-interface {p0}, Ldli;->g()Ldlj;

    move-result-object p0

    return-object p0
.end method

.method static a(Ldlj;)V
    .locals 1

    .line 9
    instance-of v0, p0, Ldhj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ldhj;

    const/4 p0, 0x0

    throw p0
.end method

.method static a(Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5
    return-void

    .line 0
    :cond_0
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 6
    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([B)Z
    .locals 3

    .line 10
    sget-object v0, Ldmy;->a:Ldmu;

    .line 11
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ldmu;->a([BII)Z

    move-result p0

    return p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ldkl;->a:Ljava/nio/charset/Charset;

    .line 14
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static c([B)I
    .locals 2

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v0}, Ldkl;->a(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method
