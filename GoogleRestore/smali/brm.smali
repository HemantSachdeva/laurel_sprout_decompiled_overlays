.class public final Lbrm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;

.field private final b:Leip;


# direct methods
.method public constructor <init>(Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbrm;->a:Leip;

    iput-object p2, p0, Lbrm;->b:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lbrm;->a:Leip;

    check-cast v0, Ldsu;

    iget-object v0, v0, Ldsu;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lbrm;->b:Leip;

    check-cast v1, Lbrj;

    invoke-virtual {v1}, Lbrj;->b()Lcqu;

    new-instance v1, Lbrw;

    invoke-direct {v1}, Lbrw;-><init>()V

    iput-object v0, v1, Lbrw;->a:Landroid/content/Context;

    iget-object v0, v1, Lbrw;->a:Landroid/content/Context;

    iget-object v1, v1, Lbrw;->b:Lcrm;

    invoke-static {v0}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v1, Lbum;->b:I

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lbum;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v1, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v2

    :goto_1
    sget-object v2, Leod;->b:Leod;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v4, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    sget-object v7, Lbrx;->a:Lcua;

    invoke-virtual {v7}, Lctx;->b()Lcup;

    move-result-object v7

    check-cast v7, Lctz;

    invoke-interface {v7, v6}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v6, 0x4e

    const-string v8, "com/google/android/libraries/performance/primes/MetricStamper"

    const-string v9, "createMetricStamper"

    const-string v10, "MetricStamper.java"

    invoke-interface {v7, v8, v9, v6, v10}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v6, "Failed to get PackageInfo for: %s"

    invoke-interface {v7, v6, v3}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    move-object v6, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v2, Leod;->c:Leod;

    goto :goto_3

    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "android.software.leanback"

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v2, Leod;->d:Leod;

    :cond_4
    :goto_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v2, Leod;->e:Leod;

    :cond_5
    move-object v7, v2

    new-instance v10, Lbrx;

    const-wide/32 v4, 0x13577ad2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v9, Lbqk;

    invoke-direct {v9, v0}, Lbqk;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    move-object v2, v10

    move-object v4, v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Lbrx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leod;Ljava/lang/Long;Lbqk;Lcrm;)V

    return-object v10
.end method
