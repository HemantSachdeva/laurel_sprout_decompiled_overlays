.class final Ldh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Ljava/util/ArrayList;

.field final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldh;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldh;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldh;->a:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ldh;->b:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;Lbx;)Ldh;
    .locals 2

    .line 14
    invoke-virtual {p1}, Lbx;->o()Lec;

    .line 15
    const p1, 0x7f0a0164

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 16
    instance-of v1, v0, Ldh;

    if-eqz v1, :cond_0

    .line 19
    check-cast v0, Ldh;

    goto :goto_0

    :cond_0
    new-instance v0, Ldh;

    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1}, Ldh;-><init>([B)V

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 19
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Lce;Lue;)V
    .locals 4

    .line 6
    invoke-virtual {p2}, Lue;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldh;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lue;

    invoke-direct {v1}, Lue;-><init>()V

    new-instance v2, Ldg;

    .line 7
    invoke-direct {v2, p1}, Ldg;-><init>(Lce;)V

    iget-object p1, p0, Ldh;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ldh;->b:Ljava/util/HashMap;

    iget-object v3, v2, Ldg;->a:Lba;

    .line 9
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lde;

    .line 10
    invoke-direct {p1, p0, v2, v1}, Lde;-><init>(Ldh;Ldg;Lue;)V

    invoke-virtual {p2, p1}, Lue;->a(Lud;)V

    new-instance p1, Ldf;

    .line 11
    invoke-direct {p1, p0, v2}, Ldf;-><init>(Ldh;Ldg;)V

    iget-object p2, v2, Ldg;->b:Ljava/util/List;

    .line 12
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
