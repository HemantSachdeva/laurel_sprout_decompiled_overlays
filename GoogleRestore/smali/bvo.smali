.class final synthetic Lbvo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbvq;

.field private final b:Lepj;

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lekw;


# direct methods
.method public constructor <init>(Lbvq;Lepj;ZLjava/lang/String;Lekw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvo;->a:Lbvq;

    iput-object p2, p0, Lbvo;->b:Lepj;

    iput-boolean p3, p0, Lbvo;->c:Z

    iput-object p4, p0, Lbvo;->d:Ljava/lang/String;

    iput-object p5, p0, Lbvo;->e:Lekw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lbvo;->a:Lbvq;

    iget-object v1, p0, Lbvo;->b:Lepj;

    iget-boolean v2, p0, Lbvo;->c:Z

    iget-object v3, p0, Lbvo;->d:Ljava/lang/String;

    iget-object v4, p0, Lbvo;->e:Lekw;

    iget-object v5, v0, Lbvq;->d:Leip;

    invoke-interface {v5}, Leip;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbrx;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldjy;

    invoke-virtual {v7, v1}, Ldjy;->a(Ldkd;)V

    sget-object v8, Leoe;->g:Leoe;

    invoke-virtual {v8}, Ldkd;->g()Ldjy;

    move-result-object v8

    iget-object v9, v5, Lbrx;->e:Leod;

    iget-boolean v10, v8, Ldjy;->b:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    invoke-virtual {v8}, Ldjy;->b()V

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_0
    iget-object v10, v8, Ldjy;->a:Ldkd;

    check-cast v10, Leoe;

    iget v9, v9, Leod;->f:I

    iput v9, v10, Leoe;->d:I

    iget v9, v10, Leoe;->a:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v10, Leoe;->a:I

    iget-object v12, v5, Lbrx;->b:Ljava/lang/String;

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v9, v9, 0x1

    iput v9, v10, Leoe;->a:I

    iput-object v12, v10, Leoe;->b:Ljava/lang/String;

    :cond_1
    iget-object v9, v5, Lbrx;->h:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-boolean v12, v8, Ldjy;->b:Z

    if-eqz v12, :cond_2

    invoke-virtual {v8}, Ldjy;->b()V

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_2
    iget-object v12, v8, Ldjy;->a:Ldkd;

    check-cast v12, Leoe;

    iget v13, v12, Leoe;->a:I

    or-int/lit8 v13, v13, 0x8

    iput v13, v12, Leoe;->a:I

    iput-wide v9, v12, Leoe;->e:J

    iget-object v9, v5, Lbrx;->d:Ljava/lang/String;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v13, v13, 0x2

    iput v13, v12, Leoe;->a:I

    iput-object v9, v12, Leoe;->c:Ljava/lang/String;

    :cond_3
    iget-object v9, v5, Lbrx;->c:Ljava/lang/String;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v10, v13, 0x10

    iput v10, v12, Leoe;->a:I

    iput-object v9, v12, Leoe;->f:Ljava/lang/String;

    :cond_4
    iget-boolean v9, v7, Ldjy;->b:Z

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Ldjy;->b()V

    iput-boolean v11, v7, Ldjy;->b:Z

    :cond_5
    iget-object v9, v7, Ldjy;->a:Ldkd;

    check-cast v9, Lepj;

    invoke-virtual {v8}, Ldjy;->f()Ldkd;

    move-result-object v8

    check-cast v8, Leoe;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v9, Lepj;->e:Leoe;

    iget v8, v9, Lepj;->a:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v9, Lepj;->a:I

    sget-object v8, Leoj;->d:Leoj;

    invoke-virtual {v8}, Ldkd;->g()Ldjy;

    move-result-object v8

    iget-object v9, v5, Lbrx;->f:Lbqk;

    invoke-virtual {v9}, Lbqk;->a()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v9

    const-wide/16 v12, 0x400

    div-long/2addr v9, v12

    iget-boolean v12, v8, Ldjy;->b:Z

    if-eqz v12, :cond_6

    invoke-virtual {v8}, Ldjy;->b()V

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_6
    iget-object v12, v8, Ldjy;->a:Ldkd;

    check-cast v12, Leoj;

    iget v13, v12, Leoj;->a:I

    or-int/lit8 v13, v13, 0x1

    iput v13, v12, Leoj;->a:I

    iput-wide v9, v12, Leoj;->b:J

    iget-wide v9, v5, Lbrx;->g:J

    or-int/lit8 v5, v13, 0x2

    iput v5, v12, Leoj;->a:I

    iput-wide v9, v12, Leoj;->c:J

    iget-boolean v5, v7, Ldjy;->b:Z

    if-eqz v5, :cond_7

    invoke-virtual {v7}, Ldjy;->b()V

    iput-boolean v11, v7, Ldjy;->b:Z

    :cond_7
    iget-object v5, v7, Ldjy;->a:Ldkd;

    check-cast v5, Lepj;

    invoke-virtual {v8}, Ldjy;->f()Ldkd;

    move-result-object v8

    check-cast v8, Leoj;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v5, Lepj;->q:Leoj;

    iget v8, v5, Lepj;->a:I

    const/high16 v9, 0x400000

    or-int/2addr v8, v9

    iput v8, v5, Lepj;->a:I

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v1, v1, Lepj;->p:Leob;

    if-nez v1, :cond_8

    sget-object v1, Leob;->c:Leob;

    :cond_8
    invoke-virtual {v1, v6}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldjy;

    invoke-virtual {v8, v1}, Ldjy;->a(Ldkd;)V

    iget-object v1, v8, Ldjy;->a:Ldkd;

    check-cast v1, Leob;

    iget-object v1, v1, Leob;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v0, v8, Ldjy;->b:Z

    if-eqz v0, :cond_9

    invoke-virtual {v8}, Ldjy;->b()V

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_9
    iget-object v0, v8, Ldjy;->a:Ldkd;

    check-cast v0, Leob;

    throw v5

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "::"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Ldjy;->a:Ldkd;

    check-cast v5, Leob;

    iget-object v5, v5, Leob;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, v8, Ldjy;->b:Z

    if-eqz v5, :cond_b

    invoke-virtual {v8}, Ldjy;->b()V

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_b
    iget-object v5, v8, Ldjy;->a:Ldkd;

    check-cast v5, Leob;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v5, Leob;->a:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v5, Leob;->a:I

    iput-object v1, v5, Leob;->b:Ljava/lang/String;

    iget-boolean v1, v7, Ldjy;->b:Z

    if-eqz v1, :cond_c

    invoke-virtual {v7}, Ldjy;->b()V

    iput-boolean v11, v7, Ldjy;->b:Z

    :cond_c
    iget-object v1, v7, Ldjy;->a:Ldkd;

    check-cast v1, Lepj;

    invoke-virtual {v8}, Ldjy;->f()Ldkd;

    move-result-object v5

    check-cast v5, Leob;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v1, Lepj;->p:Leob;

    iget v5, v1, Lepj;->a:I

    const/high16 v8, 0x100000

    or-int/2addr v5, v8

    iput v5, v1, Lepj;->a:I

    :cond_d
    invoke-virtual {v7}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Lepj;

    invoke-virtual {v1, v6}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldjy;

    invoke-virtual {v5, v1}, Ldjy;->a(Ldkd;)V

    iget-boolean v1, v5, Ldjy;->b:Z

    if-eqz v2, :cond_11

    if-eqz v3, :cond_f

    if-eqz v1, :cond_e

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v11, v5, Ldjy;->b:Z

    :cond_e
    iget-object v1, v5, Ldjy;->a:Ldkd;

    check-cast v1, Lepj;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Lepj;->a:I

    const/high16 v6, 0x10000

    or-int/2addr v2, v6

    iput v2, v1, Lepj;->a:I

    iput-object v3, v1, Lepj;->n:Ljava/lang/String;

    goto :goto_0

    :cond_f
    if-eqz v1, :cond_10

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v11, v5, Ldjy;->b:Z

    :cond_10
    iget-object v1, v5, Ldjy;->a:Ldkd;

    check-cast v1, Lepj;

    iget v2, v1, Lepj;->a:I

    const v3, -0x10001

    and-int/2addr v2, v3

    iput v2, v1, Lepj;->a:I

    sget-object v2, Lepj;->w:Lepj;

    iget-object v2, v2, Lepj;->n:Ljava/lang/String;

    iput-object v2, v1, Lepj;->n:Ljava/lang/String;

    goto :goto_0

    :cond_11
    if-eqz v3, :cond_13

    if-eqz v1, :cond_12

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v11, v5, Ldjy;->b:Z

    :cond_12
    iget-object v1, v5, Ldjy;->a:Ldkd;

    check-cast v1, Lepj;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Lepj;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lepj;->a:I

    iput-object v3, v1, Lepj;->d:Ljava/lang/String;

    goto :goto_0

    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v11, v5, Ldjy;->b:Z

    :cond_14
    iget-object v1, v5, Ldjy;->a:Ldkd;

    check-cast v1, Lepj;

    iget v2, v1, Lepj;->a:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Lepj;->a:I

    sget-object v2, Lepj;->w:Lepj;

    iget-object v2, v2, Lepj;->d:Ljava/lang/String;

    iput-object v2, v1, Lepj;->d:Ljava/lang/String;

    :goto_0
    if-eqz v4, :cond_16

    iget-boolean v1, v5, Ldjy;->b:Z

    if-eqz v1, :cond_15

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v11, v5, Ldjy;->b:Z

    :cond_15
    iget-object v1, v5, Ldjy;->a:Ldkd;

    check-cast v1, Lepj;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v1, Lepj;->l:Lekw;

    iget v2, v1, Lepj;->a:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v1, Lepj;->a:I

    :cond_16
    iget-object v1, v0, Lbvq;->c:Leip;

    invoke-interface {v1}, Leip;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcbl;

    invoke-virtual {v5}, Ldjy;->f()Ldkd;

    move-result-object v2

    check-cast v2, Lepj;

    invoke-interface {v1, v2}, Lcbl;->a(Lepj;)V

    iget-object v0, v0, Lbvq;->b:Lcbh;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lcbh;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, v0, Lcbh;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcbh;->b:I

    iget-wide v4, v0, Lcbh;->c:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-lez v8, :cond_17

    iput v11, v0, Lcbh;->b:I

    iput-wide v1, v0, Lcbh;->c:J

    :cond_17
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
