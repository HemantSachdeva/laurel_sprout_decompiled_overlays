.class public Lcom/google/android/apps/pixelmigrate/component/StubLauncherActivity;
.super Landroid/app/Activity;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    const p1, 0x7f0d00d7

    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/component/StubLauncherActivity;->setContentView(I)V

    .line 4
    sget-object p1, Land;->Y:Lccv;

    invoke-virtual {p1}, Lccv;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    .line 5
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lanb;

    invoke-direct {v0, p0}, Lanb;-><init>(Lcom/google/android/apps/pixelmigrate/component/StubLauncherActivity;)V

    sget-object v1, Land;->Y:Lccv;

    .line 6
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
