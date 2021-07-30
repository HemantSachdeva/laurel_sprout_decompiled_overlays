.class public Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;
.super Lamo;
.source "PG"

# interfaces
.implements Lamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lamo;-><init>()V

    return-void
.end method

.method private final g()Lbcs;
    .locals 2

    .line 8
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v0

    const-string v1, "FRAGMENT"

    invoke-virtual {v0, v1}, Lbx;->a(Ljava/lang/String;)Lba;

    move-result-object v0

    check-cast v0, Lalv;

    .line 9
    invoke-virtual {v0}, Lalv;->d()Lbcs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lamn;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;->v:Laqp;

    .line 2
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;->g()Lbcs;

    move-result-object v1

    iget-object v2, p1, Lamn;->q:Lbcu;

    invoke-virtual {p0}, Lamo;->v()Z

    move-result v3

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Laqp;->a(Lbcs;Lbcu;Z)V

    iget p1, p1, Lamn;->p:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;->setResult(I)V

    .line 5
    invoke-virtual {p0}, Lamo;->v()Z

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const-string p1, "initial_last_activity_key"

    goto :goto_0

    .line 7
    :cond_0
    const-string p1, "deferred_last_activity_key"

    .line 6
    :goto_0
    invoke-static {p0, p1}, Laqn;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;->finish()V

    return-void
.end method

.method public final f()V
    .locals 4

    .line 21
    sget-object v0, Ldub;->a:Ldub;

    .line 22
    invoke-virtual {v0}, Ldub;->b()Lduc;

    move-result-object v0

    invoke-interface {v0}, Lduc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lamf;

    .line 23
    invoke-direct {v0}, Lamf;-><init>()V

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lalp;

    invoke-direct {v0}, Lalp;-><init>()V

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;->t:Lapx;

    new-instance v2, Lamz;

    .line 25
    invoke-direct {v2, p0}, Lamz;-><init>(Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;)V

    new-instance v3, Lana;

    invoke-direct {v3, p0, v0}, Lana;-><init>(Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;Lalv;)V

    .line 26
    const-string v0, "This should be running on the main thread."

    invoke-static {v0}, Laqe;->a(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Lapx;->a()V

    .line 28
    invoke-virtual {v1}, Lapx;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 30
    invoke-virtual {v1, v3}, Lapx;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    sget-object v0, Lapx;->a:Laqd;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    const-string v2, "No FRP reloading required"

    invoke-virtual {v0, v2, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;->v:Laqp;

    .line 10
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;->g()Lbcs;

    move-result-object v1

    sget-object v2, Lbcu;->b:Lbcu;

    invoke-virtual {p0}, Lamo;->v()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Laqp;->a(Lbcs;Lbcu;Z)V

    .line 11
    invoke-super {p0}, Lamo;->onBackPressed()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 12
    invoke-super {p0, p1}, Lamo;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcnq;

    .line 13
    invoke-static {}, Lcnr;->a()Lcnr;

    move-result-object v0

    invoke-direct {p1, v0}, Lcnq;-><init>(Lcnr;)V

    const v0, 0x7f1201c1

    iput v0, p1, Lcnq;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcnq;->b:Z

    .line 14
    invoke-virtual {p1}, Lcnq;->a()Lcnr;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcnr;->a(Landroid/content/Intent;)I

    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;->setTheme(I)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 18
    const p1, 0x7f0d00d7

    invoke-virtual {p0, p1}, Lsi;->setContentView(I)V

    return-void
.end method

.method protected final onResume()V
    .locals 3

    .line 19
    invoke-super {p0}, Lamo;->onResume()V

    new-instance v0, Lamw;

    .line 20
    invoke-direct {v0, p0}, Lamw;-><init>(Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;)V

    new-instance v1, Lamx;

    invoke-direct {v1, p0}, Lamx;-><init>(Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;)V

    new-instance v2, Lamy;

    invoke-direct {v2, p0}, Lamy;-><init>(Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lamo;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
