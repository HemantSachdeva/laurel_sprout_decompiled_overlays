.class public final Lacg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Labr;

.field public final c:Ljava/util/List;

.field private final d:Labj;


# direct methods
.method public constructor <init>(Labj;Lach;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacg;->c:Ljava/util/List;

    iput-object p1, p0, Lacg;->d:Labj;

    .line 2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lach;)Z
    .locals 4

    iget-object v0, p0, Lacg;->c:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lacg;->c:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lacg;->d:Labj;

    iget-object v0, p1, Labj;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p1, Labj;->h:Z

    const/4 v2, 0x0

    iput-object v2, p1, Labj;->e:Labn;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p1

    check-cast v0, Lacj;

    iget-object v3, v0, Lacj;->m:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    check-cast p1, Lacj;

    iput-object v2, p1, Lacj;->n:Lacd;

    .line 6
    monitor-exit v3

    return v1

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 6
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
