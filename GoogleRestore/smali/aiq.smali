.class public final Laiq;
.super Lalv;
.source "PG"


# static fields
.field public static final a:Laqd;


# instance fields
.field private b:Laip;

.field private c:Landroid/os/Handler;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CloudRestoreContinue"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laiq;->a:Laqd;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lalv;-><init>()V

    .line 3
    sget-object v0, Land;->R:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Laiq;->d:J

    return-void
.end method

.method public static b(Z)Laiq;
    .locals 3

    new-instance v0, Laiq;

    .line 7
    invoke-direct {v0}, Laiq;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    const-string v2, "should_call_system_restore"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    invoke-virtual {v0, v1}, Lba;->d(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private final k()Z
    .locals 3

    iget-object v0, p0, Lba;->k:Landroid/os/Bundle;

    .line 34
    const-string v1, "should_call_system_restore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 14
    const v0, 0x7f0d0038

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 15
    const p2, 0x7f110162

    invoke-virtual {p0, p1, p2}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;I)V

    .line 16
    const p2, 0x7f0a0185

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 17
    invoke-direct {p0}, Laiq;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110146

    .line 18
    invoke-virtual {p0, v0}, Lba;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_0
    const v0, 0x7f110055

    .line 19
    invoke-virtual {p0, v0}, Lba;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 19
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 20
    invoke-static {v0, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 21
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Laiq;->d:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1

    .line 22
    invoke-direct {p0}, Laiq;->k()Z

    move-result p2

    if-nez p2, :cond_1

    const-class p2, Lcly;

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p2

    check-cast p2, Lcly;

    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lclz;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110194

    .line 25
    invoke-virtual {v0, v1}, Lclz;->a(I)V

    new-instance v1, Lain;

    invoke-direct {v1, p0}, Lain;-><init>(Laiq;)V

    iput-object v1, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    iput v1, v0, Lclz;->c:I

    const v1, 0x7f1201a4

    iput v1, v0, Lclz;->d:I

    .line 26
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Lcly;->a(Lcma;)V

    :cond_1
    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 11
    invoke-super {p0, p1}, Lalv;->a(Landroid/content/Context;)V

    .line 12
    :try_start_0
    move-object v0, p1

    check-cast v0, Laip;

    iput-object v0, p0, Laiq;->b:Laip;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 11
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " must implement CloudRestoreContinueSuwFragment.Listener"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Lbcs;
    .locals 1

    .line 6
    sget-object v0, Lbcs;->M:Lbcs;

    return-object v0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Laiq;->b:Laip;

    if-nez v0, :cond_0

    sget-object v0, Laiq;->a:Laqd;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    const-string v2, "Not attached to activity"

    invoke-virtual {v0, v2, v1}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-interface {v0}, Laip;->o()V

    return-void
.end method

.method public final y()V
    .locals 5

    .line 30
    invoke-super {p0}, Lalv;->y()V

    iget-wide v0, p0, Laiq;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 31
    invoke-direct {p0}, Laiq;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laiq;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    .line 32
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Laiq;->c:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Laiq;->c:Landroid/os/Handler;

    new-instance v1, Laio;

    .line 33
    invoke-direct {v1, p0}, Laio;-><init>(Laiq;)V

    iget-wide v2, p0, Laiq;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Laiq;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    :cond_0
    invoke-super {p0}, Lalv;->z()V

    return-void
.end method
