.class public final Ldfz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldga;


# static fields
.field public static final f:Ljava/lang/Object;

.field private static final l:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final a:Ldbb;

.field public final b:Ldgo;

.field public final c:Ldgl;

.field public final d:Ldgj;

.field public final e:Ldgk;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:Ljava/util/concurrent/ExecutorService;

.field private j:Ljava/lang/String;

.field private final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldfz;->f:Ljava/lang/Object;

    new-instance v0, Ldfy;

    .line 1
    invoke-direct {v0}, Ldfy;-><init>()V

    sput-object v0, Ldfz;->l:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Ldbb;Ldgz;Lddi;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v18, Ldfz;->l:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    move-object v2, v10

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v2, Ldgo;

    .line 3
    invoke-virtual/range {p1 .. p1}, Ldbb;->a()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct {v2, v3, v4, v5}, Ldgo;-><init>(Landroid/content/Context;Ldgz;Lddi;)V

    new-instance v3, Ldgl;

    invoke-direct {v3, v1}, Ldgl;-><init>(Ldbb;)V

    new-instance v4, Ldgj;

    invoke-direct {v4}, Ldgj;-><init>()V

    new-instance v5, Ldgk;

    invoke-direct {v5, v1}, Ldgk;-><init>(Ldbb;)V

    sget v6, Ldgh;->a:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Ldfz;->g:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Ldfz;->k:Ljava/util/List;

    iput-object v1, v0, Ldfz;->a:Ldbb;

    iput-object v2, v0, Ldfz;->b:Ldgo;

    iput-object v3, v0, Ldfz;->c:Ldgl;

    iput-object v4, v0, Ldfz;->d:Ldgj;

    iput-object v5, v0, Ldfz;->e:Ldgk;

    iput-object v10, v0, Ldfz;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v17, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-wide/16 v14, 0x1e

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Ldfz;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private final a(Ldgi;)V
    .locals 2

    iget-object v0, p0, Ldfz;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldfz;->k:Ljava/util/List;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final g()V
    .locals 3

    .line 52
    invoke-virtual {p0}, Ldfz;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lbir;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Ldfz;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lbir;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0}, Ldfz;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lbir;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Ldfz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldgj;->a(Ljava/lang/String;)Z

    move-result v0

    .line 56
    invoke-static {v0, v1}, Lbir;->b(ZLjava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Ldfz;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ldgj;->b:Ljava/util/regex/Pattern;

    .line 58
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 57
    invoke-static {v0, v2}, Lbir;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method private final declared-synchronized h()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldfz;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldfz;->a:Ldbb;

    .line 46
    invoke-virtual {v0}, Ldbb;->c()Ldbd;

    move-result-object v0

    iget-object v0, v0, Ldbd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ldgn;)V
    .locals 3

    iget-object v0, p0, Ldfz;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldfz;->k:Ljava/util/List;

    .line 65
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldgi;

    .line 68
    invoke-interface {v2, p1}, Ldgi;->a(Ldgn;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 70
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final a(Ldgn;Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Ldfz;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldfz;->k:Ljava/util/List;

    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 60
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldgi;

    .line 62
    invoke-interface {v2, p1, p2}, Ldgi;->a(Ldgn;Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 64
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldfz;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldfz;->a:Ldbb;

    .line 39
    invoke-virtual {v0}, Ldbb;->c()Ldbd;

    move-result-object v0

    iget-object v0, v0, Ldbd;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldfz;->a:Ldbb;

    .line 38
    invoke-virtual {v0}, Ldbb;->c()Ldbd;

    move-result-object v0

    iget-object v0, v0, Ldbd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lbpi;
    .locals 3

    .line 40
    invoke-direct {p0}, Ldfz;->g()V

    invoke-direct {p0}, Ldfz;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Lbqb;->a(Ljava/lang/Object;)Lbpi;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lbpl;

    .line 41
    invoke-direct {v0}, Lbpl;-><init>()V

    new-instance v1, Ldge;

    .line 42
    invoke-direct {v1, v0}, Ldge;-><init>(Lbpl;)V

    .line 43
    invoke-direct {p0, v1}, Ldfz;->a(Ldgi;)V

    iget-object v0, v0, Lbpl;->a:Lbpp;

    iget-object v1, p0, Ldfz;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ldfv;

    .line 44
    invoke-direct {v2, p0}, Ldfv;-><init>(Ldfz;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final e()V
    .locals 9

    sget-object v0, Ldfz;->f:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldfz;->a:Ldbb;

    .line 9
    invoke-virtual {v1}, Ldbb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldfu;->a(Landroid/content/Context;)Ldfu;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v2, p0, Ldfz;->c:Ldgl;

    .line 10
    invoke-virtual {v2}, Ldgl;->a()Ldgn;

    move-result-object v2

    invoke-virtual {v2}, Ldgn;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Ldfz;->a:Ldbb;

    .line 11
    invoke-virtual {v3}, Ldbb;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHIME_ANDROID_SDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ldfz;->a:Ldbb;

    invoke-virtual {v3}, Ldbb;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    iget v3, v2, Ldgn;->g:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Ldfz;->e:Ldgk;

    iget-object v4, v3, Ldgk;->b:Landroid/content/SharedPreferences;

    .line 13
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v5, v3, Ldgk;->b:Landroid/content/SharedPreferences;

    .line 14
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v6, v3, Ldgk;->b:Landroid/content/SharedPreferences;

    const-string v7, "|S|id"

    .line 15
    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_1

    .line 25
    :try_start_4
    monitor-exit v4

    goto :goto_1

    .line 37
    :cond_1
    iget-object v5, v3, Ldgk;->b:Landroid/content/SharedPreferences;

    .line 17
    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v3, v3, Ldgk;->b:Landroid/content/SharedPreferences;

    const-string v6, "|S||P|"

    .line 18
    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 19
    monitor-exit v5

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {v3}, Ldgk;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    if-nez v3, :cond_3

    .line 21
    monitor-exit v5

    goto :goto_0

    .line 22
    :cond_3
    invoke-static {v3}, Ldgk;->a(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v8

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 24
    :goto_0
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v6, v8

    .line 27
    :goto_1
    :try_start_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 28
    invoke-static {}, Ldgh;->a()Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    .line 16
    :catchall_0
    move-exception v2

    .line 23
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 26
    :catchall_1
    move-exception v2

    .line 16
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2

    .line 34
    :catchall_2
    move-exception v2

    .line 26
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v2

    .line 12
    :cond_4
    invoke-static {}, Ldgh;->a()Ljava/lang/String;

    move-result-object v6

    .line 28
    :cond_5
    :goto_2
    iget-object v3, p0, Ldfz;->c:Ldgl;

    .line 29
    invoke-virtual {v2}, Ldgn;->f()Ldgm;

    move-result-object v2

    iput-object v6, v2, Ldgm;->a:Ljava/lang/String;

    const/4 v4, 0x3

    .line 30
    invoke-virtual {v2, v4}, Ldgm;->a(I)V

    .line 31
    invoke-virtual {v2}, Ldgm;->a()Ldgn;

    move-result-object v2

    .line 32
    invoke-virtual {v3, v2}, Ldgl;->a(Ldgn;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_3

    .line 12
    :cond_6
    nop

    .line 32
    :goto_3
    if-eqz v1, :cond_7

    .line 33
    :try_start_d
    invoke-virtual {v1}, Ldfu;->a()V

    :cond_7
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 36
    invoke-virtual {p0, v2}, Ldfz;->a(Ldgn;)V

    iget-object v0, p0, Ldfz;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldfx;

    .line 37
    invoke-direct {v1, p0}, Ldfx;-><init>(Ldfz;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 35
    :catchall_3
    move-exception v2

    if-eqz v1, :cond_8

    .line 33
    :try_start_e
    invoke-virtual {v1}, Ldfu;->a()V

    .line 34
    :cond_8
    throw v2

    .line 12
    :catchall_4
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v1
.end method

.method public final f()Lbpi;
    .locals 3

    .line 47
    invoke-direct {p0}, Ldfz;->g()V

    new-instance v0, Lbpl;

    .line 48
    invoke-direct {v0}, Lbpl;-><init>()V

    new-instance v1, Ldgd;

    iget-object v2, p0, Ldfz;->d:Ldgj;

    .line 49
    invoke-direct {v1, v2, v0}, Ldgd;-><init>(Ldgj;Lbpl;)V

    .line 50
    invoke-direct {p0, v1}, Ldfz;->a(Ldgi;)V

    iget-object v0, v0, Lbpl;->a:Lbpp;

    iget-object v1, p0, Ldfz;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ldfw;

    .line 51
    invoke-direct {v2, p0}, Ldfw;-><init>(Ldfz;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
