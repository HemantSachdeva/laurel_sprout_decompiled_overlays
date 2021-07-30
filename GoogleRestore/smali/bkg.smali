.class public final Lbkg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbkf;

.field public static final b:Lbkf;

.field public static final c:Lbkf;

.field public static final d:Lbkf;

.field private static f:Ljava/lang/Boolean;

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static final i:Ljava/lang/ThreadLocal;

.field private static final j:Lbkd;

.field private static k:Lbkh;

.field private static l:Lbki;


# instance fields
.field public final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lbkg;->h:I

    new-instance v0, Ljava/lang/ThreadLocal;

    .line 1
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lbkg;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Lbju;

    invoke-direct {v0}, Lbju;-><init>()V

    sput-object v0, Lbkg;->j:Lbkd;

    new-instance v0, Lbjv;

    invoke-direct {v0}, Lbjv;-><init>()V

    sput-object v0, Lbkg;->a:Lbkf;

    new-instance v0, Lbjw;

    invoke-direct {v0}, Lbjw;-><init>()V

    sput-object v0, Lbkg;->b:Lbkf;

    new-instance v0, Lbjx;

    invoke-direct {v0}, Lbjx;-><init>()V

    sput-object v0, Lbkg;->c:Lbkf;

    new-instance v0, Lbjy;

    invoke-direct {v0}, Lbjy;-><init>()V

    sput-object v0, Lbkg;->d:Lbkf;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lbir;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lbkg;->e:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    .line 22
    const-string v0, "DynamiteModule"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "com.google.android.gms.dynamite.descriptors."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ModuleDescriptor"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "MODULE_ID"

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "MODULE_VERSION"

    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 27
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Module descriptor id \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' didn\'t match expected id \'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    nop

    .line 30
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 32
    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to load module descriptor class: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 32
    :catch_1
    move-exception p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x2d

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Local module descriptor class for "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 8

    :try_start_0
    const-class v0, Lbkg;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v1, Lbkg;->f:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_6

    .line 33
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sClassLoader"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    if-eqz v4, :cond_1

    .line 38
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v4, v1, :cond_0

    .line 39
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 40
    :cond_0
    :try_start_4
    invoke-static {v4}, Lbkg;->a(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Lbkc; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 41
    :goto_0
    :try_start_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_1
    const-string v4, "com.google.android.gms"

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 46
    :cond_2
    :try_start_6
    invoke-static {p0, p1, p2}, Lbkg;->b(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    sget-object v5, Lbkg;->g:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 47
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 49
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_4

    .line 52
    new-instance v5, Ldalvik/system/DelegateLastClassLoader;

    sget-object v6, Lbkg;->g:Ljava/lang/String;

    .line 53
    invoke-static {v6}, Lbir;->a(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 50
    :cond_4
    new-instance v5, Lbjz;

    sget-object v6, Lbkg;->g:Ljava/lang/String;

    .line 51
    invoke-static {v6}, Lbir;->a(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lbjz;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 54
    :goto_1
    invoke-static {v5}, Lbkg;->a(Ljava/lang/ClassLoader;)V

    .line 55
    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v5, Lbkg;->f:Ljava/lang/Boolean;
    :try_end_6
    .catch Lbkc; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 60
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return v4

    .line 48
    :cond_5
    :goto_2
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return v4

    .line 84
    :catch_1
    move-exception v4

    .line 57
    :try_start_b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    :goto_3
    monitor-exit v2

    goto :goto_5

    .line 62
    :catchall_0
    move-exception v1

    .line 59
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 63
    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_4
    :try_start_d
    const-string v2, "DynamiteModule"

    .line 61
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to load module via V2: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    :goto_5
    sput-object v1, Lbkg;->f:Ljava/lang/Boolean;

    .line 63
    :cond_6
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 64
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 85
    :try_start_f
    invoke-static {p0, p1, p2}, Lbkg;->b(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0
    :try_end_f
    .catch Lbkc; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    return p0

    .line 59
    :catch_5
    move-exception p1

    :try_start_10
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version: "

    .line 86
    invoke-virtual {p1}, Lbkc;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 58
    :cond_7
    new-instance p1, Ljava/lang/String;

    .line 86
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 65
    :cond_8
    invoke-static {p0}, Lbkg;->a(Landroid/content/Context;)Lbkh;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-nez v0, :cond_9

    goto :goto_8

    .line 66
    :cond_9
    :try_start_11
    invoke-virtual {v0}, Lbkh;->a()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_a

    .line 67
    invoke-static {p0}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object v2

    .line 68
    invoke-virtual {v0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v3

    .line 69
    invoke-static {v3, v2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 70
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    invoke-static {v3, p2}, Lacv;->a(Landroid/os/Parcel;Z)V

    const/4 p1, 0x5

    .line 72
    invoke-virtual {v0, p1, v3}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    move v1, p2

    goto :goto_8

    :cond_a
    const-string v2, "DynamiteModule"

    const-string v3, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 75
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p0}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object v2

    .line 77
    invoke-virtual {v0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v3

    .line 78
    invoke-static {v3, v2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 79
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    invoke-static {v3, p2}, Lacv;->a(Landroid/os/Parcel;Z)V

    const/4 p1, 0x3

    .line 81
    invoke-virtual {v0, p1, v3}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move v1, p2

    goto :goto_8

    .line 86
    :catch_6
    move-exception p1

    :try_start_12
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version: "

    .line 84
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    .line 86
    :cond_b
    new-instance p1, Ljava/lang/String;

    .line 84
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 65
    :goto_8
    return v1

    .line 88
    :catchall_1
    move-exception p1

    .line 63
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    throw p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 51
    :catchall_2
    move-exception p1

    .line 87
    invoke-static {p0}, Lbjg;->c(Landroid/content/Context;)V

    .line 88
    throw p1
.end method

.method public static a(Landroid/content/Context;Lbkf;Ljava/lang/String;)Lbkg;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-class v4, Lbkg;

    sget-object v5, Lbkg;->i:Ljava/lang/ThreadLocal;

    .line 112
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbka;

    new-instance v7, Lbka;

    invoke-direct {v7}, Lbka;-><init>()V

    .line 113
    invoke-virtual {v5, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_0
    sget-object v8, Lbkg;->j:Lbkd;

    .line 114
    invoke-interface {v2, v1, v3, v8}, Lbkf;->a(Landroid/content/Context;Ljava/lang/String;Lbkd;)Lbke;

    move-result-object v8

    const-string v9, "DynamiteModule"

    .line 115
    iget v10, v8, Lbke;->a:I

    iget v11, v8, Lbke;->b:I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x44

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Considering local module "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " and remote module "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v9, v8, Lbke;->c:I

    if-eqz v9, :cond_1b

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    iget v11, v8, Lbke;->a:I

    if-eqz v11, :cond_1b

    :cond_0
    const/4 v11, 0x1

    if-ne v9, v11, :cond_1

    iget v12, v8, Lbke;->b:I

    if-eqz v12, :cond_1b

    .line 221
    :cond_1
    if-ne v9, v10, :cond_3

    .line 220
    invoke-static {v1, v3}, Lbkg;->b(Landroid/content/Context;Ljava/lang/String;)Lbkg;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object v2, v7, Lbka;->a:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 218
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    nop

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1

    :cond_3
    if-ne v9, v11, :cond_1a

    .line 119
    :try_start_1
    iget v9, v8, Lbke;->b:I
    :try_end_1
    .catch Lbkc; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    monitor-enter v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lbkc; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    sget-object v13, Lbkg;->f:Ljava/lang/Boolean;

    .line 120
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v13, :cond_16

    .line 123
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-eqz v13, :cond_d

    const-string v13, "DynamiteModule"

    .line 158
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v11, v16, 0x33

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Selected remote version of "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", version >= "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lbkc; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    sget-object v11, Lbkg;->l:Lbki;

    .line 159
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v11, :cond_c

    .line 161
    nop

    .line 162
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lbka;

    if-eqz v12, :cond_b

    iget-object v13, v12, Lbka;->a:Landroid/database/Cursor;

    if-eqz v13, :cond_b

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    iget-object v12, v12, Lbka;->a:Landroid/database/Cursor;

    .line 166
    invoke-static {v15}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    monitor-enter v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lbkc; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    sget v15, Lbkg;->h:I

    if-lt v15, v14, :cond_4

    const/16 v16, 0x1

    goto :goto_0

    .line 198
    :cond_4
    const/16 v16, 0x0

    .line 167
    :goto_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 169
    :try_start_8
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "DynamiteModule"

    const-string v14, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 170
    invoke-static {v4, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {v13}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object v4

    .line 172
    invoke-static {v12}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object v12

    .line 173
    invoke-virtual {v11}, Lact;->h()Landroid/os/Parcel;

    move-result-object v13

    .line 174
    invoke-static {v13, v4}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 175
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-static {v13, v12}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v4, 0x3

    .line 178
    invoke-virtual {v11, v4, v13}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v4

    .line 179
    invoke-virtual {v4}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v15, 0x0

    goto :goto_1

    .line 219
    :cond_5
    const-string v11, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 180
    invoke-interface {v9, v11}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v11

    .line 181
    instance-of v12, v11, Lbjr;

    if-eqz v12, :cond_6

    .line 182
    move-object v15, v11

    check-cast v15, Lbjr;

    goto :goto_1

    :cond_6
    new-instance v15, Lbjp;

    .line 183
    invoke-direct {v15, v9}, Lbjp;-><init>(Landroid/os/IBinder;)V

    .line 184
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    .line 183
    :cond_7
    const-string v4, "DynamiteModule"

    const-string v15, "Dynamite loader version < 2, falling back to loadModule2"

    .line 185
    invoke-static {v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {v13}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object v4

    .line 187
    invoke-static {v12}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object v12

    .line 188
    invoke-virtual {v11}, Lact;->h()Landroid/os/Parcel;

    move-result-object v13

    .line 189
    invoke-static {v13, v4}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 190
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-static {v13, v12}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 193
    invoke-virtual {v11, v14, v13}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v4

    .line 194
    invoke-virtual {v4}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_8

    const/4 v15, 0x0

    goto :goto_2

    .line 199
    :cond_8
    const-string v11, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 195
    invoke-interface {v9, v11}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v11

    .line 196
    instance-of v12, v11, Lbjr;

    if-eqz v12, :cond_9

    .line 197
    move-object v15, v11

    check-cast v15, Lbjr;

    goto :goto_2

    :cond_9
    new-instance v15, Lbjp;

    .line 198
    invoke-direct {v15, v9}, Lbjp;-><init>(Landroid/os/IBinder;)V

    .line 199
    :goto_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 200
    :goto_3
    invoke-static {v15}, Lbjq;->a(Lbjr;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    if-eqz v4, :cond_a

    .line 202
    new-instance v9, Lbkg;

    .line 203
    invoke-direct {v9, v4}, Lbkg;-><init>(Landroid/content/Context;)V

    goto/16 :goto_7

    .line 200
    :cond_a
    new-instance v4, Lbkc;

    const-string v5, "Failed to get module context"

    .line 201
    invoke-direct {v4, v5}, Lbkc;-><init>(Ljava/lang/String;)V

    .line 202
    throw v4
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lbkc; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 159
    :catchall_0
    move-exception v0

    move-object v5, v0

    .line 168
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v5

    .line 162
    :cond_b
    new-instance v4, Lbkc;

    const-string v5, "No result cursor"

    .line 163
    invoke-direct {v4, v5}, Lbkc;-><init>(Ljava/lang/String;)V

    .line 164
    throw v4

    .line 159
    :cond_c
    new-instance v4, Lbkc;

    const-string v5, "DynamiteLoaderV2 was not cached."

    .line 160
    invoke-direct {v4, v5}, Lbkc;-><init>(Ljava/lang/String;)V

    .line 161
    throw v4
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lbkc; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 120
    :catchall_1
    move-exception v0

    move-object v5, v0

    .line 159
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v5

    .line 198
    :cond_d
    const-string v4, "DynamiteModule"

    .line 124
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x33

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Selected remote version of "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", version >= "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static/range {p0 .. p0}, Lbkg;->a(Landroid/content/Context;)Lbkh;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 128
    invoke-virtual {v4}, Lbkh;->a()I

    move-result v11

    if-lt v11, v14, :cond_10

    .line 129
    invoke-static/range {p0 .. p0}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object v11

    .line 130
    invoke-virtual {v4}, Lact;->h()Landroid/os/Parcel;

    move-result-object v12

    .line 131
    invoke-static {v12, v11}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 132
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x4

    .line 134
    invoke-virtual {v4, v9, v12}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v4

    .line 135
    invoke-virtual {v4}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_e

    const/4 v15, 0x0

    goto :goto_4

    .line 157
    :cond_e
    const-string v11, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 136
    invoke-interface {v9, v11}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v11

    .line 137
    instance-of v12, v11, Lbjr;

    if-eqz v12, :cond_f

    .line 138
    move-object v15, v11

    check-cast v15, Lbjr;

    goto :goto_4

    :cond_f
    new-instance v15, Lbjp;

    .line 139
    invoke-direct {v15, v9}, Lbjp;-><init>(Landroid/os/IBinder;)V

    .line 140
    :goto_4
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_6

    .line 139
    :cond_10
    const-string v11, "DynamiteModule"

    const-string v12, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 141
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static/range {p0 .. p0}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object v11

    .line 143
    invoke-virtual {v4}, Lact;->h()Landroid/os/Parcel;

    move-result-object v12

    .line 144
    invoke-static {v12, v11}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 145
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {v4, v14, v12}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v4

    .line 148
    invoke-virtual {v4}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_11

    const/4 v15, 0x0

    goto :goto_5

    .line 153
    :cond_11
    const-string v11, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 149
    invoke-interface {v9, v11}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v11

    .line 150
    instance-of v12, v11, Lbjr;

    if-eqz v12, :cond_12

    .line 151
    move-object v15, v11

    check-cast v15, Lbjr;

    goto :goto_5

    :cond_12
    new-instance v15, Lbjp;

    .line 152
    invoke-direct {v15, v9}, Lbjp;-><init>(Landroid/os/IBinder;)V

    .line 153
    :goto_5
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 154
    :goto_6
    invoke-static {v15}, Lbjq;->a(Lbjr;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 156
    new-instance v9, Lbkg;

    .line 157
    invoke-static {v15}, Lbjq;->a(Lbjr;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-direct {v9, v4}, Lbkg;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lbkc; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 203
    :goto_7
    iget-object v1, v7, Lbka;->a:Landroid/database/Cursor;

    if-eqz v1, :cond_13

    .line 218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_13
    nop

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v9

    .line 154
    :cond_14
    :try_start_d
    new-instance v4, Lbkc;

    const-string v5, "Failed to load remote module."

    .line 155
    invoke-direct {v4, v5}, Lbkc;-><init>(Ljava/lang/String;)V

    .line 156
    throw v4

    .line 125
    :cond_15
    new-instance v4, Lbkc;

    const-string v5, "Failed to create IDynamiteLoader."

    .line 126
    invoke-direct {v4, v5}, Lbkc;-><init>(Ljava/lang/String;)V

    .line 127
    throw v4

    .line 120
    :cond_16
    new-instance v4, Lbkc;

    const-string v5, "Failed to determine which loading route to use."

    .line 121
    invoke-direct {v4, v5}, Lbkc;-><init>(Ljava/lang/String;)V

    .line 122
    throw v4
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lbkc; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 206
    :catchall_2
    move-exception v0

    move-object v5, v0

    .line 120
    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v5
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lbkc; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 207
    :catchall_3
    move-exception v0

    move-object v4, v0

    .line 204
    :try_start_10
    invoke-static/range {p0 .. p0}, Lbjg;->c(Landroid/content/Context;)V

    new-instance v5, Lbkc;

    const-string v9, "Failed to load remote module."

    .line 205
    invoke-direct {v5, v9, v4}, Lbkc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    throw v5

    .line 209
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 207
    throw v4

    .line 219
    :catch_1
    move-exception v0

    move-object v4, v0

    new-instance v5, Lbkc;

    const-string v9, "Failed to load remote module."

    .line 208
    invoke-direct {v5, v9, v4}, Lbkc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    throw v5
    :try_end_10
    .catch Lbkc; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 117
    :catch_2
    move-exception v0

    move-object v4, v0

    :try_start_11
    const-string v5, "DynamiteModule"

    const-string v9, "Failed to load remote module: "

    .line 210
    invoke-virtual {v4}, Lbkc;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_17

    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    .line 168
    :cond_17
    new-instance v11, Ljava/lang/String;

    .line 210
    invoke-direct {v11, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v9, v11

    :goto_8
    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v5, v8, Lbke;->a:I

    if-eqz v5, :cond_19

    new-instance v8, Lbkb;

    .line 212
    invoke-direct {v8, v5}, Lbkb;-><init>(I)V

    .line 213
    invoke-interface {v2, v1, v3, v8}, Lbkf;->a(Landroid/content/Context;Ljava/lang/String;Lbkd;)Lbke;

    move-result-object v2

    .line 214
    iget v2, v2, Lbke;->c:I

    if-ne v2, v10, :cond_19

    .line 217
    invoke-static {v1, v3}, Lbkg;->b(Landroid/content/Context;Ljava/lang/String;)Lbkg;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    iget-object v2, v7, Lbka;->a:Landroid/database/Cursor;

    if-eqz v2, :cond_18

    .line 218
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_18
    sget-object v2, Lbkg;->i:Ljava/lang/ThreadLocal;

    .line 219
    invoke-virtual {v2, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1

    .line 210
    :cond_19
    :try_start_12
    new-instance v1, Lbkc;

    const-string v2, "Remote load failed. No local fallback found."

    .line 215
    invoke-direct {v1, v2, v4}, Lbkc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    throw v1

    .line 223
    :cond_1a
    new-instance v1, Lbkc;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 117
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VersionPolicy returned invalid code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-direct {v1, v2}, Lbkc;-><init>(Ljava/lang/String;)V

    .line 117
    throw v1

    .line 116
    :cond_1b
    new-instance v1, Lbkc;

    .line 221
    iget v2, v8, Lbke;->a:I

    iget v3, v8, Lbke;->b:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x5b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "No acceptable module found. Local version is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and remote version is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-direct {v1, v2}, Lbkc;-><init>(Ljava/lang/String;)V

    .line 221
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 152
    :catchall_4
    move-exception v0

    move-object v1, v0

    iget-object v2, v7, Lbka;->a:Landroid/database/Cursor;

    if-eqz v2, :cond_1c

    .line 218
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1c
    sget-object v2, Lbkg;->i:Ljava/lang/ThreadLocal;

    .line 219
    invoke-virtual {v2, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 223
    throw v1
.end method

.method private static a(Landroid/content/Context;)Lbkh;
    .locals 5

    const-class v0, Lbkg;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbkg;->k:Lbkh;

    if-eqz v1, :cond_0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "com.google.android.gms"

    const/4 v3, 0x3

    .line 11
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 20
    :cond_1
    const-string v2, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 15
    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 16
    instance-of v3, v2, Lbkh;

    if-eqz v3, :cond_2

    .line 17
    check-cast v2, Lbkh;

    goto :goto_0

    :cond_2
    new-instance v2, Lbkh;

    .line 18
    invoke-direct {v2, p0}, Lbkh;-><init>(Landroid/os/IBinder;)V

    .line 14
    :goto_0
    if-eqz v2, :cond_4

    sput-object v2, Lbkg;->k:Lbkh;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    monitor-exit v0

    return-object v2

    .line 20
    :catch_0
    move-exception p0

    const-string v2, "DynamiteModule"

    const-string v3, "Failed to load IDynamiteLoader from GmsCore: "

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_4
    monitor-exit v0

    return-object v1

    .line 18
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static a(Ljava/lang/ClassLoader;)V
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 4
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lbki;

    if-eqz v1, :cond_1

    .line 6
    move-object p0, v0

    check-cast p0, Lbki;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lbki;

    .line 7
    invoke-direct {v0, p0}, Lbki;-><init>(Landroid/os/IBinder;)V

    move-object p0, v0

    .line 3
    :goto_0
    sput-object p0, Lbkg;->l:Lbki;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 6
    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    :goto_1
    new-instance v0, Lbkc;

    .line 8
    const-string v1, "Failed to instantiate dynamite loader"

    invoke-direct {v0, v1, p0}, Lbkc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    throw v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 7

    .line 89
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "api_force_staging"

    const-string v2, "api"

    const/4 v3, 0x1

    if-eq v3, p2, :cond_0

    move-object p0, v2

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p2, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "content://com.google.android.gms.chimera/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 91
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_4

    .line 92
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 95
    const/4 p1, 0x0

    .line 96
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-lez p1, :cond_2

    const-class p2, Lbkg;

    monitor-enter p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x2

    .line 97
    :try_start_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lbkg;->g:Ljava/lang/String;

    const-string v1, "loaderVersion"

    .line 98
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 99
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lbkg;->h:I

    .line 100
    :cond_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object p2, Lbkg;->i:Ljava/lang/ThreadLocal;

    .line 101
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbka;

    if-eqz p2, :cond_2

    iget-object v1, p2, Lbka;->a:Landroid/database/Cursor;

    if-nez v1, :cond_2

    iput-object p0, p2, Lbka;->a:Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 107
    :catchall_0
    move-exception p1

    .line 100
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 106
    :cond_2
    nop

    .line 101
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_3

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return p1

    .line 92
    :cond_4
    :try_start_6
    const-string p1, "DynamiteModule"

    const-string p2, "Failed to retrieve remote module version."

    .line 93
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lbkc;

    const-string p2, "Failed to connect to dynamite module ContentResolver."

    .line 94
    invoke-direct {p1, p2}, Lbkc;-><init>(Ljava/lang/String;)V

    .line 95
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 107
    :catchall_1
    move-exception p1

    move-object v0, p0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    .line 103
    :catchall_2
    move-exception p0

    move-object p1, p0

    goto :goto_2

    .line 106
    :catch_1
    move-exception p0

    move-object p1, p0

    .line 102
    :goto_1
    :try_start_7
    nop

    instance-of p0, p1, Lbkc;

    if-eqz p0, :cond_5

    .line 103
    throw p1

    .line 100
    :cond_5
    new-instance p0, Lbkc;

    const-string p2, "V2 version check failed"

    .line 104
    invoke-direct {p0, p2, p1}, Lbkc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 100
    :catchall_3
    move-exception p0

    move-object p1, p0

    .line 103
    :goto_2
    if-eqz v0, :cond_6

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_6
    throw p1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lbkg;
    .locals 2

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Selected local version of "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 225
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 224
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "DynamiteModule"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lbkg;

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lbkg;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lbkg;->e:Landroid/content/Context;

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    new-instance v1, Lbkc;

    const-string v2, "Failed to instantiate module class: "

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 111
    :goto_1
    invoke-direct {v1, p1, v0}, Lbkc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    throw v1
.end method
