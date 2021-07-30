.class public final Lafi;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lafl;


# direct methods
.method public constructor <init>(Lafl;)V
    .locals 0

    iput-object p1, p0, Lafi;->a:Lafl;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lafi;->a:Lafl;

    const/4 v0, 0x0

    iput-object v0, p1, Lafl;->h:Landroid/animation/ValueAnimator;

    return-void
.end method
