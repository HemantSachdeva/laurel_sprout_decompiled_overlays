.class final Lces;
.super Lyj;
.source "PG"


# instance fields
.field final synthetic a:Lcey;


# direct methods
.method public constructor <init>(Lcey;)V
    .locals 0

    iput-object p1, p0, Lces;->a:Lcey;

    invoke-direct {p0}, Lyj;-><init>()V

    .line 1
    invoke-static {}, Lcft;->b()Ljava/util/Calendar;

    .line 2
    invoke-static {}, Lcft;->b()Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 3
    instance-of v0, p1, Lcfw;

    if-eqz v0, :cond_2

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 4
    instance-of v0, p2, Loz;

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    check-cast p1, Lcfw;

    .line 6
    check-cast p2, Loz;

    iget-object p1, p0, Lces;->a:Lcey;

    iget-object p1, p1, Lcey;->a:Lcek;

    .line 7
    invoke-interface {p1}, Lcek;->d()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfh;

    .line 8
    iget-object p2, p2, Lfh;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void

    .line 4
    :cond_2
    :goto_1
    return-void
.end method
