.class final Ldzq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ldzo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldxt;

.field final synthetic d:Ldxx;

.field final synthetic e:Leht;

.field final synthetic f:Ldvh;

.field final synthetic g:Ldzr;


# direct methods
.method public constructor <init>(Ldzr;Ljava/lang/String;Ldxt;Ldxx;Leht;Ldvh;)V
    .locals 15

    move-object v13, p0

    move-object/from16 v5, p1

    iput-object v5, v13, Ldzq;->g:Ldzr;

    move-object/from16 v1, p2

    iput-object v1, v13, Ldzq;->b:Ljava/lang/String;

    move-object/from16 v4, p3

    iput-object v4, v13, Ldzq;->c:Ldxt;

    move-object/from16 v9, p4

    iput-object v9, v13, Ldzq;->d:Ldxx;

    move-object/from16 v10, p5

    iput-object v10, v13, Ldzq;->e:Leht;

    move-object/from16 v11, p6

    iput-object v11, v13, Ldzq;->f:Ldvh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v14, Ldzo;

    .line 2
    iget-object v2, v5, Ldzr;->a:Ljava/lang/String;

    .line 3
    iget-object v3, v5, Ldzr;->e:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v7, v5, Ldzr;->c:Ljava/lang/Object;

    .line 5
    iget v0, v5, Ldzr;->f:I

    .line 6
    iget-boolean v0, v5, Ldzr;->g:Z

    .line 7
    iget-object v12, v5, Ldzr;->h:Leib;

    .line 8
    iget-boolean v0, v5, Ldzr;->i:Z

    .line 9
    iget-boolean v0, v5, Ldzr;->j:Z

    .line 10
    const/high16 v8, 0x400000

    move-object v0, v14

    move-object v6, p0

    invoke-direct/range {v0 .. v12}, Ldzo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ldxt;Ldzr;Ljava/lang/Runnable;Ljava/lang/Object;ILdxx;Leht;Ldvh;Leib;)V

    iput-object v14, v13, Ldzq;->a:Ldzo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ldzq;->g:Ldzr;

    .line 11
    iget-object v0, v0, Ldzr;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldzq;->g:Ldzr;

    .line 12
    iget-boolean v2, v1, Ldzr;->k:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldzq;->a:Ldzo;

    iget-object v2, v2, Ldzo;->p:Leds;

    .line 16
    iget-object v1, v1, Ldzr;->l:Ldyv;

    .line 17
    new-instance v3, Ldxt;

    invoke-direct {v3}, Ldxt;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4, v3}, Leac;->a(Ldyv;ZLdxt;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v2, v1, Ldzr;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldzq;->a:Ldzo;

    iget-object v3, v1, Ldzr;->d:Ljava/util/Set;

    .line 14
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Ldzo;->p:Leds;

    iget-object v1, v1, Ldzr;->n:Ldzk;

    iget-object v2, v2, Leds;->z:Ldzo;

    iput-object v1, v2, Ldzo;->o:Ldzk;

    .line 18
    :goto_0
    monitor-exit v0

    return-void

    .line 14
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Transport is not started"

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 14
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
