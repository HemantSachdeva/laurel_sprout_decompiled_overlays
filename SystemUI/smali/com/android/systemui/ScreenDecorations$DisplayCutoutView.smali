.class public Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
.super Landroid/view/View;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCutoutView"
.end annotation


# instance fields
.field private final mBoundingPath:Landroid/graphics/Path;

.field private final mBoundingRect:Landroid/graphics/Rect;

.field private final mBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraProtectionAnimator:Landroid/animation/ValueAnimator;

.field private mCameraProtectionProgress:F

.field private mColor:I

.field private final mDecorations:Lcom/android/systemui/ScreenDecorations;

.field private final mInfo:Landroid/view/DisplayInfo;

.field private mInitialPosition:I

.field private final mLocation:[I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mProtectionPath:Landroid/graphics/Path;

.field private mProtectionPathOrig:Landroid/graphics/Path;

.field private mProtectionRect:Landroid/graphics/RectF;

.field private mProtectionRectOrig:Landroid/graphics/RectF;

.field private mRotation:I

.field private mShowProtection:Z

.field private mTotalBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 811
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 786
    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    .line 787
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    .line 788
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    .line 789
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 790
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    .line 796
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 798
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mShowProtection:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 800
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/high16 p1, -0x1000000

    .line 802
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 806
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionProgress:F

    .line 812
    iput p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialPosition:I

    .line 813
    iput-object p3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDecorations:Lcom/android/systemui/ScreenDecorations;

    .line 814
    sget p1, Lcom/android/systemui/R$id;->display_cutout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)Z
    .locals 0

    .line 781
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mShowProtection:Z

    return p0
.end method

.method public static boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 1070
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 1064
    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1058
    :cond_1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1067
    :cond_2
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1061
    :cond_3
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private getGravity(Landroid/view/DisplayCutout;)I
    .locals 2

    .line 1080
    iget p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    const/4 v0, 0x3

    if-nez p0, :cond_0

    .line 1081
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 1085
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x30

    return p0

    :cond_1
    if-ne p0, v0, :cond_2

    .line 1089
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x50

    return p0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 1093
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private hasCutout()Z
    .locals 4

    .line 1015
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1020
    :cond_0
    iget p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    const/4 v2, 0x1

    if-nez p0, :cond_1

    .line 1021
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_1
    if-ne p0, v2, :cond_2

    .line 1023
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_2
    const/4 v3, 0x3

    if-ne p0, v3, :cond_3

    .line 1025
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_3
    const/4 v3, 0x2

    if-ne p0, v3, :cond_4

    .line 1027
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_4
    return v1
.end method

.method private synthetic lambda$setShowProtection$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 912
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionProgress:F

    .line 913
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private localBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1076
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getGravity(Landroid/view/DisplayCutout;)I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    return-void
.end method

.method private static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    .line 994
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p2

    .line 995
    invoke-virtual {p3, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 998
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    .line 990
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    int-to-float p1, p2

    .line 991
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    .line 986
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    .line 987
    invoke-virtual {p3, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 983
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    return-void
.end method

.method private update()V
    .locals 2

    .line 928
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDecorations:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$200(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 931
    :cond_0
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialPosition:I

    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->access$900(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    .line 932
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 933
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 934
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 935
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 936
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 938
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 940
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->localBounds(Landroid/graphics/Rect;)V

    .line 941
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateGravity()V

    .line 942
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateBoundingPath()V

    .line 943
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 948
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 949
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateBoundingPath()V
    .locals 5

    .line 954
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 955
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 957
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 962
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/view/DisplayCutout;->pathFromResources(Landroid/content/res/Resources;II)Landroid/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 964
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_3

    .line 966
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 968
    :goto_3
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 969
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v3, v0, v1, v2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 970
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 971
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPathOrig:Landroid/graphics/Path;

    if-eqz v0, :cond_5

    .line 973
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 974
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 975
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRectOrig:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_5
    return-void
.end method

.method private updateGravity()V
    .locals 3

    .line 1003
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1004
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 1005
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1006
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-direct {p0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getGravity(Landroid/view/DisplayCutout;)I

    move-result v1

    .line 1007
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v2, v1, :cond_0

    .line 1008
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1009
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getInterceptRegion()Landroid/graphics/Region;
    .locals 8

    .line 1107
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1111
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1112
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1113
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    .line 1112
    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;

    move-result-object v1

    .line 1116
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1117
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/4 v2, 0x0

    aget v2, p0, v2

    neg-int v2, v2

    const/4 v3, 0x1

    aget p0, p0, v3

    neg-int p0, p0

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Region;->translate(II)V

    .line 1120
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1121
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v2, v1

    .line 1120
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-object v1
.end method

.method public synthetic lambda$setShowProtection$1$ScreenDecorations$DisplayCutoutView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->lambda$setShowProtection$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 828
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 829
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 830
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 829
    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 831
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 836
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 837
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 870
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 871
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->update()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 842
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 843
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 844
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 846
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 848
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 849
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 850
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 852
    :cond_0
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRect:Landroid/graphics/RectF;

    .line 853
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 854
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionProgress:F

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRect:Landroid/graphics/RectF;

    .line 855
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 854
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 856
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    .line 1039
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mShowProtection:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 1045
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 1046
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 1044
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 1049
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 1050
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 1048
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 822
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 823
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPathOrig:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 882
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPathOrig:Landroid/graphics/Path;

    .line 883
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPath:Landroid/graphics/Path;

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPathOrig:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 886
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRectOrig:Landroid/graphics/RectF;

    if-nez p1, :cond_1

    .line 887
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRectOrig:Landroid/graphics/RectF;

    .line 888
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRect:Landroid/graphics/RectF;

    .line 890
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRectOrig:Landroid/graphics/RectF;

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 876
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    .line 877
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->update()V

    return-void
.end method

.method setShowProtection(Z)V
    .locals 2

    .line 894
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mShowProtection:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 898
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mShowProtection:Z

    .line 899
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateBoundingPath()V

    .line 902
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mShowProtection:Z

    if-eqz p1, :cond_1

    .line 903
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 905
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 906
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    .line 908
    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionProgress:F

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 909
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mShowProtection:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    aput v1, p1, v0

    .line 908
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x2ee

    .line 909
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionAnimator:Landroid/animation/ValueAnimator;

    .line 910
    sget-object v0, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 911
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$f2Iwcv56BgbHyCi4FYuzR2s0HB4;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$f2Iwcv56BgbHyCi4FYuzR2s0HB4;-><init>(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 915
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;-><init>(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 924
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public shouldInterceptTouch()Z
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
