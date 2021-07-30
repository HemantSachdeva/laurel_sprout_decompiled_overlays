.class public final Lmz;
.super Landroid/widget/RatingBar;
.source "PG"


# instance fields
.field private final a:Lmx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const v0, 0x7f040214

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Lmz;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lri;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 3
    new-instance p1, Lmx;

    invoke-direct {p1, p0}, Lmx;-><init>(Landroid/widget/ProgressBar;)V

    iput-object p1, p0, Lmz;->a:Lmx;

    .line 4
    invoke-virtual {p1, p2, v0}, Lmx;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    iget-object p2, p0, Lmz;->a:Lmx;

    iget-object p2, p2, Lmx;->a:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lmz;->getNumStars()I

    move-result v0

    mul-int p2, p2, v0

    const/4 v0, 0x0

    .line 7
    invoke-static {p2, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 8
    invoke-virtual {p0}, Lmz;->getMeasuredHeight()I

    move-result p2

    .line 7
    invoke-virtual {p0, p1, p2}, Lmz;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 4
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
