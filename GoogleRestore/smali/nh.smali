.class final Lnh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lnj;


# direct methods
.method public constructor <init>(Lnj;)V
    .locals 0

    iput-object p1, p0, Lnh;->a:Lnj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lnh;->a:Lnj;

    iget-object v1, v0, Lnj;->d:Lnn;

    .line 1
    invoke-static {v1}, Lge;->C(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lnj;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnh;->a:Lnj;

    .line 3
    invoke-virtual {v0}, Lnj;->g()V

    iget-object v0, p0, Lnh;->a:Lnj;

    .line 4
    invoke-static {v0}, Lnj;->a(Lnj;)V

    return-void

    :cond_0
    iget-object v0, p0, Lnh;->a:Lnj;

    .line 2
    invoke-virtual {v0}, Lpp;->d()V

    return-void
.end method
