.class public final Lagb;
.super Lafy;
.source "PG"


# instance fields
.field public final k:Laox;

.field public final l:J

.field private final m:Landroid/content/Context;

.field private final n:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laox;Landroid/accounts/Account;JLjava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p6}, Lafy;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 2
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lagb;->m:Landroid/content/Context;

    iput-object p2, p0, Lagb;->k:Laox;

    iput-object p3, p0, Lagb;->n:Landroid/accounts/Account;

    iput-wide p4, p0, Lagb;->l:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 5

    sget-object v0, Land;->ad:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lagb;->m:Landroid/content/Context;

    invoke-static {v0}, Laok;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcsi;->a([Ljava/lang/Object;)Lcsi;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lagb;->n:Landroid/accounts/Account;

    invoke-static {v0}, Lcsi;->a(Ljava/lang/Object;)Lcsi;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lj$/util/Collection$$CC;->stream$$dflt$$(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lafz;

    invoke-direct {v1, p0}, Lafz;-><init>(Lagb;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Laga;->a:Lj$/util/function/Function;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMap(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Laop;->a:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Laqc;->a()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsi;

    iget-object v1, p0, Lagb;->j:Lacw;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcsi;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Fetched %d apps."

    invoke-virtual {v1, v3, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
