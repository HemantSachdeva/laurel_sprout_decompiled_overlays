.class Lgd;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/view/View;)Lgu;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {v0}, Lgu;->a(Landroid/view/WindowInsets;)Lgu;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v0}, Lgu;->a(Lgu;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgu;->a(Landroid/view/View;)V

    return-object v0
.end method
