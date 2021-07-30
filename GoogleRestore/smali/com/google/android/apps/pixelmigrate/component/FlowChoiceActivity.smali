.class public Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;
.super Lamo;
.source "PG"

# interfaces
.implements Lali;
.implements Lapp;
.implements Laly;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lamo;-><init>()V

    return-void
.end method

.method private final a(ILbcu;Z)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->v:Laqp;

    .line 2
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->h()Lbcs;

    move-result-object v0

    invoke-virtual {p0}, Lamo;->v()Z

    move-result v1

    invoke-virtual {p3, v0, p2, v1}, Laqp;->a(Lbcs;Lbcu;Z)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->finish()V

    return-void
.end method

.method private final a(Lamn;Z)V
    .locals 1

    iget v0, p1, Lamn;->p:I

    iget-object p1, p1, Lamn;->q:Lbcu;

    .line 5
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(ILbcu;Z)V

    return-void
.end method

.method private final a(Ljava/lang/String;Lamm;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    .line 8
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->v:Laqp;

    .line 11
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->h()Lbcs;

    move-result-object v1

    iget-object v2, p2, Lamm;->e:Lbcu;

    invoke-virtual {p0}, Lamo;->v()Z

    move-result v3

    .line 12
    invoke-virtual {p1, v1, v2, v3}, Laqp;->a(Lbcs;Lbcu;Z)V

    iget p1, p2, Lamm;->d:I

    .line 13
    invoke-virtual {p0, v0, p1}, Lbc;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final h()Lbcs;
    .locals 2

    .line 6
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v0

    const-string v1, "FRAGMENT"

    invoke-virtual {v0, v1}, Lbx;->a(Ljava/lang/String;)Lba;

    move-result-object v0

    check-cast v0, Lalv;

    .line 7
    invoke-virtual {v0}, Lalv;->d()Lbcs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 40
    sget-object v0, Land;->V:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Land;->S:Lccv;

    .line 41
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0}, Laqg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lamm;->b:Lamm;

    .line 43
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(Ljava/lang/String;Lamm;)V

    return-void

    .line 44
    :cond_0
    sget-object v0, Lamn;->c:Lamn;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(Lamn;Z)V

    return-void

    :cond_1
    nop

    .line 45
    sget-object v0, Lamm;->a:Lamm;

    const-string v1, "com.google.android.apps.pixelmigrate.ACTION_D2D_MIGRATE_FLOW"

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(Ljava/lang/String;Lamm;)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->v:Laqp;

    .line 46
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->h()Lbcs;

    move-result-object v1

    sget-object v2, Lbcu;->p:Lbcu;

    invoke-virtual {p0}, Lamo;->v()Z

    move-result v3

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Laqp;->a(Lbcs;Lbcu;Z)V

    new-instance v0, Lalz;

    .line 48
    invoke-direct {v0}, Lalz;-><init>()V

    .line 49
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v1

    const v2, 0x7f0a00d9

    invoke-virtual {v1, v2}, Lbx;->b(I)Lba;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lbx;->a()Lch;

    move-result-object v1

    .line 53
    const-string v3, "FRAGMENT"

    invoke-virtual {v1, v2, v0, v3}, Lch;->a(ILba;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 54
    invoke-virtual {v1, v0}, Lch;->a(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lch;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 56
    sget-object v0, Lamn;->o:Lamn;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(Lamn;Z)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 34
    sget-object v0, Lamn;->i:Lamn;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(Lamn;Z)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 35
    sget-object v0, Lamn;->o:Lamn;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(Lamn;Z)V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 36
    invoke-static {p0}, Lajy;->a(Landroid/content/Context;)Lajy;

    move-result-object v0

    const-string v1, "new"

    invoke-virtual {v0, v1}, Lajy;->a(Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Laqc;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lamn;->f:Lamn;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(Lamn;Z)V

    return-void

    .line 39
    :cond_0
    sget-object v0, Lamn;->e:Lamn;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(Lamn;Z)V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 33
    sget-object v0, Lamn;->j:Lamn;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(Lamn;Z)V

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 14
    invoke-super {p0, p1, p2, p3}, Lamo;->onActivityResult(IILandroid/content/Intent;)V

    .line 15
    sget-object p1, Lamn;->a:Lamn;

    iget p1, p1, Lamn;->p:I

    if-eq p2, p1, :cond_1

    sget-object p1, Lamn;->r:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lamn;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 17
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(Lamn;Z)V

    return-void

    .line 18
    :cond_0
    sget-object p1, Lbcu;->a:Lbcu;

    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->a(ILbcu;Z)V

    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->v:Laqp;

    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->h()Lbcs;

    move-result-object v1

    sget-object v2, Lbcu;->b:Lbcu;

    invoke-virtual {p0}, Lamo;->v()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Laqp;->a(Lbcs;Lbcu;Z)V

    .line 20
    invoke-super {p0}, Lamo;->onBackPressed()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lamo;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "carrier_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "carrier_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "esim_transfer_carrier_id"

    invoke-static {p0, v1, v0}, Laqn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "esim_transfer_carrier_name"

    invoke-static {p0, v0, p1}, Laqn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcnq;

    .line 26
    invoke-static {}, Lcnr;->a()Lcnr;

    move-result-object v0

    invoke-direct {p1, v0}, Lcnq;-><init>(Lcnr;)V

    const v0, 0x7f1201c1

    iput v0, p1, Lcnq;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcnq;->b:Z

    .line 27
    invoke-virtual {p1}, Lcnq;->a()Lcnr;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcnr;->a(Landroid/content/Intent;)I

    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->setTheme(I)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 31
    const p1, 0x7f0d00d7

    invoke-virtual {p0, p1}, Lsi;->setContentView(I)V

    new-instance p1, Lamq;

    .line 32
    invoke-direct {p1, p0}, Lamq;-><init>(Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;)V

    new-instance v0, Lamr;

    invoke-direct {v0, p0}, Lamr;-><init>(Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;)V

    new-instance v1, Lams;

    invoke-direct {v1, p0}, Lams;-><init>(Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;)V

    invoke-virtual {p0, p1, v0, v1}, Lamo;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
