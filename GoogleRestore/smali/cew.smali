.class final Lcew;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcfn;

.field final synthetic b:Lcey;


# direct methods
.method public constructor <init>(Lcey;Lcfn;)V
    .locals 0

    iput-object p1, p0, Lcew;->b:Lcey;

    iput-object p2, p0, Lcew;->a:Lcfn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcew;->b:Lcey;

    .line 1
    invoke-virtual {p1}, Lcey;->d()Lph;

    move-result-object p1

    invoke-virtual {p1}, Lph;->o()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcew;->b:Lcey;

    iget-object v0, v0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 2
    invoke-virtual {v0}, Lqc;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcew;->b:Lcey;

    iget-object v1, p0, Lcew;->a:Lcfn;

    .line 3
    invoke-virtual {v1, p1}, Lcfn;->d(I)Lcfj;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcey;->a(Lcfj;)V

    :cond_0
    return-void
.end method
