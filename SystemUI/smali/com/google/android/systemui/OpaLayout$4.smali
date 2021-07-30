.class Lcom/google/android/systemui/OpaLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/OpaLayout;->getDiamondAnimatorSet()Landroid/util/ArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$4;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout$4;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/OpaLayout;->access$200(Lcom/google/android/systemui/OpaLayout;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout$4;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/OpaLayout;->access$300(Lcom/google/android/systemui/OpaLayout;)V

    return-void
.end method
