.class public final Lblq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Lbdz;

.field private static e:Lbkg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lblq;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lblq;->c:Ljava/lang/String;

    .line 2
    sget-object v0, Lbdz;->c:Lbdz;

    sput-object v0, Lblq;->d:Lbdz;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lblq;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lblq;->e:Lbkg;

    const-string v0, "0"

    sput-object v0, Lblq;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lblq;

    sget-object v1, Lblq;->a:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-static {}, Lblq;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    monitor-exit v1

    return-void

    :cond_0
    const-string v2, "Context must not be null"

    .line 9
    invoke-static {p0, v2}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "org.chromium.net.CronetEngine"

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v2, 0xb5f608

    .line 15
    :try_start_2
    invoke-static {p0, v2}, Lbei;->b(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    sget-object v2, Lbkg;->a:Lbkf;

    const-string v3, "com.google.android.gms.cronet_dynamite"

    .line 17
    invoke-static {p0, v2, v3}, Lbkg;->a(Landroid/content/Context;Lbkf;Ljava/lang/String;)Lbkg;

    move-result-object v2
    :try_end_3
    .catch Lbkc; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, v2, Lbkg;->e:Landroid/content/Context;

    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "org.chromium.net.impl.ImplVersion"

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eq v4, v0, :cond_2

    .line 25
    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Class;

    const-string v5, "getApiLevel"

    .line 26
    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Class;

    const-string v6, "getCronetVersion"

    .line 27
    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    .line 28
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v3, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lblq;->b:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x3

    if-lt v4, v0, :cond_1

    .line 34
    :try_start_5
    sput-object v2, Lblq;->e:Lbkg;

    .line 35
    monitor-exit v1

    return-void

    .line 29
    :cond_1
    sget-object v2, Lblq;->d:Lbdz;

    const/4 v3, 0x2

    const-string v5, "cr"

    .line 33
    invoke-virtual {v2, p0, v3, v5}, Lbdz;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    new-instance v2, Lbeh;

    sget-object v3, Lblq;->b:Ljava/lang/String;

    .line 34
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0xae

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Google Play Services update is required. The API Level of the client is "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". The API Level of the implementation is "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". The Cronet implementation version is "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Lbeh;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 23
    :cond_2
    :try_start_6
    sget-object p0, Lblq;->c:Ljava/lang/String;

    const-string v0, "ImplVersion class is missing from Cronet module."

    .line 24
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lbeg;

    .line 25
    invoke-direct {p0}, Lbeg;-><init>()V

    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 32
    :catch_0
    move-exception p0

    .line 20
    :try_start_7
    sget-object v0, Lblq;->c:Ljava/lang/String;

    const-string v2, "Unable to read Cronet version from the Cronet module "

    .line 30
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lbeg;

    .line 31
    invoke-direct {v0}, Lbeg;-><init>()V

    .line 32
    invoke-virtual {v0, p0}, Lbeg;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lbeg;

    throw p0

    .line 14
    :catch_1
    move-exception p0

    sget-object v0, Lblq;->c:Ljava/lang/String;

    const-string v2, "Unable to load Cronet module"

    .line 18
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lbeg;

    .line 19
    invoke-direct {v0}, Lbeg;-><init>()V

    .line 20
    invoke-virtual {v0, p0}, Lbeg;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lbeg;

    throw p0

    .line 35
    :catch_2
    move-exception p0

    sget-object v0, Lblq;->c:Ljava/lang/String;

    const-string v2, "Cronet API is not available. Have you included all required dependencies?"

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lbeg;

    .line 13
    invoke-direct {v0}, Lbeg;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Lbeg;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lbeg;

    throw p0

    .line 35
    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public static a()Z
    .locals 1

    .line 36
    invoke-static {}, Lblq;->b()Lbkg;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Lbkg;
    .locals 2

    sget-object v0, Lblq;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    sget-object v1, Lblq;->e:Lbkg;

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
