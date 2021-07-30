.class public Lcom/google/android/apps/pixelmigrate/common/component/WorkProfileSetupActivity;
.super Lbc;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbc;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcnq;

    .line 2
    invoke-static {}, Lcnr;->a()Lcnr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcnq;-><init>(Lcnr;)V

    const v1, 0x7f1201c1

    iput v1, v0, Lcnq;->a:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcnq;->b:Z

    .line 3
    invoke-virtual {v0}, Lcnq;->a()Lcnr;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/common/component/WorkProfileSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcnr;->a(Landroid/content/Intent;)I

    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/common/component/WorkProfileSetupActivity;->setTheme(I)V

    .line 6
    invoke-super {p0, p1}, Lbc;->onCreate(Landroid/os/Bundle;)V

    .line 7
    const p1, 0x7f0d00d7

    invoke-virtual {p0, p1}, Lsi;->setContentView(I)V

    .line 8
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lbx;->a()Lch;

    move-result-object p1

    new-instance v0, Lami;

    invoke-direct {v0}, Lami;-><init>()V

    .line 10
    const v1, 0x7f0a00d9

    invoke-virtual {p1, v1, v0}, Lch;->a(ILba;)V

    .line 11
    invoke-virtual {p1}, Lch;->b()V

    return-void
.end method
