.class final Lgh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lje;


# direct methods
.method public constructor <init>(Lje;)V
    .locals 0

    iput-object p1, p0, Lgh;->a:Lje;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lgh;->a:Lje;

    iget-object p1, p1, Lje;->a:Ljg;

    iget-object p1, p1, Ljg;->c:Landroid/support/v7/widget/ActionBarContainer;

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
