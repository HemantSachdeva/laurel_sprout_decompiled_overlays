.class public final Lada;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lako;


# static fields
.field private static k:Lada;


# instance fields
.field public a:Ljava/util/Map;

.field public b:Lahe;

.field public c:Ljava/util/List;

.field public d:Lcsi;

.field public final e:Landroid/util/SparseBooleanArray;

.field public final f:Ljava/util/Set;

.field public g:Latw;

.field public h:Z

.field public i:Z

.field public j:Lacz;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 1
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lada;->e:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lada;->f:Ljava/util/Set;

    .line 3
    invoke-virtual {p0}, Lada;->d()V

    return-void
.end method

.method public static declared-synchronized a()Lada;
    .locals 2

    const-class v0, Lada;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lada;->k:Lada;

    if-nez v1, :cond_0

    new-instance v1, Lada;

    .line 14
    invoke-direct {v1}, Lada;-><init>()V

    sput-object v1, Lada;->k:Lada;

    :cond_0
    sget-object v1, Lada;->k:Lada;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    iget-object v0, p0, Lada;->e:Landroid/util/SparseBooleanArray;

    .line 16
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    return p1
.end method

.method public final b()Lcsl;
    .locals 4

    iget-object v0, p0, Lada;->a:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 4
    sget v1, Lcsl;->a:I

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 6
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x4

    .line 7
    :goto_0
    new-instance v3, Lcsj;

    .line 8
    invoke-direct {v3, v2}, Lcsj;-><init>(I)V

    if-eqz v1, :cond_1

    iget v1, v3, Lcsj;->b:I

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v3, v1}, Lcsj;->a(I)V

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcsj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v3}, Lcsj;->a()Lcsl;

    move-result-object v0

    goto :goto_2

    .line 4
    :cond_3
    sget v0, Lcsl;->a:I

    .line 13
    sget-object v0, Lctf;->b:Lcsl;

    .line 12
    :goto_2
    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lada;->a:Ljava/util/Map;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lada;->a:Ljava/util/Map;

    new-instance v0, Lahe;

    invoke-direct {v0}, Lahe;-><init>()V

    iput-object v0, p0, Lada;->b:Lahe;

    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lada;->c:Ljava/util/List;

    .line 20
    invoke-static {}, Lcsi;->f()Lcsi;

    move-result-object v0

    iput-object v0, p0, Lada;->d:Lcsi;

    iget-object v0, p0, Lada;->e:Landroid/util/SparseBooleanArray;

    .line 21
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lada;->h:Z

    iget-object v0, p0, Lada;->j:Lacz;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0}, Lacz;->a()V

    :cond_0
    return-void
.end method
