.class final Lqi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrz;


# instance fields
.field final synthetic a:Lqk;


# direct methods
.method public constructor <init>(Lqk;)V
    .locals 0

    iput-object p1, p0, Lqi;->a:Lqk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lqi;->a:Lqk;

    .line 7
    invoke-virtual {v0}, Lqk;->t()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;)I
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    .line 5
    invoke-static {p1}, Lqk;->d(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lql;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lqi;->a:Lqk;

    .line 1
    invoke-virtual {v0, p1}, Lqk;->g(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lqi;->a:Lqk;

    iget v1, v0, Lqk;->B:I

    .line 6
    invoke-virtual {v0}, Lqk;->v()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final b(Landroid/view/View;)I
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    .line 3
    invoke-static {p1}, Lqk;->g(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lql;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method
