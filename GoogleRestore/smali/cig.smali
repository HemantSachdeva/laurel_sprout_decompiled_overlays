.class final Lcig;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lciw;


# direct methods
.method public constructor <init>(Lciw;)V
    .locals 0

    iput-object p1, p0, Lcig;->a:Lciw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    sget-object v0, Lciw;->b:Ljava/lang/String;

    iget-object v0, p0, Lcig;->a:Lciw;

    iget-object v0, v0, Lciw;->e:Lciv;

    int-to-float p1, p1

    .line 3
    invoke-virtual {v0, p1}, Lciv;->setTranslationY(F)V

    return-void
.end method
