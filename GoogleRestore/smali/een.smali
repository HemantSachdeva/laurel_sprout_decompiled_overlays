.class public final Leen;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldwo;
.implements Lehz;


# instance fields
.field public final a:Leeg;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Ldwn;

.field public final d:Ldvj;

.field public final e:Ldzb;

.field public final f:Leeh;

.field public volatile g:Ljava/util/List;

.field public final h:Lcrf;

.field public i:Ldza;

.field public j:Ldza;

.field public k:Lefy;

.field public final l:Ljava/util/Collection;

.field public final m:Ledt;

.field public n:Lebm;

.field public volatile o:Lefy;

.field public volatile p:Ldvy;

.field public q:Ldyv;

.field public r:Ledb;

.field private final s:Ldwp;

.field private final t:Ljava/lang/String;

.field private final u:Lebh;

.field private final v:Leap;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lebh;Ljava/util/concurrent/ScheduledExecutorService;Ldzb;Leeg;Ldwn;Leap;Lear;Ldwp;Ldvj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leen;->l:Ljava/util/Collection;

    new-instance v0, Ledv;

    .line 2
    invoke-direct {v0, p0}, Ledv;-><init>(Leen;)V

    iput-object v0, p0, Leen;->m:Ledt;

    .line 3
    sget-object v0, Ldvx;->d:Ldvx;

    invoke-static {v0}, Ldvy;->a(Ldvx;)Ldvy;

    move-result-object v0

    iput-object v0, p0, Leen;->p:Ldvy;

    .line 4
    const-string v0, "addressGroups"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "addressGroups is empty"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    .line 6
    const-string v0, "addressGroups contains null entry"

    invoke-static {p1, v0}, Leen;->a(Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Leen;->g:Ljava/util/List;

    new-instance v0, Leeh;

    .line 9
    invoke-direct {v0, p1}, Leeh;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Leen;->f:Leeh;

    iput-object p2, p0, Leen;->t:Ljava/lang/String;

    iput-object p3, p0, Leen;->u:Lebh;

    iput-object p4, p0, Leen;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcrf;->a()Lcrf;

    move-result-object p1

    iput-object p1, p0, Leen;->h:Lcrf;

    iput-object p5, p0, Leen;->e:Ldzb;

    iput-object p6, p0, Leen;->a:Leeg;

    iput-object p7, p0, Leen;->c:Ldwn;

    iput-object p8, p0, Leen;->v:Leap;

    .line 10
    const-string p1, "channelTracer"

    invoke-static {p9, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    const-string p1, "logId"

    invoke-static {p10, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p10, p0, Leen;->s:Ldwp;

    iput-object p11, p0, Leen;->d:Ldvj;

    return-void
.end method

.method static synthetic a(Leen;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Leen;->n:Lebm;

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final b(Ldyv;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldyv;->l:Ldys;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldyv;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ldyv;->m:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lebf;
    .locals 2

    iget-object v0, p0, Leen;->o:Lefy;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Leen;->e:Ldzb;

    new-instance v1, Ledx;

    .line 25
    invoke-direct {v1, p0}, Ledx;-><init>(Leen;)V

    invoke-virtual {v0, v1}, Ldzb;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ldvx;)V
    .locals 1

    iget-object v0, p0, Leen;->e:Ldzb;

    .line 14
    invoke-virtual {v0}, Ldzb;->b()V

    .line 15
    invoke-static {p1}, Ldvy;->a(Ldvx;)Ldvy;

    move-result-object p1

    invoke-virtual {p0, p1}, Leen;->a(Ldvy;)V

    return-void
.end method

.method public final a(Ldvy;)V
    .locals 5

    iget-object v0, p0, Leen;->e:Ldzb;

    .line 16
    invoke-virtual {v0}, Ldzb;->b()V

    iget-object v0, p0, Leen;->p:Ldvy;

    iget-object v0, v0, Ldvy;->a:Ldvx;

    iget-object v1, p1, Ldvy;->a:Ldvx;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Leen;->p:Ldvy;

    iget-object v0, v0, Ldvy;->a:Ldvx;

    sget-object v1, Ldvx;->e:Ldvx;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot transition out of SHUTDOWN to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Leen;->p:Ldvy;

    iget-object v0, p0, Leen;->a:Leeg;

    check-cast v0, Lefn;

    iget-object v1, v0, Lefn;->b:Leae;

    iget-object v1, v1, Leae;->i:Lefs;

    .line 18
    sget-object v3, Lefs;->a:Ljava/util/logging/Logger;

    iget-object v3, p1, Ldvy;->a:Ldvx;

    sget-object v4, Ldvx;->c:Ldvx;

    if-eq v3, v4, :cond_1

    iget-object v3, p1, Ldvy;->a:Ldvx;

    sget-object v4, Ldvx;->d:Ldvx;

    if-ne v3, v4, :cond_2

    :cond_1
    iget-object v3, v1, Lefs;->k:Ldzb;

    .line 19
    invoke-virtual {v3}, Ldzb;->b()V

    .line 20
    invoke-virtual {v1}, Lefs;->f()V

    .line 21
    invoke-virtual {v1}, Lefs;->g()V

    :cond_2
    nop

    .line 22
    const-string v1, "listener is null"

    invoke-static {v2, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v0, v0, Lefn;->a:Legj;

    .line 23
    invoke-virtual {v0, p1}, Legj;->a(Ldvy;)V

    :cond_3
    return-void
.end method

.method public final a(Ldyv;)V
    .locals 2

    iget-object v0, p0, Leen;->e:Ldzb;

    new-instance v1, Leea;

    .line 30
    invoke-direct {v1, p0, p1}, Leea;-><init>(Leen;Ldyv;)V

    invoke-virtual {v0, v1}, Ldzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Ldwp;
    .locals 1

    iget-object v0, p0, Leen;->s:Ldwp;

    return-object v0
.end method

.method public final c()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Leen;->e:Ldzb;

    .line 31
    invoke-virtual {v1}, Ldzb;->b()V

    iget-object v1, v0, Leen;->i:Ldza;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    nop

    .line 32
    const-string v4, "Should have no reconnectTask scheduled"

    invoke-static {v1, v4}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v1, v0, Leen;->f:Leeh;

    iget v4, v1, Leeh;->b:I

    if-nez v4, :cond_1

    iget v1, v1, Leeh;->c:I

    if-nez v1, :cond_1

    iget-object v1, v0, Leen;->h:Lcrf;

    .line 33
    invoke-virtual {v1}, Lcrf;->b()V

    invoke-virtual {v1}, Lcrf;->c()V

    :cond_1
    iget-object v1, v0, Leen;->f:Leeh;

    .line 34
    invoke-virtual {v1}, Leeh;->b()Ljava/net/SocketAddress;

    move-result-object v1

    .line 35
    instance-of v4, v1, Ldwj;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 36
    check-cast v1, Ldwj;

    iget-object v4, v1, Ldwj;->a:Ljava/net/InetSocketAddress;

    move-object/from16 v18, v4

    move-object v4, v1

    move-object/from16 v1, v18

    goto :goto_1

    .line 51
    :cond_2
    move-object v4, v5

    .line 36
    :goto_1
    iget-object v6, v0, Leen;->f:Leeh;

    iget-object v7, v6, Leeh;->a:Ljava/util/List;

    iget v6, v6, Leeh;->b:I

    .line 37
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldwg;

    iget-object v6, v6, Ldwg;->c:Ldvb;

    sget-object v7, Ldwg;->a:Ldva;

    .line 38
    invoke-virtual {v6, v7}, Ldvb;->a(Ldva;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Lebg;

    .line 39
    invoke-direct {v8}, Lebg;-><init>()V

    if-nez v7, :cond_3

    iget-object v7, v0, Leen;->t:Ljava/lang/String;

    .line 40
    :cond_3
    const-string v9, "authority"

    invoke-static {v7, v9}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, v8, Lebg;->a:Ljava/lang/String;

    .line 41
    const-string v7, "eagAttributes"

    invoke-static {v6, v7}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v8, Lebg;->b:Ldvb;

    iput-object v5, v8, Lebg;->c:Ljava/lang/String;

    iput-object v4, v8, Lebg;->d:Ldwj;

    new-instance v4, Leem;

    invoke-direct {v4}, Leem;-><init>()V

    iget-object v5, v0, Leen;->s:Ldwp;

    iput-object v5, v4, Leem;->a:Ldwp;

    new-instance v5, Leef;

    iget-object v6, v0, Leen;->u:Lebh;

    new-instance v7, Lean;

    check-cast v6, Leao;

    iget-object v9, v6, Leao;->a:Lebh;

    .line 42
    move-object v12, v1

    check-cast v12, Ljava/net/InetSocketAddress;

    new-instance v1, Ldzr;

    check-cast v9, Ldzj;

    iget-object v11, v9, Ldzj;->d:Ldzk;

    iget-object v13, v8, Lebg;->a:Ljava/lang/String;

    iget-object v14, v8, Lebg;->b:Ldvb;

    iget-object v15, v9, Ldzj;->b:Ljava/util/concurrent/Executor;

    const/high16 v16, 0x400000

    iget-object v9, v9, Ldzj;->e:Leib;

    .line 43
    move-object v10, v1

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Ldzr;-><init>(Ldzk;Ljava/net/InetSocketAddress;Ljava/lang/String;Ldvb;Ljava/util/concurrent/Executor;ILeib;)V

    iget-object v8, v8, Lebg;->a:Ljava/lang/String;

    .line 44
    invoke-direct {v7, v6, v1, v8}, Lean;-><init>(Leao;Lebm;Ljava/lang/String;)V

    iget-object v1, v0, Leen;->v:Leap;

    .line 45
    invoke-direct {v5, v7, v1}, Leef;-><init>(Lebm;Leap;)V

    .line 46
    invoke-interface {v5}, Lebm;->b()Ldwp;

    move-result-object v1

    iput-object v1, v4, Leem;->a:Ldwp;

    iget-object v1, v0, Leen;->c:Ldwn;

    iget-object v1, v1, Ldwn;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 47
    invoke-static {v1, v5}, Ldwn;->a(Ljava/util/Map;Ldwo;)V

    iput-object v5, v0, Leen;->n:Lebm;

    iget-object v1, v0, Leen;->l:Ljava/util/Collection;

    .line 48
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v1, Leel;

    .line 49
    invoke-direct {v1, v0, v5}, Leel;-><init>(Leen;Lebm;)V

    invoke-interface {v5, v1}, Lebm;->a(Lefx;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v5, v0, Leen;->e:Ldzb;

    .line 50
    invoke-virtual {v5, v1}, Ldzb;->a(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v1, v0, Leen;->d:Ldvj;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v4, Leem;->a:Ldwp;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 51
    const-string v4, "Started transport {0}"

    invoke-virtual {v1, v3, v4, v2}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Leen;->e:Ldzb;

    new-instance v1, Leeb;

    .line 24
    invoke-direct {v1, p0}, Leeb;-><init>(Leen;)V

    invoke-virtual {v0, v1}, Ldzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 52
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Leen;->s:Ldwp;

    iget-wide v1, v1, Ldwp;->a:J

    .line 53
    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcqs;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Leen;->g:Ljava/util/List;

    .line 54
    const-string v2, "addressGroups"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
