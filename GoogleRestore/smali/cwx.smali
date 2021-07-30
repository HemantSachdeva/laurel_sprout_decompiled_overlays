.class final Lcwx;
.super Lcwn;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcwn;-><init>()V

    .line 5
    const-string v0, "SHA-1"

    invoke-static {v0}, Lcwx;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcwx;->a:Ljava/security/MessageDigest;

    .line 6
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    iput v1, p0, Lcwx;->b:I

    const-string v1, "Hashing.sha1()"

    iput-object v1, p0, Lcwx;->d:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcwx;->a(Ljava/security/MessageDigest;)Z

    move-result v0

    iput-boolean v0, p0, Lcwx;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Lcwn;-><init>()V

    const-string v0, "Hashing.sha1()"

    iput-object v0, p0, Lcwx;->d:Ljava/lang/String;

    .line 1
    invoke-static {p1}, Lcwx;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcwx;->a:Ljava/security/MessageDigest;

    .line 2
    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt p2, v3, :cond_0

    if-gt p2, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    if-eqz v3, :cond_1

    .line 4
    iput p2, p0, Lcwx;->b:I

    .line 3
    invoke-static {p1}, Lcwx;->a(Ljava/security/MessageDigest;)Z

    move-result p1

    iput-boolean p1, p0, Lcwx;->c:Z

    return-void

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    const-string p2, "bytes (%s) must be >= 4 and < %s"

    invoke-static {p2, v3}, Lcrq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    .line 8
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static a(Ljava/security/MessageDigest;)Z
    .locals 0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Lcws;
    .locals 3

    iget-boolean v0, p0, Lcwx;->c:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcwv;

    iget-object v1, p0, Lcwx;->a:Ljava/security/MessageDigest;

    .line 10
    invoke-virtual {v1}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    iget v2, p0, Lcwx;->b:I

    .line 11
    invoke-direct {v0, v1, v2}, Lcwv;-><init>(Ljava/security/MessageDigest;I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 13
    :catch_0
    move-exception v0

    .line 11
    :cond_0
    new-instance v0, Lcwv;

    iget-object v1, p0, Lcwx;->a:Ljava/security/MessageDigest;

    .line 12
    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcwx;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget v2, p0, Lcwx;->b:I

    .line 13
    invoke-direct {v0, v1, v2}, Lcwv;-><init>(Ljava/security/MessageDigest;I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcwx;->d:Ljava/lang/String;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcww;

    iget-object v1, p0, Lcwx;->a:Ljava/security/MessageDigest;

    .line 15
    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcwx;->b:I

    .line 16
    invoke-direct {v0, v1, v2}, Lcww;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
