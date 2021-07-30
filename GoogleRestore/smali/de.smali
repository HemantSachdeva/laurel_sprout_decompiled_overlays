.class final Lde;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lud;


# instance fields
.field final synthetic a:Lue;

.field final synthetic b:Ldh;

.field final synthetic c:Ldg;


# direct methods
.method public constructor <init>(Ldh;Ldg;Lue;)V
    .locals 0

    iput-object p1, p0, Lde;->b:Ldh;

    iput-object p2, p0, Lde;->c:Ldg;

    iput-object p3, p0, Lde;->a:Lue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lde;->b:Ldh;

    iget-object v0, v0, Ldh;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lde;->b:Ldh;

    iget-object v1, v1, Ldh;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lde;->c:Ldg;

    .line 1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lde;->b:Ldh;

    iget-object v1, v1, Ldh;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lde;->c:Ldg;

    iget-object v2, v2, Ldg;->a:Lba;

    .line 2
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lde;->a:Lue;

    .line 3
    invoke-virtual {v1}, Lue;->b()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
