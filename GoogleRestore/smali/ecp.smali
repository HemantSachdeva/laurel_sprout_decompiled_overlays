.class final Lecp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lebe;


# instance fields
.field public final a:Lebe;

.field public volatile b:Z

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lebe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lecp;->c:Ljava/util/List;

    iput-object p1, p0, Lecp;->a:Lebe;

    return-void
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lecp;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lecp;->c:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lecp;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lecp;->a:Lebe;

    .line 11
    invoke-interface {v0}, Lebe;->a()V

    return-void

    :cond_0
    new-instance v0, Lecl;

    .line 12
    invoke-direct {v0, p0}, Lecl;-><init>(Lecp;)V

    invoke-direct {p0, v0}, Lecp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ldxt;)V
    .locals 1

    new-instance v0, Lecm;

    .line 8
    invoke-direct {v0, p0, p1}, Lecm;-><init>(Lecp;Ldxt;)V

    invoke-direct {p0, v0}, Lecp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ldyv;Ldxt;)V
    .locals 1

    new-instance v0, Lecn;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lecn;-><init>(Lecp;Ldyv;Ldxt;)V

    invoke-direct {p0, v0}, Lecp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ldyv;Lebd;Ldxt;)V
    .locals 1

    new-instance v0, Leco;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Leco;-><init>(Lecp;Ldyv;Lebd;Ldxt;)V

    invoke-direct {p0, v0}, Lecp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lega;)V
    .locals 1

    iget-boolean v0, p0, Lecp;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lecp;->a:Lebe;

    .line 9
    invoke-interface {v0, p1}, Lebe;->a(Lega;)V

    return-void

    :cond_0
    new-instance v0, Leck;

    .line 10
    invoke-direct {v0, p0, p1}, Leck;-><init>(Lecp;Lega;)V

    invoke-direct {p0, v0}, Lecp;->a(Ljava/lang/Runnable;)V

    return-void
.end method
