.class final Lxd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lxf;

.field final synthetic b:Lxg;


# direct methods
.method public constructor <init>(Lxg;Lxf;)V
    .locals 0

    iput-object p1, p0, Lxd;->b:Lxg;

    iput-object p2, p0, Lxd;->a:Lxf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lxd;->a:Lxf;

    .line 2
    invoke-static {p1, v0}, Lxg;->a(FLxf;)V

    iget-object v0, p0, Lxd;->b:Lxg;

    iget-object v1, p0, Lxd;->a:Lxf;

    .line 3
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lxg;->a(FLxf;Z)V

    iget-object p1, p0, Lxd;->b:Lxg;

    .line 4
    invoke-virtual {p1}, Lxg;->invalidateSelf()V

    return-void
.end method
