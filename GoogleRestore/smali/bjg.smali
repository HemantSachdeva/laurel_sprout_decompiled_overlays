.class public final Lbjg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/graphics/drawable/Animatable2$AnimationCallback;
    .locals 1

    .line 1
    new-instance v0, Laon;

    invoke-direct {v0}, Laon;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Lbjg;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lbjg;->c:Ljava/lang/Boolean;

    :cond_0
    sget-object p0, Lbjg;->c:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 9
    invoke-static {p0}, Lbjg;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v0, Lbjg;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lbjg;->d:Ljava/lang/Boolean;

    :cond_0
    sget-object p0, Lbjg;->d:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 15
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0}, Lbir;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    const-string v0, "CrashUtils"

    const-string v1, "Error adding exception to DropBox!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
