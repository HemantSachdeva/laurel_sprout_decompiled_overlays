.class public final synthetic Lafg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

.field private final b:Lafl;

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;Lafl;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafg;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    iput-object p2, p0, Lafg;->b:Lafl;

    iput p3, p0, Lafg;->c:F

    iput p4, p0, Lafg;->d:F

    iput p5, p0, Lafg;->e:F

    iput p6, p0, Lafg;->f:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v0, p0, Lafg;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    iget-object v1, p0, Lafg;->b:Lafl;

    iget v2, p0, Lafg;->c:F

    iget v3, p0, Lafg;->d:F

    iget v4, p0, Lafg;->e:F

    iget v5, p0, Lafg;->f:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float v2, v2, v6

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Lafl;->f:F

    mul-float v6, v6, v4

    mul-float p1, p1, v5

    add-float/2addr v6, p1

    iput v6, v1, Lafl;->g:F

    invoke-virtual {v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->invalidate()V

    return-void
.end method
