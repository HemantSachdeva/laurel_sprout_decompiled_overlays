.class final Legn;
.super Ldxf;
.source "PG"


# instance fields
.field public final c:Ldwy;

.field private d:Ldxd;


# direct methods
.method public constructor <init>(Ldwy;)V
    .locals 0

    invoke-direct {p0}, Ldxf;-><init>()V

    iput-object p1, p0, Legn;->c:Ldwy;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Legn;->d:Ldxd;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ldxd;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ldxc;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v1, v1, Ldxc;->a:Ljava/util/List;

    iget-object v2, v0, Legn;->d:Ldxd;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Legn;->c:Ldwy;

    new-instance v4, Ldwv;

    .line 3
    invoke-direct {v4}, Ldwv;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    const-string v6, "addrs is empty"

    invoke-static {v5, v6}, Lcrj;->a(ZLjava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v4, Ldwv;->a:Ljava/util/List;

    new-instance v1, Ldww;

    iget-object v5, v4, Ldwv;->a:Ljava/util/List;

    iget-object v6, v4, Ldwv;->b:Ldvb;

    iget-object v4, v4, Ldwv;->c:[[Ljava/lang/Object;

    .line 6
    invoke-direct {v1, v5, v6, v4}, Ldww;-><init>(Ljava/util/List;Ldvb;[[Ljava/lang/Object;)V

    check-cast v2, Lefh;

    iget-object v4, v2, Lefh;->b:Lefs;

    iget-object v4, v4, Lefs;->k:Ldzb;

    .line 7
    invoke-virtual {v4}, Ldzb;->b()V

    iget-object v4, v2, Lefh;->b:Lefs;

    iget-boolean v4, v4, Lefs;->x:Z

    xor-int/2addr v4, v3

    .line 8
    const-string v5, "Channel is terminated"

    invoke-static {v4, v5}, Lcrj;->b(ZLjava/lang/Object;)V

    new-instance v4, Leae;

    iget-object v2, v2, Lefh;->b:Lefs;

    .line 9
    invoke-direct {v4, v2, v1}, Leae;-><init>(Lefs;Ldww;)V

    new-instance v1, Legj;

    .line 10
    invoke-direct {v1, v0, v4}, Legj;-><init>(Legn;Ldxd;)V

    iget-object v2, v4, Leae;->i:Lefs;

    .line 11
    iget-object v2, v2, Lefs;->k:Ldzb;

    invoke-virtual {v2}, Ldzb;->b()V

    iget-boolean v2, v4, Leae;->f:Z

    xor-int/2addr v2, v3

    .line 12
    const-string v5, "already started"

    invoke-static {v2, v5}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-boolean v2, v4, Leae;->g:Z

    xor-int/2addr v2, v3

    .line 13
    const-string v5, "already shutdown"

    invoke-static {v2, v5}, Lcrj;->b(ZLjava/lang/Object;)V

    iput-boolean v3, v4, Leae;->f:Z

    iget-object v2, v4, Leae;->i:Lefs;

    .line 14
    iget-boolean v2, v2, Lefs;->w:Z

    if-eqz v2, :cond_0

    iget-object v2, v4, Leae;->i:Lefs;

    .line 15
    iget-object v2, v2, Lefs;->k:Ldzb;

    new-instance v3, Lefm;

    invoke-direct {v3, v1}, Lefm;-><init>(Legj;)V

    invoke-virtual {v2, v3}, Ldzb;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 34
    :cond_0
    new-instance v2, Leen;

    iget-object v3, v4, Leae;->a:Ldww;

    iget-object v6, v3, Ldww;->a:Ljava/util/List;

    iget-object v3, v4, Leae;->i:Lefs;

    .line 16
    invoke-virtual {v3}, Lefs;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v4, Leae;->i:Lefs;

    .line 17
    iget-object v5, v3, Lefs;->o:Ljava/lang/String;

    .line 18
    iget-object v5, v3, Lefs;->I:Leda;

    .line 19
    iget-object v8, v3, Lefs;->g:Lebh;

    .line 20
    invoke-interface {v8}, Lebh;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    iget-object v3, v4, Leae;->i:Lefs;

    .line 21
    iget-object v5, v3, Lefs;->m:Lcrm;

    .line 22
    iget-object v10, v3, Lefs;->k:Ldzb;

    new-instance v11, Lefn;

    invoke-direct {v11, v4, v1}, Lefn;-><init>(Leae;Legj;)V

    iget-object v1, v4, Leae;->i:Lefs;

    .line 23
    iget-object v12, v1, Lefs;->B:Ldwn;

    .line 24
    iget-object v1, v1, Lefs;->K:Leev;

    .line 25
    invoke-virtual {v1}, Leev;->a()Leap;

    move-result-object v13

    iget-object v14, v4, Leae;->d:Lear;

    iget-object v15, v4, Leae;->b:Ldwp;

    iget-object v1, v4, Leae;->c:Leaq;

    move-object v5, v2

    move-object/from16 v16, v1

    invoke-direct/range {v5 .. v16}, Leen;-><init>(Ljava/util/List;Ljava/lang/String;Lebh;Ljava/util/concurrent/ScheduledExecutorService;Ldzb;Leeg;Ldwn;Leap;Lear;Ldwp;Ldvj;)V

    iget-object v1, v4, Leae;->i:Lefs;

    .line 26
    iget-object v1, v1, Lefs;->z:Lear;

    new-instance v3, Ldwk;

    invoke-direct {v3}, Ldwk;-><init>()V

    const-string v5, "Child Subchannel started"

    iput-object v5, v3, Ldwk;->a:Ljava/lang/String;

    .line 27
    sget-object v5, Ldwl;->b:Ldwl;

    iput-object v5, v3, Ldwk;->b:Ldwl;

    iget-object v5, v4, Leae;->i:Lefs;

    .line 28
    iget-object v5, v5, Lefs;->j:Lehx;

    .line 29
    invoke-interface {v5}, Lehx;->a()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ldwk;->a(J)V

    iput-object v2, v3, Ldwk;->c:Ldwt;

    .line 30
    invoke-virtual {v3}, Ldwk;->a()Ldwm;

    move-result-object v3

    .line 31
    invoke-virtual {v1, v3}, Lear;->a(Ldwm;)V

    iput-object v2, v4, Leae;->e:Leen;

    iget-object v1, v4, Leae;->i:Lefs;

    .line 32
    iget-object v1, v1, Lefs;->k:Ldzb;

    new-instance v3, Lefp;

    invoke-direct {v3, v4, v2}, Lefp;-><init>(Leae;Leen;)V

    invoke-virtual {v1, v3}, Ldzb;->execute(Ljava/lang/Runnable;)V

    .line 15
    :goto_0
    iput-object v4, v0, Legn;->d:Ldxd;

    iget-object v1, v0, Legn;->c:Ldwy;

    .line 33
    sget-object v2, Ldvx;->a:Ldvx;

    new-instance v3, Legk;

    invoke-static {v4}, Ldwz;->a(Ldxd;)Ldwz;

    move-result-object v5

    invoke-direct {v3, v5}, Legk;-><init>(Ldwz;)V

    invoke-virtual {v1, v2, v3}, Ldwy;->a(Ldvx;Ldxe;)V

    .line 34
    invoke-virtual {v4}, Ldxd;->b()V

    return-void

    .line 32
    :cond_1
    check-cast v2, Leae;

    iget-object v4, v2, Leae;->i:Lefs;

    .line 35
    iget-object v4, v4, Lefs;->k:Ldzb;

    invoke-virtual {v4}, Ldzb;->b()V

    iget-object v2, v2, Leae;->e:Leen;

    .line 36
    const-string v4, "newAddressGroups"

    invoke-static {v1, v4}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    const-string v4, "newAddressGroups contains null entry"

    invoke-static {v1, v4}, Leen;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/2addr v3, v4

    const-string v4, "newAddressGroups is empty"

    invoke-static {v3, v4}, Lcrj;->a(ZLjava/lang/Object;)V

    iget-object v3, v2, Leen;->e:Ldzb;

    new-instance v4, Ledz;

    .line 39
    invoke-direct {v4, v2, v1}, Ledz;-><init>(Leen;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ldzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ldyv;)V
    .locals 3

    iget-object v0, p0, Legn;->d:Ldxd;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Ldxd;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Legn;->d:Ldxd;

    :cond_0
    iget-object v0, p0, Legn;->c:Ldwy;

    .line 2
    sget-object v1, Ldvx;->c:Ldvx;

    new-instance v2, Legk;

    invoke-static {p1}, Ldwz;->a(Ldyv;)Ldwz;

    move-result-object p1

    invoke-direct {v2, p1}, Legk;-><init>(Ldwz;)V

    invoke-virtual {v0, v1, v2}, Ldwy;->a(Ldvx;Ldxe;)V

    return-void
.end method
