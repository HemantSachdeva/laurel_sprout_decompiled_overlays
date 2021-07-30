.class final Lcfu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcfw;


# direct methods
.method public constructor <init>(Lcfw;I)V
    .locals 0

    iput-object p1, p0, Lcfu;->b:Lcfw;

    iput p2, p0, Lcfu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcfu;->a:I

    iget-object v0, p0, Lcfu;->b:Lcfw;

    iget-object v0, v0, Lcfw;->c:Lcey;

    iget-object v0, v0, Lcey;->c:Lcfj;

    .line 1
    iget v0, v0, Lcfj;->c:I

    invoke-static {p1, v0}, Lcfj;->a(II)Lcfj;

    move-result-object p1

    iget-object v0, p0, Lcfu;->b:Lcfw;

    iget-object v0, v0, Lcfw;->c:Lcey;

    iget-object v0, v0, Lcey;->b:Lceh;

    iget-object v1, v0, Lceh;->a:Lcfj;

    .line 2
    invoke-virtual {p1, v1}, Lcfj;->a(Lcfj;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object p1, v0, Lceh;->a:Lcfj;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lceh;->b:Lcfj;

    .line 3
    invoke-virtual {p1, v1}, Lcfj;->a(Lcfj;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object p1, v0, Lceh;->b:Lcfj;

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcfu;->b:Lcfw;

    iget-object v0, v0, Lcfw;->c:Lcey;

    .line 4
    invoke-virtual {v0, p1}, Lcey;->a(Lcfj;)V

    iget-object p1, p0, Lcfu;->b:Lcfw;

    iget-object p1, p1, Lcfw;->c:Lcey;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcey;->e(I)V

    return-void
.end method
