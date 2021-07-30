.class Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;
.super Ljava/lang/Object;
.source "FpodAnimManager.java"

# interfaces
.implements Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphaDismissDraw"
.end annotation


# instance fields
.field private count:I

.field private interpolator:Landroid/view/animation/Interpolator;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;->paint:Landroid/graphics/Paint;

    .line 117
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;->interpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/fingerprint/FpodAnimManager$1;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 4

    .line 122
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;->count:I

    .line 123
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;->interpolator:Landroid/view/animation/Interpolator;

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v0, v3

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    move v0, v1

    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    move v0, v2

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    sub-float/2addr v2, v0

    mul-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method
