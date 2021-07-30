.class public Lbun;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Leny;
    .locals 6

    .line 7
    sget-object v0, Leny;->f:Leny;

    .line 8
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    iget-boolean v3, v0, Ldjy;->b:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_0
    iget-object v3, v0, Ldjy;->a:Ldkd;

    .line 11
    check-cast v3, Leny;

    iget v5, v3, Leny;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Leny;->a:I

    iput-wide v1, v3, Leny;->b:J

    .line 12
    invoke-static {p1}, Lbum;->b(Landroid/content/Context;)Z

    move-result p1

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_1
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 14
    check-cast v1, Leny;

    iget v2, v1, Leny;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Leny;->a:I

    iput-boolean p1, v1, Leny;->c:Z

    .line 15
    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result p1

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_2
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 17
    check-cast v1, Leny;

    iget v2, v1, Leny;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Leny;->a:I

    iput p1, v1, Leny;->d:I

    if-eqz p0, :cond_3

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v2, 0x8

    iput p1, v1, Leny;->a:I

    iput-object p0, v1, Leny;->e:Ljava/lang/String;

    .line 19
    :cond_3
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p0

    check-cast p0, Leny;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    sget-boolean v0, Lbun;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    const/4 p0, 0x2

    aput-object p1, v2, p0

    const-string p0, "%s:%d:%s"

    .line 1
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SHA-256"

    .line 3
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const-string v1, "UTF-8"

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 5
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lbqf;->a([B)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object p0

    .line 5
    :catch_0
    move-exception p0

    sput-boolean v0, Lbun;->a:Z

    new-instance p0, Ljava/lang/Exception;

    .line 6
    const-string p1, "No SHA-256 algorithm"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
