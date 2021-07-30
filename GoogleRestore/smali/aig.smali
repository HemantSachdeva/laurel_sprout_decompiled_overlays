.class final synthetic Laig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Laim;


# direct methods
.method public constructor <init>(Laim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laig;->a:Laim;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Laig;->a:Laim;

    iget-object p1, p1, Laim;->a:Lcom/google/android/setupdesign/GlifListLayout;

    invoke-static {p1}, Lciy;->a(Landroid/view/View;)Lciy;

    move-result-object p1

    invoke-static {}, Lcjb;->a()Lcjb;

    move-result-object v0

    iget v1, p1, Lciw;->f:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    iget-object v2, p1, Lciy;->m:Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    :cond_0
    iget-object p1, p1, Lciw;->l:Lcin;

    iget-object v2, v0, Lcjb;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, p1}, Lcjb;->c(Lcin;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v0, Lcjb;->c:Lcja;

    iput v1, p1, Lcja;->b:I

    iget-object v1, v0, Lcjb;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, v0, Lcjb;->c:Lcja;

    invoke-virtual {v0, p1}, Lcjb;->a(Lcja;)V

    monitor-exit v2

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcjb;->d(Lcin;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, v0, Lcjb;->d:Lcja;

    iput v1, p1, Lcja;->b:I

    goto :goto_0

    :cond_2
    new-instance v3, Lcja;

    invoke-direct {v3, v1, p1}, Lcja;-><init>(ILcin;)V

    iput-object v3, v0, Lcjb;->d:Lcja;

    :goto_0
    iget-object p1, v0, Lcjb;->c:Lcja;

    if-eqz p1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcjb;->a(Lcja;I)Z

    move-result p1

    if-eqz p1, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    const/4 p1, 0x0

    iput-object p1, v0, Lcjb;->c:Lcja;

    invoke-virtual {v0}, Lcjb;->b()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
