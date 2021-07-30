.class final Lcji;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lcjl;


# direct methods
.method public constructor <init>(Lcjl;)V
    .locals 0

    iput-object p1, p0, Lcji;->a:Lcjl;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcji;->a:Lcjl;

    .line 2
    iget-object p1, p1, Lcjl;->k:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->e(Z)V

    return-void
.end method
