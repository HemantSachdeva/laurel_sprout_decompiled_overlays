.class public final synthetic Lafh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

.field private final b:Lafl;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;Lafl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafh;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    iput-object p2, p0, Lafh;->b:Lafl;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lafh;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    iget-object v1, p0, Lafh;->b:Lafl;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Lafl;->c:F

    invoke-virtual {v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->invalidate()V

    return-void
.end method
