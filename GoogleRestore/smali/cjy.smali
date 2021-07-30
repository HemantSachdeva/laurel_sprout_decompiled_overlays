.class final Lcjy;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lcjz;


# direct methods
.method public constructor <init>(Lcjz;)V
    .locals 0

    iput-object p1, p0, Lcjy;->a:Lcjz;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcjy;->a:Lcjz;

    .line 2
    iget-object v0, p1, Lcjz;->m:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    iget-boolean p1, p1, Lcjz;->e:Z

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, p0, Lcjy;->a:Lcjz;

    .line 4
    iget-object p1, p1, Lcjz;->j:Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
