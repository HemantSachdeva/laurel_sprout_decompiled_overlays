.class public Lamo;
.super Lbc;
.source "PG"

# interfaces
.implements Lcmk;


# instance fields
.field private j:Lcml;

.field private final k:Lj$/util/function/Supplier;

.field private final l:Lj$/util/function/Supplier;

.field public final s:Lacw;

.field protected t:Lapx;

.field protected u:Z

.field protected v:Laqp;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lbc;-><init>()V

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lacw;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lamo;->s:Lacw;

    iput-boolean v1, p0, Lamo;->u:Z

    .line 3
    new-instance v0, Lamj;

    invoke-direct {v0, p0}, Lamj;-><init>(Lamo;)V

    iput-object v0, p0, Lamo;->k:Lj$/util/function/Supplier;

    new-instance v0, Lamk;

    .line 4
    invoke-direct {v0, p0}, Lamk;-><init>(Lamo;)V

    iput-object v0, p0, Lamo;->l:Lj$/util/function/Supplier;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lamo;->k:Lj$/util/function/Supplier;

    .line 43
    invoke-interface {v0}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lann;

    .line 44
    sget-object v1, Land;->b:Lccv;

    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, v0, Lann;->c:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object p3, p0, Lamo;->s:Lacw;

    new-array v1, v2, [Ljava/lang/Object;

    .line 47
    const-string v2, "Syncing Phenotype."

    invoke-virtual {p3, v2, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 49
    invoke-static {p0}, Laqg;->a(Landroid/content/Context;)I

    move-result p1

    new-instance p3, Laml;

    invoke-direct {p3, p0, p2}, Laml;-><init>(Lamo;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, p3}, Lann;->a(ILjava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lamo;->s:Lacw;

    new-array p2, v2, [Ljava/lang/Object;

    .line 45
    const-string v0, "No need to sync Phenotype."

    invoke-virtual {p1, v0, p2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected final b(Lba;)V
    .locals 3

    iget-boolean v0, p0, Lamo;->u:Z

    if-nez v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v0

    const v1, 0x7f0a00d9

    invoke-virtual {v0, v1}, Lbx;->b(I)Lba;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lbx;->a()Lch;

    move-result-object v0

    .line 39
    const-string v2, "FRAGMENT"

    invoke-virtual {v0, v1, p1, v2}, Lch;->a(ILba;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lch;->b()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lamo;->s:Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 42
    const-string p1, "Activity is stopped; ignoring fragment change to %s"

    invoke-virtual {v0, p1, v1}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c(I)V
    .locals 2

    if-lez p1, :cond_0

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_0

    .line 20
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object p1

    iget-boolean v0, p1, Lbx;->p:Z

    if-nez v0, :cond_0

    new-instance v0, Lapq;

    .line 21
    invoke-direct {v0}, Lapq;-><init>()V

    const-string v1, "DIALOG"

    invoke-virtual {v0, p1, v1}, Lav;->a(Lbx;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 5
    invoke-super {p0, p1}, Lbc;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lamo;->j:Lcml;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lamo;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lamo;->t:Lapx;

    .line 6
    invoke-virtual {v1}, Lapx;->b()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lamo;->j:Lcml;

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    .line 8
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, v0, Lcml;->a:Landroid/view/View;

    .line 9
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v5, v3, v4

    aget v6, v3, v2

    iget-object v7, v0, Lcml;->a:Landroid/view/View;

    .line 10
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    aget v3, v3, v2

    iget-object v8, v0, Lcml;->a:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v3, v8

    .line 11
    invoke-virtual {v1, v5, v6, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcml;->f:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    iget-object v1, v0, Lcml;->f:Landroid/view/MotionEvent;

    .line 14
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v1, v5

    float-to-double v5, v1

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-object v1, v0, Lcml;->f:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v5

    add-double/2addr v3, v5

    iget v1, v0, Lcml;->c:I

    int-to-double v5, v1

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_1

    iget v1, v0, Lcml;->d:I

    int-to-long v3, v1

    cmp-long v1, v7, v3

    if-gez v1, :cond_1

    iget v1, v0, Lcml;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Lcml;->e:I

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    iput v2, v0, Lcml;->e:I

    const/4 v1, 0x1

    :goto_1
    iget-object v3, v0, Lcml;->b:Lcmk;

    .line 16
    invoke-interface {v3, v1}, Lcmk;->c(I)V

    goto :goto_2

    .line 15
    :cond_2
    iput v4, v0, Lcml;->e:I

    .line 16
    :goto_2
    iget-object v1, v0, Lcml;->f:Landroid/view/MotionEvent;

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 18
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, v0, Lcml;->f:Landroid/view/MotionEvent;

    :cond_4
    return v2

    .line 15
    :cond_5
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Lbc;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lamo;->l:Lj$/util/function/Supplier;

    .line 23
    invoke-interface {p1}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laqp;

    iput-object p1, p0, Lamo;->v:Laqp;

    .line 24
    new-instance p1, Lapx;

    invoke-direct {p1, p0}, Lapx;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lamo;->t:Lapx;

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "enable_demo_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Laok;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcml;

    const v0, 0x1020002

    .line 27
    invoke-virtual {p0, v0}, Lamo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcml;-><init>(Lcmk;Landroid/view/View;)V

    iput-object p1, p0, Lamo;->j:Lcml;

    :cond_0
    iput-boolean v1, p0, Lamo;->u:Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lamo;->t:Lapx;

    .line 28
    invoke-virtual {v0}, Lapx;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lamo;->u:Z

    .line 29
    invoke-super {p0}, Lbc;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lamo;->u:Z

    iget-object v1, p0, Lamo;->t:Lapx;

    .line 30
    const-string v2, "This should be running on the main thread."

    invoke-static {v2}, Laqe;->a(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Lapx;->a()V

    .line 32
    invoke-virtual {v1}, Lapx;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v2}, Lapx;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lamo;->j:Lcml;

    if-eqz v1, :cond_1

    iput v0, v1, Lcml;->e:I

    .line 34
    :cond_1
    invoke-super {p0}, Lbc;->onResume()V

    return-void
.end method

.method protected final v()Z
    .locals 3

    .line 19
    invoke-virtual {p0}, Lamo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "deferredSetup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
