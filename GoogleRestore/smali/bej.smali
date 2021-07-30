.class public final Lbej;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/lang/Boolean;

.field private static b:Lbej;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static a(Landroid/content/Context;)Lbej;
    .locals 2

    .line 2
    invoke-static {p0}, Lbir;->a(Ljava/lang/Object;)V

    const-class v0, Lbej;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbej;->b:Lbej;

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0}, Lbef;->a(Landroid/content/Context;)V

    new-instance v1, Lbej;

    .line 4
    invoke-direct {v1, p0}, Lbej;-><init>(Landroid/content/Context;)V

    sput-object v1, Lbej;->b:Lbej;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lbej;->b:Lbej;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final a(Landroid/content/pm/PackageInfo;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 6
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_4

    .line 7
    sget-object v1, Lbee;->a:[Lbil;

    .line 8
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-eq v2, v4, :cond_1

    .line 10
    const-string p0, "GoogleSignatureVerifier"

    const-string v1, "Package has more than one signature."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v2, Lbea;

    .line 11
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lbea;-><init>([B)V

    const/4 p0, 0x0

    .line 12
    :goto_0
    array-length v5, v1

    const/4 v5, 0x2

    if-ge p0, v5, :cond_3

    .line 13
    aget-object v5, v1, p0

    invoke-virtual {v5, v2}, Lbil;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 14
    aget-object v3, v1, p0

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 8
    :goto_1
    if-eqz v3, :cond_4

    return v4

    .line 14
    :cond_4
    return v0
.end method
