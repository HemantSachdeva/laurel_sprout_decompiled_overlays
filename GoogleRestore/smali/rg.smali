.class public final Lrg;
.super Lqw;
.source "PG"


# instance fields
.field final synthetic m:Lqm;


# direct methods
.method public constructor <init>(Lqm;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lrg;->m:Lqm;

    .line 1
    invoke-direct {p0, p2}, Lqw;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 2
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method protected final a(Landroid/view/View;Lqu;)V
    .locals 3

    iget-object v0, p0, Lrg;->m:Lqm;

    iget-object v1, v0, Lqm;->a:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 3
    invoke-virtual {v0, v1, p1}, Lqm;->a(Lqk;Landroid/view/View;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 5
    aget p1, p1, v1

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lqw;->b(I)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lrg;->i:Landroid/view/animation/DecelerateInterpolator;

    .line 7
    invoke-virtual {p2, v0, p1, v1, v2}, Lqu;->a(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method
