.class public Lcom/google/android/apps/pixelmigrate/component/MigrateApplication;
.super Landroid/app/Application;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Lacw;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MigrateApplication"

    aput-object v4, v2, v3

    .line 1
    invoke-direct {v0, v2}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/pixelmigrate/component/MigrateApplication;->b:Lacw;

    .line 2
    sget-object v0, Lbzh;->b:Lbzh;

    iget-wide v2, v0, Lbzh;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lbzh;->d:J

    iget-object v0, v0, Lbzh;->i:Lbzg;

    iput-boolean v1, v0, Lbzg;->a:Z

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 7

    .line 5
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 6
    sget-object v0, Lbzh;->b:Lbzh;

    .line 7
    invoke-static {}, Lcqt;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v3, v0, Lbzh;->d:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    iget-wide v3, v0, Lbzh;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lbzh;->e:J

    iget-object v1, v0, Lbzh;->i:Lbzg;

    iput-boolean v2, v1, Lbzg;->b:Z

    new-instance v1, Lbzb;

    .line 9
    invoke-direct {v1, v0}, Lbzb;-><init>(Lbzh;)V

    invoke-static {v1}, Lcqt;->a(Ljava/lang/Runnable;)V

    .line 10
    new-instance v1, Lbzf;

    invoke-direct {v1, v0, p0}, Lbzf;-><init>(Lbzh;Landroid/app/Application;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    :cond_0
    invoke-static {p0}, Lccv;->a(Landroid/content/Context;)V

    .line 12
    invoke-static {p0}, Lann;->a(Landroid/content/Context;)Lann;

    move-result-object v0

    .line 13
    invoke-static {p0}, Laqg;->a(Landroid/content/Context;)I

    move-result v1

    new-instance v3, Lamt;

    invoke-direct {v3, p0}, Lamt;-><init>(Lcom/google/android/apps/pixelmigrate/component/MigrateApplication;)V

    invoke-virtual {v0, v1, v3}, Lann;->a(ILjava/lang/Runnable;)V

    new-instance v0, Lbql;

    .line 14
    invoke-direct {v0}, Lbql;-><init>()V

    sget-object v1, Lbqj;->a:Lbqj;

    if-nez v1, :cond_1

    sput-object v0, Lbqj;->b:Lbql;

    new-instance v0, Lbqj;

    .line 15
    invoke-direct {v0, p0}, Lbqj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbqj;->a:Lbqj;

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/component/MigrateApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/apps/pixelmigrate/component/MigrateApplication;->b:Lacw;

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    .line 17
    const-string v4, "Debug build - disabling crash collection"

    invoke-virtual {v0, v4, v3}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lbqj;->a:Lbqj;

    if-eqz v0, :cond_2

    .line 18
    sget-object v0, Lbqj;->a:Lbqj;

    .line 19
    invoke-virtual {v0}, Lbqj;->a()Lbqh;

    move-result-object v0

    iget-object v0, v0, Lbqh;->a:Landroid/content/SharedPreferences;

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "firebase_crash_collection_enabled"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->a()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/firebase/crash/FirebaseCrash;->a(Z)V

    return-void

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    const-string v1, "FirebaseCrash1p not initialized. Call FirebaseCrash1p.initFirebase() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_3
    return-void
.end method
