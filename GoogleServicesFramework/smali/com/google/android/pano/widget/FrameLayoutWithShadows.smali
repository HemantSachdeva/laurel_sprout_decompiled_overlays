.class public Lcom/google/android/pano/widget/FrameLayoutWithShadows;
.super Landroid/widget/FrameLayout;
.source "FrameLayoutWithShadows.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    }
.end annotation


# instance fields
.field private mRecycleBin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;",
            ">;"
        }
    .end annotation
.end field

.field private rect:Landroid/graphics/Rect;

.field private rectf:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    .line 120
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    .line 124
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xc

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mRecycleBin:Ljava/util/ArrayList;

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addToRecycleBin(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mRecycleBin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 383
    iget-object p0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mRecycleBin:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static findParentShadowsView(Landroid/view/View;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;
    .locals 1

    .line 414
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    .line 415
    instance-of v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    if-nez v0, :cond_0

    .line 416
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    .line 418
    :cond_0
    check-cast p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    return-object p0
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 149
    :cond_0
    sget-object v0, Lcom/google/android/pano/ui/R$styleable;->FrameLayoutWithShadows:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 151
    sget p2, Lcom/google/android/pano/ui/R$styleable;->FrameLayoutWithShadows_defaultShadow:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->setDefaultShadowResourceId(I)V

    .line 153
    sget p2, Lcom/google/android/pano/ui/R$styleable;->FrameLayoutWithShadows_drawableBottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->setDrawableBottomResourceId(I)V

    .line 156
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private prune()V
    .locals 5

    .line 189
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 193
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 194
    instance-of v2, v1, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    if-eqz v2, :cond_1

    .line 195
    check-cast v1, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    .line 196
    invoke-static {v1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->access$000(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;)Landroid/view/View;

    move-result-object v2

    .line 197
    invoke-static {v2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->findParentShadowsView(Landroid/view/View;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    move-result-object v3

    if-eq p0, v3, :cond_1

    .line 198
    sget v3, Lcom/google/android/pano/ui/R$id;->ShadowView:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 199
    invoke-static {v1, v4}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->access$002(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;Landroid/view/View;)Landroid/view/View;

    .line 200
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 201
    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->addToRecycleBin(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public layoutShadows()V
    .locals 10

    .line 213
    invoke-direct {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->prune()V

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 215
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 216
    instance-of v3, v2, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 219
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    .line 220
    invoke-static {v3}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->access$000(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 222
    invoke-static {v3}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->findParentShadowsView(Landroid/view/View;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    move-result-object v4

    if-eq p0, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 226
    instance-of v5, v3, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 229
    move-object v5, v3

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 230
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 233
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 234
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 235
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 236
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 237
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    .line 238
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 239
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 237
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 240
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 241
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 242
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 243
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 244
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 245
    iget v6, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 246
    iget v6, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 247
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    move v4, v1

    :cond_2
    if-nez v4, :cond_3

    .line 251
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 252
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 253
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 254
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 255
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 256
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 258
    :cond_3
    iget-object v4, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 259
    iget-object v3, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->layout(IIII)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 141
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->layoutShadows()V

    return-void
.end method

.method public setDefaultShadowResourceId(I)V
    .locals 0

    return-void
.end method

.method public setDrawableBottomResourceId(I)V
    .locals 0

    return-void
.end method
