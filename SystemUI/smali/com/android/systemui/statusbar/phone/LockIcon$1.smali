.class Lcom/android/systemui/statusbar/phone/LockIcon$1;
.super Ljava/lang/Object;
.source "LockIcon.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$002(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$100(Lcom/android/systemui/statusbar/phone/LockIcon;)I

    move-result v0

    .line 74
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$200(Lcom/android/systemui/statusbar/phone/LockIcon;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->accessibility_scanning_face:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    instance-of v1, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    .line 83
    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 84
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 85
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 86
    new-instance v1, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/phone/LockIcon$1$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon$1;Landroid/graphics/drawable/AnimatedVectorDrawable;I)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    const-string p0, "LockIcon#Animation"

    .line 99
    invoke-static {p0, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
