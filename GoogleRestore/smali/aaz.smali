.class final Laaz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Labj;

.field private final b:Labo;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Labj;Labo;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laaz;->a:Labj;

    iput-object p2, p0, Laaz;->b:Labo;

    iput-object p3, p0, Laaz;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Laaz;->a:Labj;

    .line 1
    invoke-virtual {v0}, Labj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laaz;->a:Labj;

    const-string v1, "canceled-at-delivery"

    .line 2
    invoke-virtual {v0, v1}, Labj;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Laaz;->b:Labo;

    .line 3
    invoke-virtual {v0}, Labo;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laaz;->a:Labj;

    iget-object v1, p0, Laaz;->b:Labo;

    .line 4
    iget-object v1, v1, Labo;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Labj;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Laaz;->a:Labj;

    iget-object v1, p0, Laaz;->b:Labo;

    .line 5
    iget-object v1, v1, Labo;->c:Labr;

    iget-object v2, v0, Labj;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Labj;->e:Labn;

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    check-cast v0, Lace;

    iget-object v2, v0, Lace;->b:Laci;

    iget-object v0, v0, Lace;->a:Ljava/lang/String;

    iget-object v3, v2, Laci;->b:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lacg;

    if-eqz v3, :cond_2

    iput-object v1, v3, Lacg;->b:Labr;

    .line 8
    invoke-virtual {v2, v0, v3}, Laci;->a(Ljava/lang/String;Lacg;)V

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Laaz;->b:Labo;

    .line 9
    iget-boolean v0, v0, Labo;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Laaz;->a:Labj;

    const-string v1, "intermediate-response"

    .line 10
    invoke-virtual {v0, v1}, Labj;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Laaz;->a:Labj;

    const-string v1, "done"

    .line 11
    invoke-virtual {v0, v1}, Labj;->b(Ljava/lang/String;)V

    .line 10
    :goto_1
    iget-object v0, p0, Laaz;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
