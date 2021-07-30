.class final Lceo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcey;


# direct methods
.method public constructor <init>(Lcey;I)V
    .locals 0

    iput-object p1, p0, Lceo;->b:Lcey;

    iput p2, p0, Lceo;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lceo;->b:Lcey;

    iget-object v0, v0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lceo;->a:I

    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-nez v2, :cond_1

    .line 1
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_1
    invoke-virtual {v2, v0, v1}, Lqk;->a(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method
