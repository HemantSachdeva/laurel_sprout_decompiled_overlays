.class public final Lefs;
.super Ldxk;
.source "PG"

# interfaces
.implements Ldwo;


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field static final b:Ljava/util/regex/Pattern;

.field static final c:Ldyv;

.field static final d:Ldyv;

.field public static final e:Lefw;


# instance fields
.field public final A:Ldvj;

.field public final B:Ldwn;

.field public C:Lefw;

.field public D:Z

.field public final E:Z

.field final F:Ledt;

.field public G:Ldza;

.field public H:I

.field public final I:Leda;

.field public J:Ledb;

.field public final K:Leev;

.field public final L:Lefa;

.field private final M:Ljava/lang/String;

.field private final N:Ldyb;

.field private final O:Ldxz;

.field private final P:Leam;

.field private final Q:Lefl;

.field private final R:Lefd;

.field private final S:J

.field private final T:Lehk;

.field private final U:Ldvi;

.field private V:Ldyg;

.field private W:Z

.field private final X:Ljava/util/Set;

.field private final Y:Ljava/util/concurrent/CountDownLatch;

.field private final Z:Lefx;

.field private final aa:Leha;

.field private final ab:Lehs;

.field public final f:Ldwp;

.field public final g:Lebh;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Lefd;

.field public final j:Lehx;

.field public final k:Ldzb;

.field public final l:Ldwf;

.field public final m:Lcrm;

.field public final n:Lebo;

.field public final o:Ljava/lang/String;

.field public p:Lefh;

.field public volatile q:Ldxe;

.field public r:Z

.field public final s:Ljava/util/Set;

.field public final t:Lebx;

.field public final u:Lefr;

.field public final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile w:Z

.field public volatile x:Z

.field public final y:Leap;

.field public final z:Lear;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lefs;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lefs;->a:Ljava/util/logging/Logger;

    .line 2
    const-string v0, "[a-zA-Z][a-zA-Z0-9+.-]*:/.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lefs;->b:Ljava/util/regex/Pattern;

    .line 3
    sget-object v0, Ldyv;->i:Ldyv;

    .line 4
    const-string v1, "Channel shutdownNow invoked"

    invoke-virtual {v0, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    sget-object v0, Ldyv;->i:Ldyv;

    .line 5
    const-string v1, "Channel shutdown invoked"

    invoke-virtual {v0, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    sput-object v0, Lefs;->c:Ldyv;

    sget-object v0, Ldyv;->i:Ldyv;

    .line 6
    const-string v1, "Subchannel shutdown invoked"

    invoke-virtual {v0, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    sput-object v0, Lefs;->d:Ldyv;

    new-instance v0, Lefw;

    new-instance v3, Ljava/util/HashMap;

    .line 7
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lefw;-><init>(Lefv;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/util/Map;)V

    sput-object v0, Lefs;->e:Lefw;

    return-void
.end method

.method public constructor <init>(Ldzz;Lebh;Leda;Lehs;Lcrm;Ljava/util/List;Lehx;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Ldxk;-><init>()V

    new-instance v4, Ldzb;

    new-instance v5, Leet;

    .line 8
    invoke-direct {v5, v0}, Leet;-><init>(Lefs;)V

    invoke-direct {v4, v5}, Ldzb;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v4, v0, Lefs;->k:Ldzb;

    new-instance v5, Lebo;

    .line 9
    invoke-direct {v5}, Lebo;-><init>()V

    iput-object v5, v0, Lefs;->n:Lebo;

    new-instance v5, Ljava/util/HashSet;

    .line 10
    const/16 v6, 0x10

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v5, v6, v7}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v5, v0, Lefs;->s:Ljava/util/Set;

    new-instance v5, Ljava/util/HashSet;

    .line 11
    const/4 v6, 0x1

    invoke-direct {v5, v6, v7}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v5, v0, Lefs;->X:Ljava/util/Set;

    new-instance v5, Lefr;

    .line 12
    invoke-direct {v5, v0}, Lefr;-><init>(Lefs;)V

    iput-object v5, v0, Lefs;->u:Lefr;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v0, Lefs;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    .line 14
    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, v0, Lefs;->Y:Ljava/util/concurrent/CountDownLatch;

    iput v6, v0, Lefs;->H:I

    sget-object v5, Lefs;->e:Lefw;

    iput-object v5, v0, Lefs;->C:Lefw;

    iput-boolean v7, v0, Lefs;->D:Z

    new-instance v5, Lehb;

    .line 15
    invoke-direct {v5}, Lehb;-><init>()V

    new-instance v5, Lefc;

    .line 16
    invoke-direct {v5, v0}, Lefc;-><init>(Lefs;)V

    iput-object v5, v0, Lefs;->Z:Lefx;

    new-instance v8, Lefe;

    .line 17
    invoke-direct {v8, v0}, Lefe;-><init>(Lefs;)V

    iput-object v8, v0, Lefs;->F:Ledt;

    new-instance v8, Lefa;

    .line 18
    invoke-direct {v8, v0}, Lefa;-><init>(Lefs;)V

    iput-object v8, v0, Lefs;->L:Lefa;

    iget-object v8, v1, Ldzz;->e:Ljava/lang/String;

    .line 19
    const-string v9, "target"

    invoke-static {v8, v9}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v8, v0, Lefs;->M:Ljava/lang/String;

    .line 20
    const-string v9, "Channel"

    invoke-static {v9, v8}, Ldwp;->a(Ljava/lang/String;Ljava/lang/String;)Ldwp;

    move-result-object v9

    iput-object v9, v0, Lefs;->f:Ldwp;

    iput-object v3, v0, Lefs;->j:Lehx;

    iget-object v10, v1, Ldzz;->l:Lehs;

    .line 21
    const-string v11, "executorPool"

    invoke-static {v10, v11}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, v0, Lefs;->ab:Lehs;

    .line 22
    invoke-virtual {v10}, Lehs;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/Executor;

    const-string v11, "executor"

    invoke-static {v10, v11}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, v0, Lefs;->h:Ljava/util/concurrent/Executor;

    new-instance v11, Leao;

    .line 23
    move-object/from16 v12, p2

    invoke-direct {v11, v12, v10}, Leao;-><init>(Lebh;Ljava/util/concurrent/Executor;)V

    iput-object v11, v0, Lefs;->g:Lebh;

    .line 24
    new-instance v12, Lefl;

    .line 25
    invoke-interface {v11}, Lebh;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v13

    .line 26
    invoke-direct {v12, v13}, Lefl;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v12, v0, Lefs;->Q:Lefl;

    .line 27
    new-instance v13, Lear;

    .line 28
    invoke-interface/range {p7 .. p7}, Lehx;->a()J

    move-result-wide v14

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v16, 0xe

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Channel for \'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v9, v14, v15, v6}, Lear;-><init>(Ldwp;JLjava/lang/String;)V

    iput-object v13, v0, Lefs;->z:Lear;

    new-instance v6, Leaq;

    .line 29
    invoke-direct {v6, v13, v3}, Leaq;-><init>(Lear;Lehx;)V

    iput-object v6, v0, Lefs;->A:Ldvj;

    iget-object v7, v1, Ldzz;->d:Ldyb;

    iput-object v7, v0, Lefs;->N:Ldyb;

    .line 30
    sget-object v9, Ledp;->i:Ldyn;

    new-instance v13, Leam;

    .line 31
    invoke-static {}, Ldxj;->a()Ldxj;

    move-result-object v14

    invoke-direct {v13, v14}, Leam;-><init>(Ldxj;)V

    iput-object v13, v0, Lefs;->P:Leam;

    new-instance v14, Lefd;

    iget-object v15, v1, Ldzz;->m:Lehs;

    .line 32
    const-string v3, "offloadExecutorPool"

    invoke-static {v15, v3}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v14, v15}, Lefd;-><init>(Lehs;)V

    iput-object v14, v0, Lefs;->i:Lefd;

    new-instance v3, Ldyf;

    .line 33
    invoke-direct {v3, v13, v6}, Ldyf;-><init>(Leam;Ldvj;)V

    new-instance v13, Ldxy;

    invoke-direct {v13}, Ldxy;-><init>()V

    .line 34
    const/16 v14, 0x1bb

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v13, Ldxy;->a:Ljava/lang/Integer;

    .line 35
    invoke-static {v9}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v9, v13, Ldxy;->b:Ldyn;

    .line 36
    invoke-static {v4}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v13, Ldxy;->c:Ldzb;

    .line 37
    invoke-static {v12}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v12, v13, Ldxy;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v3, v13, Ldxy;->d:Ldyf;

    .line 38
    invoke-static {v6}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v13, Ldxy;->f:Ldvj;

    new-instance v3, Leey;

    .line 39
    invoke-direct {v3, v0}, Leey;-><init>(Lefs;)V

    iput-object v3, v13, Ldxy;->g:Ljava/util/concurrent/Executor;

    new-instance v3, Ldxz;

    iget-object v6, v13, Ldxy;->a:Ljava/lang/Integer;

    iget-object v9, v13, Ldxy;->b:Ldyn;

    iget-object v12, v13, Ldxy;->c:Ldzb;

    iget-object v14, v13, Ldxy;->d:Ldyf;

    iget-object v15, v13, Ldxy;->e:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v16, v11

    iget-object v11, v13, Ldxy;->f:Ldvj;

    iget-object v13, v13, Ldxy;->g:Ljava/util/concurrent/Executor;

    .line 40
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    invoke-direct/range {v17 .. v24}, Ldxz;-><init>(Ljava/lang/Integer;Ldyn;Ldzb;Ldyf;Ljava/util/concurrent/ScheduledExecutorService;Ldvj;Ljava/util/concurrent/Executor;)V

    iput-object v3, v0, Lefs;->O:Ldxz;

    .line 41
    invoke-static {v8, v7, v3}, Lefs;->a(Ljava/lang/String;Ldyb;Ldxz;)Ldyg;

    move-result-object v3

    iput-object v3, v0, Lefs;->V:Ldyg;

    new-instance v3, Lefd;

    .line 42
    move-object/from16 v6, p4

    invoke-direct {v3, v6}, Lefd;-><init>(Lehs;)V

    iput-object v3, v0, Lefs;->R:Lefd;

    new-instance v3, Lebx;

    .line 43
    invoke-direct {v3, v10, v4}, Lebx;-><init>(Ljava/util/concurrent/Executor;Ldzb;)V

    iput-object v3, v0, Lefs;->t:Lebx;

    iput-object v5, v3, Lebx;->f:Lefx;

    new-instance v6, Lebr;

    .line 44
    invoke-direct {v6, v5}, Lebr;-><init>(Lefx;)V

    iput-object v6, v3, Lebx;->c:Ljava/lang/Runnable;

    new-instance v6, Lebs;

    .line 45
    invoke-direct {v6, v5}, Lebs;-><init>(Lefx;)V

    iput-object v6, v3, Lebx;->d:Ljava/lang/Runnable;

    new-instance v6, Lebt;

    .line 46
    invoke-direct {v6, v5}, Lebt;-><init>(Lefx;)V

    iput-object v6, v3, Lebx;->e:Ljava/lang/Runnable;

    move-object/from16 v3, p3

    iput-object v3, v0, Lefs;->I:Leda;

    .line 47
    new-instance v3, Lehk;

    invoke-direct {v3}, Lehk;-><init>()V

    iput-object v3, v0, Lefs;->T:Lehk;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lefs;->E:Z

    new-instance v6, Lefk;

    iget-object v7, v0, Lefs;->V:Ldyg;

    .line 48
    invoke-virtual {v7}, Ldyg;->a()Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-direct {v6, v0, v7}, Lefk;-><init>(Lefs;Ljava/lang/String;)V

    new-array v7, v5, [Ldvm;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    .line 50
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Ldvo;->a(Ldvi;Ljava/util/List;)Ldvi;

    move-result-object v3

    .line 51
    move-object/from16 v6, p6

    invoke-static {v3, v6}, Ldvo;->a(Ldvi;Ljava/util/List;)Ldvi;

    move-result-object v3

    iput-object v3, v0, Lefs;->U:Ldvi;

    .line 52
    const-string v3, "stopwatchSupplier"

    invoke-static {v2, v3}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lefs;->m:Lcrm;

    iget-wide v2, v1, Ldzz;->i:J

    const-wide/16 v6, -0x1

    cmp-long v9, v2, v6

    if-nez v9, :cond_0

    iput-wide v2, v0, Lefs;->S:J

    goto :goto_1

    .line 63
    :cond_0
    sget-wide v6, Ldzz;->b:J

    cmp-long v9, v2, v6

    if-ltz v9, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v6, 0x0

    .line 63
    :goto_0
    iget-wide v2, v1, Ldzz;->i:J

    .line 53
    const-string v5, "invalid idleTimeoutMillis %s"

    invoke-static {v6, v5, v2, v3}, Lcrj;->a(ZLjava/lang/String;J)V

    iget-wide v2, v1, Ldzz;->i:J

    iput-wide v2, v0, Lefs;->S:J

    .line 52
    :goto_1
    new-instance v2, Leha;

    new-instance v3, Leff;

    .line 54
    invoke-direct {v3, v0}, Leff;-><init>(Lefs;)V

    .line 55
    invoke-interface/range {v16 .. v16}, Lebh;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    invoke-static {}, Lcrf;->a()Lcrf;

    move-result-object v6

    .line 56
    invoke-direct {v2, v3, v4, v5, v6}, Leha;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcrf;)V

    iput-object v2, v0, Lefs;->aa:Leha;

    iget-object v2, v1, Ldzz;->g:Ldwf;

    .line 57
    const-string v3, "decompressorRegistry"

    invoke-static {v2, v3}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lefs;->l:Ldwf;

    iget-object v2, v1, Ldzz;->h:Ldvw;

    .line 58
    const-string v3, "compressorRegistry"

    invoke-static {v2, v3}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lefs;->o:Ljava/lang/String;

    new-instance v2, Leev;

    .line 59
    move-object/from16 v3, p7

    invoke-direct {v2, v3}, Leev;-><init>(Lehx;)V

    iput-object v2, v0, Lefs;->K:Leev;

    .line 60
    invoke-virtual {v2}, Leev;->a()Leap;

    move-result-object v2

    iput-object v2, v0, Lefs;->y:Leap;

    iget-object v1, v1, Ldzz;->j:Ldwn;

    .line 61
    invoke-static {v1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lefs;->B:Ldwn;

    iget-object v1, v1, Ldwn;->b:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 62
    invoke-static {v1, v0}, Ldwn;->a(Ljava/util/Map;Ldwo;)V

    .line 63
    return-void
.end method

.method static a(Ljava/lang/String;Ldyb;Ldxz;)Ldyg;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 80
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v1

    .line 79
    :goto_0
    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p1, v2, p2}, Ldyb;->a(Ljava/net/URI;Ldxz;)Ldyg;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    return-object v2

    .line 81
    :cond_1
    :goto_1
    sget-object v2, Lefs;->b:Ljava/util/regex/Pattern;

    .line 82
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_4

    .line 83
    :try_start_1
    new-instance v2, Ljava/net/URI;

    invoke-virtual {p1}, Ldyb;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 87
    :cond_2
    new-instance v6, Ljava/lang/String;

    .line 83
    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_2
    invoke-direct {v2, v4, v3, v5, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    invoke-virtual {p1, v2, p2}, Ldyb;->a(Ljava/net/URI;Ldxz;)Ldyg;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    .line 87
    :cond_3
    return-object p1

    .line 80
    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 85
    :cond_4
    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 84
    :cond_5
    nop

    .line 86
    :goto_4
    const/4 p0, 0x1

    aput-object v3, p2, p0

    .line 87
    const-string p0, "cannot find a NameResolver for %s%s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ldxx;Ldvh;)Ldvl;
    .locals 1

    iget-object v0, p0, Lefs;->U:Ldvi;

    .line 99
    invoke-virtual {v0, p1, p2}, Ldvi;->a(Ldxx;Ldvh;)Ldvl;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lefs;->U:Ldvi;

    .line 64
    invoke-virtual {v0}, Ldvi;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ldxe;)V
    .locals 1

    iput-object p1, p0, Lefs;->q:Ldxe;

    iget-object v0, p0, Lefs;->t:Lebx;

    .line 119
    invoke-virtual {v0, p1}, Lebx;->a(Ldxe;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lefs;->k:Ldzb;

    .line 89
    invoke-virtual {v0}, Ldzb;->b()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v6, v0

    sget-object v1, Lefs;->a:Ljava/util/logging/Logger;

    .line 90
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, " should be called from SynchronizationContext. This warning will become an exception in a future release. See https://github.com/grpc/grpc-java/issues/5015 for more details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "io.grpc.internal.ManagedChannelImpl"

    const-string v4, "logWarningIfNotInSyncContext"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lefs;->k:Ldzb;

    .line 108
    invoke-virtual {v0}, Ldzb;->b()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lefs;->W:Z

    .line 109
    const-string v2, "nameResolver is not started"

    invoke-static {v1, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v1, p0, Lefs;->p:Lefh;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    nop

    .line 110
    const-string v2, "lbHelper is null"

    invoke-static {v1, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lefs;->V:Ldyg;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {p0}, Lefs;->f()V

    iget-object v1, p0, Lefs;->V:Ldyg;

    .line 112
    invoke-virtual {v1}, Ldyg;->b()V

    iput-boolean v0, p0, Lefs;->W:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lefs;->M:Ljava/lang/String;

    iget-object v0, p0, Lefs;->N:Ldyb;

    iget-object v1, p0, Lefs;->O:Ldxz;

    .line 113
    invoke-static {p1, v0, v1}, Lefs;->a(Ljava/lang/String;Ldyb;Ldxz;)Ldyg;

    move-result-object p1

    iput-object p1, p0, Lefs;->V:Ldyg;

    goto :goto_1

    .line 114
    :cond_2
    iput-object v2, p0, Lefs;->V:Ldyg;

    .line 113
    :cond_3
    :goto_1
    iget-object p1, p0, Lefs;->p:Lefh;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lefh;->a:Leah;

    iget-object v0, p1, Leah;->b:Ldxf;

    .line 114
    invoke-virtual {v0}, Ldxf;->a()V

    iput-object v2, p1, Leah;->b:Ldxf;

    iput-object v2, p0, Lefs;->p:Lefh;

    :cond_4
    iput-object v2, p0, Lefs;->q:Ldxe;

    return-void
.end method

.method public final b()Ldwp;
    .locals 1

    iget-object v0, p0, Lefs;->f:Ldwp;

    return-object v0
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lefs;->aa:Leha;

    const/4 v1, 0x0

    iput-boolean v1, v0, Leha;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, v0, Leha;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, v0, Leha;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public final bridge synthetic c()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final d()V
    .locals 3

    iget-object v0, p0, Lefs;->k:Ldzb;

    .line 68
    invoke-virtual {v0}, Ldzb;->b()V

    iget-object v0, p0, Lefs;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lefs;->r:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lefs;->F:Ledt;

    .line 70
    invoke-virtual {v0}, Ledt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lefs;->b(Z)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lefs;->e()V

    .line 71
    :goto_0
    iget-object v0, p0, Lefs;->p:Lefh;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lefs;->A:Ldvj;

    const/4 v1, 0x2

    .line 73
    const-string v2, "Exiting idle mode"

    invoke-virtual {v0, v1, v2}, Ldvj;->a(ILjava/lang/String;)V

    new-instance v0, Lefh;

    .line 74
    invoke-direct {v0, p0}, Lefh;-><init>(Lefs;)V

    iget-object v1, p0, Lefs;->P:Leam;

    new-instance v2, Leah;

    .line 75
    invoke-direct {v2, v1, v0}, Leah;-><init>(Leam;Ldwy;)V

    iput-object v2, v0, Lefh;->a:Leah;

    iput-object v0, p0, Lefs;->p:Lefh;

    new-instance v1, Ldyc;

    iget-object v2, p0, Lefs;->V:Ldyg;

    .line 76
    invoke-direct {v1, p0, v0, v2}, Ldyc;-><init>(Lefs;Lefh;Ldyg;)V

    iget-object v0, p0, Lefs;->V:Ldyg;

    .line 77
    invoke-virtual {v0, v1}, Ldyg;->a(Ldyc;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lefs;->W:Z

    return-void

    .line 69
    :cond_3
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 10

    iget-wide v0, p0, Lefs;->S:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lefs;->aa:Leha;

    .line 102
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 104
    invoke-virtual {v2}, Leha;->a()J

    move-result-wide v3

    add-long/2addr v3, v0

    const/4 v5, 0x1

    iput-boolean v5, v2, Leha;->e:Z

    iget-wide v5, v2, Leha;->d:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    iget-object v5, v2, Leha;->f:Ljava/util/concurrent/ScheduledFuture;

    if-nez v5, :cond_3

    :cond_1
    iget-object v5, v2, Leha;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v5, :cond_2

    const/4 v6, 0x0

    .line 105
    invoke-interface {v5, v6}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    iget-object v5, v2, Leha;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Legz;

    .line 106
    invoke-direct {v6, v2}, Legz;-><init>(Leha;)V

    .line 107
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v0, v1, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v2, Leha;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    iput-wide v3, v2, Leha;->d:J

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lefs;->k:Ldzb;

    .line 66
    invoke-virtual {v0}, Ldzb;->b()V

    iget-object v0, p0, Lefs;->G:Ldza;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ldza;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lefs;->G:Ldza;

    iput-object v0, p0, Lefs;->J:Ledb;

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lefs;->k:Ldzb;

    .line 100
    invoke-virtual {v0}, Ldzb;->b()V

    iget-boolean v0, p0, Lefs;->W:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lefs;->V:Ldyg;

    .line 101
    invoke-virtual {v0}, Ldyg;->c()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lefs;->D:Z

    iget-object v1, p0, Lefs;->T:Lehk;

    iget-object v2, p0, Lefs;->C:Lefw;

    iget-object v3, v1, Lehk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-boolean v0, v1, Lehk;->b:Z

    return-void
.end method

.method public final i()V
    .locals 3

    iget-boolean v0, p0, Lefs;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lefs;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lefs;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lefs;->X:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lefs;->A:Ldvj;

    const/4 v1, 0x2

    .line 92
    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Ldvj;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lefs;->B:Ldwn;

    iget-object v0, v0, Ldwn;->b:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 93
    invoke-static {v0, p0}, Ldwn;->b(Ljava/util/Map;Ldwo;)V

    iget-object v0, p0, Lefs;->ab:Lehs;

    iget-object v1, p0, Lefs;->h:Ljava/util/concurrent/Executor;

    .line 94
    invoke-virtual {v0, v1}, Lehs;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lefs;->R:Lefd;

    .line 95
    invoke-virtual {v0}, Lefd;->b()V

    iget-object v0, p0, Lefs;->i:Lefd;

    .line 96
    invoke-virtual {v0}, Lefd;->b()V

    iget-object v0, p0, Lefs;->g:Lebh;

    .line 97
    invoke-interface {v0}, Lebh;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lefs;->x:Z

    iget-object v0, p0, Lefs;->Y:Ljava/util/concurrent/CountDownLatch;

    .line 98
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 115
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Lefs;->f:Ldwp;

    iget-wide v1, v1, Ldwp;->a:J

    .line 116
    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcqs;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Lefs;->M:Ljava/lang/String;

    .line 117
    const-string v2, "target"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
