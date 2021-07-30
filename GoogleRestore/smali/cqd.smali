.class public Lcqd;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lccd;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0}, Lccd;->a()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3
    :try_start_1
    invoke-interface {p0}, Lccd;->a()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1
    :goto_0
    return-object p0

    .line 3
    :catchall_0
    move-exception p0

    .line 4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5
    throw p0
.end method

.method public static a(Landroid/widget/TextView;Lcnp;)V
    .locals 4

    if-eqz p0, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcnp;->a:Lclu;

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v0}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    iget-object v2, p1, Lcnp;->a:Lclu;

    .line 8
    invoke-virtual {v1, v0, v2}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v1, p1, Lcnp;->b:Lclu;

    if-eqz v1, :cond_1

    .line 10
    invoke-static {v0}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    iget-object v2, p1, Lcnp;->b:Lclu;

    .line 11
    invoke-virtual {v1, v0, v2}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_1
    iget-object v1, p1, Lcnp;->c:Lclu;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 13
    invoke-static {v0}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    iget-object v3, p1, Lcnp;->c:Lclu;

    .line 14
    invoke-virtual {v1, v0, v3}, Lclv;->e(Landroid/content/Context;Lclu;)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 15
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v1, p1, Lcnp;->d:Lclu;

    if-eqz v1, :cond_3

    .line 16
    invoke-static {v0}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    iget-object v3, p1, Lcnp;->d:Lclu;

    .line 17
    invoke-virtual {v1, v0, v3}, Lclv;->c(Landroid/content/Context;Lclu;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    iget p1, p1, Lcnp;->e:I

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    return-void
.end method

.method public static a(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
