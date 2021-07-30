.class Lcom/google/android/systemui/OpaLayout$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/OpaLayout;->getCollapseAnimatorSet()Landroid/util/ArraySet;
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

    .line 849
    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$6;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 852
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout$6;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {p1}, Lcom/google/android/systemui/OpaLayout;->access$200(Lcom/google/android/systemui/OpaLayout;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 853
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout$6;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/OpaLayout;->access$400(Lcom/google/android/systemui/OpaLayout;)V

    return-void
.end method
