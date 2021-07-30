.class public final Lbzo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "com/google/android/libraries/performance/primes/metrics/storage/PackageStatsCapture"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbzo;->a:Lcua;

    const/4 v0, 0x3

    new-array v1, v0, [Lcqt;

    new-instance v2, Lcqt;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/pm/IPackageStatsObserver;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-direct {v2}, Lcqt;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Lcqt;

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    .line 1
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    const-class v5, Landroid/content/pm/IPackageStatsObserver;

    aput-object v5, v4, v3

    invoke-direct {v2}, Lcqt;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Lcqt;

    new-array v0, v0, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v7

    const-class v4, Landroid/content/pm/IPackageStatsObserver;

    aput-object v4, v0, v3

    invoke-direct {v2}, Lcqt;-><init>()V

    aput-object v2, v1, v3

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/content/pm/PackageStats;
    .locals 1

    .line 2
    invoke-static {}, Lcqt;->b()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    invoke-static {p0}, Lbzp;->a(Landroid/content/Context;)Landroid/content/pm/PackageStats;

    move-result-object p0

    return-object p0
.end method
