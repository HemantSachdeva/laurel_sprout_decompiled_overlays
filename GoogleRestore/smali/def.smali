.class public final Ldef;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldbb;

.field public final b:Ldeu;

.field public final c:Ldfg;

.field public final d:Ldgz;

.field public final e:Lddi;

.field public final f:Ldga;


# direct methods
.method public constructor <init>(Ldbb;Ldeu;Ldfg;Ldgz;Lddi;Ldga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldef;->a:Ldbb;

    iput-object p2, p0, Ldef;->b:Ldeu;

    iput-object p3, p0, Ldef;->c:Ldfg;

    iput-object p4, p0, Ldef;->d:Ldgz;

    iput-object p5, p0, Ldef;->e:Lddi;

    iput-object p6, p0, Ldef;->f:Ldga;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldef;->a:Ldbb;

    .line 1
    invoke-virtual {v0}, Ldbb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-1"

    .line 2
    :try_start_0
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/16 v1, 0xb

    .line 3
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "[HASH-ERROR]"

    return-object v0
.end method
