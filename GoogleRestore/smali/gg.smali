.class final Lgg;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lgj;


# direct methods
.method public constructor <init>(Lgj;)V
    .locals 0

    iput-object p1, p0, Lgg;->a:Lgj;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lgg;->a:Lgj;

    .line 2
    invoke-interface {p1}, Lgj;->a()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lgg;->a:Lgj;

    .line 3
    invoke-interface {p1}, Lgj;->b()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lgg;->a:Lgj;

    .line 4
    invoke-interface {p1}, Lgj;->c()V

    return-void
.end method
