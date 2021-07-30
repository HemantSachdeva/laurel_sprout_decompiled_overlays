.class public final Lcnk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcmb;


# instance fields
.field public final a:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field public final b:Landroid/support/v7/widget/RecyclerView;

.field public c:Landroid/view/View;

.field public d:Lcmg;

.field public e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnk;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    new-instance v0, Lcmg;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcmg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcnk;->d:Lcmg;

    iput-object p2, p0, Lcnk;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lph;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    invoke-direct {v0}, Lph;-><init>()V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lqk;)V

    .line 3
    instance-of p1, p2, Lcom/google/android/setupdesign/view/HeaderRecyclerView;

    if-eqz p1, :cond_0

    .line 4
    move-object p1, p2

    check-cast p1, Lcom/google/android/setupdesign/view/HeaderRecyclerView;

    iget-object p1, p1, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->P:Landroid/view/View;

    iput-object p1, p0, Lcnk;->c:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcnk;->d:Lcmg;

    .line 5
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->a(Lyj;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lcnk;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->isLayoutDirectionResolved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcnk;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcnk;->d:Lcmg;

    iget-object v0, v0, Lcmg;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcnk;->f:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcnk;->f:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcnk;->g:I

    iget v2, p0, Lcnk;->h:I

    iget-object v3, p0, Lcnk;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 9
    invoke-static {v0, v1, v2, v3}, Lbwq;->a(Landroid/graphics/drawable/Drawable;IILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcnk;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcnk;->d:Lcmg;

    .line 10
    invoke-virtual {v1, v0}, Lcmg;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcnk;->g:I

    iput p2, p0, Lcnk;->h:I

    .line 6
    invoke-virtual {p0}, Lcnk;->a()V

    return-void
.end method
