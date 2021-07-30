.class final Lcdd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcde;

.field private final b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcde;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcdd;->a:Lcde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcdd;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lcdd;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcdd;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcdd;->a:Lcde;

    iget-object v0, v0, Lcde;->b:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcdd;->a:Lcde;

    iget-object v2, p0, Lcdd;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v3, p0, Lcdd;->c:Landroid/view/View;

    iget-object v0, v1, Lcde;->b:Landroid/widget/OverScroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcde;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)V

    iget-object v0, p0, Lcdd;->c:Landroid/view/View;

    .line 4
    invoke-static {v0, p0}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcdd;->a:Lcde;

    iget-object v1, p0, Lcdd;->c:Landroid/view/View;

    .line 5
    invoke-virtual {v0, v1}, Lcde;->h(Landroid/view/View;)V

    :cond_1
    return-void
.end method
