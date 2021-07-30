.class public final Lxm;
.super Landroid/view/animation/Animation;
.source "PG"


# instance fields
.field final synthetic a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lxm;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget-object p2, p0, Lxm;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 2
    iget-boolean v0, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j:Z

    .line 3
    iget v0, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:I

    iget p2, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object v1, p0, Lxm;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    iget v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:I

    .line 5
    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d:Lxc;

    invoke-virtual {v1}, Lxc;->getTop()I

    move-result v1

    iget-object v3, p0, Lxm;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    sub-int/2addr v0, p2

    sub-int/2addr v0, v2

    int-to-float p2, v0

    mul-float p2, p2, p1

    float-to-int p2, p2

    add-int/2addr v2, p2

    sub-int/2addr v2, v1

    .line 6
    invoke-virtual {v3, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a(I)V

    iget-object p2, p0, Lxm;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 7
    iget-object p2, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:Lxg;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lxg;->a(F)V

    return-void
.end method
