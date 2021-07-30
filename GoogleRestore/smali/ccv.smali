.class public abstract Lccv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/lang/Object;

.field public static final synthetic d:I

.field private static volatile e:Lccu;

.field private static volatile f:Z

.field private static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final b:Lcct;

.field final c:Ljava/lang/String;

.field private final g:Ljava/lang/Object;

.field private volatile i:I

.field private volatile j:Ljava/lang/Object;

.field private final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccv;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lccv;->e:Lccu;

    const/4 v0, 0x0

    sput-boolean v0, Lccv;->f:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lcsb;

    .line 2
    invoke-direct {v0}, Lcsb;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lccv;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcct;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lccv;->i:I

    iget-object v0, p1, Lcct;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lccv;->b:Lcct;

    iput-object p2, p0, Lccv;->c:Ljava/lang/String;

    iput-object p3, p0, Lccv;->g:Ljava/lang/Object;

    iput-boolean p4, p0, Lccv;->k:Z

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcct;Ljava/lang/String;JZ)Lccv;
    .locals 1

    new-instance v0, Lccm;

    .line 66
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2, p4}, Lccm;-><init>(Lcct;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-object v0
.end method

.method public static a(Lcct;Ljava/lang/String;Ljava/lang/Object;Lccs;Z)Lccv;
    .locals 7

    new-instance v6, Lccr;

    .line 67
    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lccr;-><init>(Lcct;Ljava/lang/String;Ljava/lang/Object;ZLccs;)V

    return-object v6
.end method

.method public static a(Lcct;Ljava/lang/String;Ljava/lang/String;Z)Lccv;
    .locals 1

    new-instance v0, Lccq;

    .line 68
    invoke-direct {v0, p0, p1, p2, p3}, Lccq;-><init>(Lcct;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(Lcct;Ljava/lang/String;ZZ)Lccv;
    .locals 1

    new-instance v0, Lcco;

    .line 69
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2, p3}, Lcco;-><init>(Lcct;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    return-object v0
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lccv;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lccv;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method static a()V
    .locals 1

    sget-object v0, Lccv;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lccv;->a:Ljava/lang/Object;

    .line 51
    monitor-enter v0

    :try_start_0
    sget-object v1, Lccv;->e:Lccu;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v1, v1, Lccu;->a:Landroid/content/Context;

    if-eq v1, p0, :cond_2

    .line 53
    :cond_1
    invoke-static {}, Lccb;->a()V

    .line 54
    invoke-static {}, Lccw;->a()V

    .line 55
    invoke-static {}, Lcch;->a()V

    new-instance v1, Lccl;

    .line 56
    invoke-direct {v1, p0}, Lccl;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-static {v1}, Lcrq;->a(Lcrm;)Lcrm;

    move-result-object v1

    new-instance v2, Lccu;

    .line 58
    invoke-direct {v2, p0, v1}, Lccu;-><init>(Landroid/content/Context;Lcrm;)V

    sput-object v2, Lccv;->e:Lccu;

    .line 59
    invoke-static {}, Lccv;->a()V

    .line 60
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lcct;Ljava/lang/String;DZ)V
    .locals 1

    new-instance v0, Lccp;

    .line 65
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2, p4}, Lccp;-><init>(Lcct;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lccv;->e:Lccu;

    if-nez v0, :cond_1

    sget-object v0, Lccv;->a:Ljava/lang/Object;

    .line 62
    monitor-enter v0

    :try_start_0
    sget-object v1, Lccv;->e:Lccu;

    if-nez v1, :cond_0

    .line 63
    invoke-static {p0}, Lccv;->a(Landroid/content/Context;)V

    .line 64
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccv;->b:Lcct;

    iget-object v0, v0, Lcct;->c:Ljava/lang/String;

    .line 49
    invoke-direct {p0, v0}, Lccv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 9

    iget-boolean v0, p0, Lccv;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error."

    .line 5
    invoke-static {v1, v0}, Lcrj;->b(ZLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lccv;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v2, p0, Lccv;->i:I

    if-ge v2, v0, :cond_1b

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lccv;->i:I

    if-ge v2, v0, :cond_1a

    sget-object v2, Lccv;->e:Lccu;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 12
    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_0
    const-string v5, "Must call PhenotypeFlag.init() first"

    .line 7
    invoke-static {v4, v5}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v4, v2, Lccu;->a:Landroid/content/Context;

    .line 8
    invoke-static {v4}, Lcch;->a(Landroid/content/Context;)Lcch;

    move-result-object v4

    const-string v5, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 9
    invoke-virtual {v4, v5}, Lcch;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 10
    sget-object v6, Lbqa;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v1, "PhenotypeFlag"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Bypass reading Phenotype values for flag: "

    .line 11
    invoke-virtual {p0}, Lccv;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 37
    :cond_2
    new-instance v3, Ljava/lang/String;

    .line 11
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object v1, v5

    goto/16 :goto_7

    :cond_4
    iget-object v4, p0, Lccv;->b:Lcct;

    iget-object v4, v4, Lcct;->a:Landroid/net/Uri;

    if-eqz v4, :cond_d

    iget-object v6, v2, Lccu;->a:Landroid/content/Context;

    .line 13
    sget-object v7, Lccj;->b:Ljava/lang/Object;

    const-string v7, " is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."

    .line 14
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v8, "com.google.android.gms.phenotype"

    .line 15
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v1, "PhenotypeClientHelper"

    .line 16
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    goto/16 :goto_6

    .line 35
    :cond_5
    sget-object v4, Lccj;->a:Lcqu;

    .line 17
    invoke-virtual {v4}, Lcqu;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v1, Lccj;->a:Lcqu;

    .line 18
    invoke-virtual {v1}, Lcqu;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_5

    .line 33
    :cond_6
    sget-object v4, Lccj;->b:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v7, Lccj;->a:Lcqu;

    .line 19
    invoke-virtual {v7}, Lcqu;->a()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v1, Lccj;->a:Lcqu;

    .line 20
    invoke-virtual {v1}, Lcqu;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v4

    goto :goto_5

    :cond_7
    const-string v7, "com.google.android.gms"

    .line 21
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_2

    .line 22
    :cond_8
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.google.android.gms.phenotype"

    .line 23
    invoke-virtual {v7, v8, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    if-eqz v7, :cond_b

    const-string v8, "com.google.android.gms"

    .line 24
    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 25
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_3

    .line 26
    :cond_9
    :goto_2
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v7, "com.google.android.gms"

    .line 27
    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :try_start_3
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x81

    if-eqz v6, :cond_a

    goto :goto_4

    .line 31
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 30
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_4

    .line 25
    :cond_b
    :goto_3
    const/4 v1, 0x0

    .line 29
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcqu;->b(Ljava/lang/Object;)Lcqu;

    move-result-object v1

    sput-object v1, Lccj;->a:Lcqu;

    .line 30
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v1, Lccj;->a:Lcqu;

    .line 31
    invoke-virtual {v1}, Lcqu;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 18
    :goto_5
    if-eqz v1, :cond_c

    iget-object v1, v2, Lccu;->a:Landroid/content/Context;

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lccv;->b:Lcct;

    iget-object v3, v3, Lcct;->a:Landroid/net/Uri;

    .line 33
    invoke-static {v1, v3}, Lccb;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lccb;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :cond_c
    move-object v1, v5

    goto :goto_6

    .line 48
    :catchall_0
    move-exception v0

    .line 30
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 12
    :cond_d
    invoke-static {}, Lccw;->b()Lccw;

    move-result-object v1

    .line 16
    :goto_6
    if-eqz v1, :cond_e

    .line 34
    invoke-virtual {p0}, Lccv;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcce;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 35
    invoke-virtual {p0, v1}, Lccv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    :cond_e
    move-object v1, v5

    .line 11
    :goto_7
    if-eqz v1, :cond_f

    goto :goto_a

    .line 45
    :cond_f
    iget-object v1, p0, Lccv;->b:Lcct;

    iget-boolean v1, v1, Lcct;->d:Z

    if-nez v1, :cond_12

    iget-object v1, v2, Lccu;->a:Landroid/content/Context;

    .line 36
    invoke-static {v1}, Lcch;->a(Landroid/content/Context;)Lcch;

    move-result-object v1

    iget-object v3, p0, Lccv;->b:Lcct;

    iget-boolean v4, v3, Lcct;->d:Z

    if-eqz v4, :cond_10

    move-object v3, v5

    goto :goto_8

    .line 39
    :cond_10
    iget-object v3, v3, Lcct;->b:Ljava/lang/String;

    .line 37
    invoke-direct {p0, v3}, Lccv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    :goto_8
    invoke-virtual {v1, v3}, Lcch;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 39
    invoke-virtual {p0, v1}, Lccv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9

    :cond_11
    move-object v1, v5

    goto :goto_9

    .line 37
    :cond_12
    move-object v1, v5

    .line 39
    :goto_9
    if-nez v1, :cond_13

    iget-object v1, p0, Lccv;->g:Ljava/lang/Object;

    .line 11
    :cond_13
    :goto_a
    iget-object v2, v2, Lccu;->b:Lcrm;

    .line 40
    invoke-interface {v2}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcqu;

    .line 41
    invoke-virtual {v2}, Lcqu;->a()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 42
    invoke-virtual {v2}, Lcqu;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcci;

    iget-object v2, p0, Lccv;->b:Lcct;

    iget-object v3, v2, Lcct;->a:Landroid/net/Uri;

    iget-object v2, v2, Lcct;->c:Ljava/lang/String;

    iget-object v4, p0, Lccv;->c:Ljava/lang/String;

    if-eqz v3, :cond_17

    .line 43
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcci;->a:Ljava/util/Map;

    .line 44
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_14

    goto :goto_c

    .line 47
    :cond_14
    if-eqz v2, :cond_16

    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 46
    :cond_15
    new-instance v4, Ljava/lang/String;

    .line 45
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_16
    :goto_b
    nop

    .line 46
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    goto :goto_c

    .line 45
    :cond_17
    nop

    .line 44
    :goto_c
    if-nez v5, :cond_18

    iget-object v1, p0, Lccv;->g:Ljava/lang/Object;

    goto :goto_d

    .line 47
    :cond_18
    invoke-virtual {p0, v5}, Lccv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    :cond_19
    :goto_d
    iput-object v1, p0, Lccv;->j:Ljava/lang/Object;

    iput v0, p0, Lccv;->i:I

    .line 48
    :cond_1a
    monitor-exit p0

    goto :goto_e

    .line 12
    :catchall_1
    move-exception v0

    .line 48
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_1b
    :goto_e
    iget-object v0, p0, Lccv;->j:Ljava/lang/Object;

    return-object v0
.end method
