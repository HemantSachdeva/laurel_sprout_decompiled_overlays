.class public final Lzx;
.super Lzp;
.source "PG"


# static fields
.field static final b:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private c:Lzv;

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private final g:Z

.field private final h:[F

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lzx;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lzp;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzx;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lzx;->h:[F

    new-instance v0, Landroid/graphics/Matrix;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lzx;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lzx;->j:Landroid/graphics/Rect;

    new-instance v0, Lzv;

    .line 5
    invoke-direct {v0}, Lzv;-><init>()V

    iput-object v0, p0, Lzx;->c:Lzv;

    return-void
.end method

.method public constructor <init>(Lzv;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lzp;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzx;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lzx;->h:[F

    new-instance v0, Landroid/graphics/Matrix;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lzx;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lzx;->j:Landroid/graphics/Rect;

    iput-object p1, p0, Lzx;->c:Lzv;

    iget-object v0, p1, Lzv;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lzv;->d:Landroid/graphics/PorterDuff$Mode;

    .line 9
    invoke-virtual {p0, v0, p1}, Lzx;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lzx;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static a(IF)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr v0, p0

    .line 10
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p1

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lzp;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 229
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    .line 0
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final canApplyTheme()Z
    .locals 2

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lzx;->j:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {p0, v0}, Lzx;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lzx;->j:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lzx;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lzx;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lzx;->d:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    iget-object v1, p0, Lzx;->i:Landroid/graphics/Matrix;

    .line 16
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lzx;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lzx;->h:[F

    .line 17
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lzx;->h:[F

    .line 18
    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lzx;->h:[F

    const/4 v4, 0x4

    .line 19
    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lzx;->h:[F

    .line 20
    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v6, p0, Lzx;->h:[F

    const/4 v7, 0x3

    .line 21
    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    cmpl-float v4, v6, v7

    if-eqz v4, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    .line 41
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    :cond_4
    :goto_0
    iget-object v4, p0, Lzx;->j:Landroid/graphics/Rect;

    .line 22
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, p0, Lzx;->j:Landroid/graphics/Rect;

    .line 23
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    .line 24
    const/16 v4, 0x800

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v3, v6

    .line 25
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_f

    if-gtz v3, :cond_5

    goto/16 :goto_4

    .line 26
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v6, p0, Lzx;->j:Landroid/graphics/Rect;

    .line 27
    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v9, p0, Lzx;->j:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    invoke-virtual {p0}, Lzx;->isAutoMirrored()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 30
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v6

    if-ne v6, v5, :cond_6

    iget-object v6, p0, Lzx;->j:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    .line 33
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6
    iget-object v6, p0, Lzx;->j:Landroid/graphics/Rect;

    .line 34
    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v6, p0, Lzx;->c:Lzv;

    iget-object v7, v6, Lzv;->f:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_7

    .line 35
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v1, v7, :cond_7

    iget-object v7, v6, Lzv;->f:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v3, v7, :cond_8

    .line 37
    :cond_7
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lzv;->f:Landroid/graphics/Bitmap;

    iput-boolean v5, v6, Lzv;->k:Z

    :cond_8
    iget-boolean v6, p0, Lzx;->g:Z

    if-nez v6, :cond_9

    iget-object v2, p0, Lzx;->c:Lzv;

    .line 38
    invoke-virtual {v2, v1, v3}, Lzv;->a(II)V

    goto :goto_1

    .line 48
    :cond_9
    iget-object v6, p0, Lzx;->c:Lzv;

    iget-boolean v7, v6, Lzv;->k:Z

    if-nez v7, :cond_a

    iget-object v7, v6, Lzv;->g:Landroid/content/res/ColorStateList;

    iget-object v8, v6, Lzv;->c:Landroid/content/res/ColorStateList;

    if-ne v7, v8, :cond_a

    iget-object v7, v6, Lzv;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v8, v6, Lzv;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v7, v8, :cond_a

    iget-boolean v7, v6, Lzv;->j:Z

    iget-boolean v8, v6, Lzv;->e:Z

    if-ne v7, v8, :cond_a

    iget v7, v6, Lzv;->i:I

    iget-object v6, v6, Lzv;->b:Lzu;

    .line 39
    invoke-virtual {v6}, Lzu;->getRootAlpha()I

    move-result v6

    if-eq v7, v6, :cond_b

    :cond_a
    iget-object v6, p0, Lzx;->c:Lzv;

    .line 40
    invoke-virtual {v6, v1, v3}, Lzv;->a(II)V

    iget-object v1, p0, Lzx;->c:Lzv;

    iget-object v3, v1, Lzv;->c:Landroid/content/res/ColorStateList;

    iput-object v3, v1, Lzv;->g:Landroid/content/res/ColorStateList;

    iget-object v3, v1, Lzv;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, v1, Lzv;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, v1, Lzv;->b:Lzu;

    .line 41
    invoke-virtual {v3}, Lzu;->getRootAlpha()I

    move-result v3

    iput v3, v1, Lzv;->i:I

    iget-boolean v3, v1, Lzv;->e:Z

    iput-boolean v3, v1, Lzv;->j:Z

    iput-boolean v2, v1, Lzv;->k:Z

    .line 38
    :cond_b
    :goto_1
    iget-object v1, p0, Lzx;->c:Lzv;

    iget-object v2, p0, Lzx;->j:Landroid/graphics/Rect;

    iget-object v3, v1, Lzv;->b:Lzu;

    .line 42
    invoke-virtual {v3}, Lzu;->getRootAlpha()I

    move-result v3

    const/16 v6, 0xff

    const/4 v7, 0x0

    if-ge v3, v6, :cond_c

    goto :goto_2

    .line 48
    :cond_c
    if-nez v0, :cond_d

    move-object v0, v7

    goto :goto_3

    .line 42
    :cond_d
    :goto_2
    iget-object v3, v1, Lzv;->l:Landroid/graphics/Paint;

    if-nez v3, :cond_e

    new-instance v3, Landroid/graphics/Paint;

    .line 43
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v1, Lzv;->l:Landroid/graphics/Paint;

    iget-object v3, v1, Lzv;->l:Landroid/graphics/Paint;

    .line 44
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_e
    iget-object v3, v1, Lzv;->l:Landroid/graphics/Paint;

    iget-object v5, v1, Lzv;->b:Lzu;

    .line 45
    invoke-virtual {v5}, Lzu;->getRootAlpha()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v1, Lzv;->l:Landroid/graphics/Paint;

    .line 46
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v1, Lzv;->l:Landroid/graphics/Paint;

    :goto_3
    iget-object v1, v1, Lzv;->f:Landroid/graphics/Bitmap;

    .line 47
    invoke-virtual {p1, v1, v7, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 25
    :cond_f
    :goto_4
    return-void

    .line 15
    :cond_10
    :goto_5
    return-void
.end method

.method public final getAlpha()I
    .locals 2

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lzx;->c:Lzv;

    .line 51
    iget-object v0, v0, Lzv;->b:Lzu;

    invoke-virtual {v0}, Lzu;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 53
    :cond_0
    invoke-super {p0}, Lzp;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lzx;->c:Lzv;

    invoke-virtual {v1}, Lzv;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 2

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lzx;->e:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Lzw;

    iget-object v1, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Lzw;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lzx;->c:Lzv;

    .line 56
    invoke-virtual {p0}, Lzx;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lzv;->a:I

    iget-object v0, p0, Lzx;->c:Lzv;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lzx;->c:Lzv;

    .line 60
    iget-object v0, v0, Lzv;->b:Lzu;

    iget v0, v0, Lzu;->f:F

    float-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lzx;->c:Lzv;

    .line 62
    iget-object v0, v0, Lzv;->b:Lzu;

    iget v0, v0, Lzu;->e:F

    float-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, p2, p3, v0}, Lzx;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    iget-object v0, v1, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 66
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_0
    iget-object v6, v1, Lzx;->c:Lzv;

    .line 68
    new-instance v0, Lzu;

    invoke-direct {v0}, Lzu;-><init>()V

    iput-object v0, v6, Lzv;->b:Lzu;

    .line 69
    sget-object v0, Lzo;->a:[I

    invoke-static {v2, v5, v4, v0}, Lec;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    iget-object v8, v1, Lzx;->c:Lzv;

    .line 70
    iget-object v9, v8, Lzv;->b:Lzu;

    .line 71
    const-string v0, "tintMode"

    const/4 v10, 0x6

    const/4 v11, -0x1

    invoke-static {v7, v3, v0, v10, v11}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 72
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/16 v13, 0x9

    const/4 v14, 0x5

    const/4 v15, 0x3

    if-eq v0, v15, :cond_3

    if-eq v0, v14, :cond_2

    if-eq v0, v13, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 74
    :pswitch_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 75
    :pswitch_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 76
    :cond_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 77
    :cond_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 78
    :cond_3
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 72
    :goto_0
    iput-object v12, v8, Lzv;->d:Landroid/graphics/PorterDuff$Mode;

    .line 79
    const-string v0, "tint"

    invoke-static {v3, v0}, Lec;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x0

    const/4 v13, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    .line 80
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 81
    invoke-virtual {v7, v11, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 82
    iget v12, v0, Landroid/util/TypedValue;->type:I

    if-eq v12, v13, :cond_7

    .line 84
    iget v12, v0, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1c

    if-lt v12, v15, :cond_4

    iget v12, v0, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1f

    if-gt v12, v15, :cond_4

    .line 93
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_2

    .line 85
    :cond_4
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    invoke-virtual {v7, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 87
    :try_start_0
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 88
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v15

    .line 89
    :goto_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v13, :cond_6

    if-eq v10, v11, :cond_5

    const/4 v10, 0x0

    goto :goto_1

    .line 91
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "No start tag found"

    invoke-direct {v0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_6
    invoke-static {v0, v12, v15, v5}, Ley;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    .line 92
    const-string v10, "CSLCompat"

    const-string v12, "Failed to inflate ColorStateList."

    invoke-static {v10, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_2

    .line 82
    :cond_7
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve attribute at index 1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_8
    const/4 v0, 0x0

    .line 93
    :goto_2
    if-eqz v0, :cond_9

    iput-object v0, v8, Lzv;->c:Landroid/content/res/ColorStateList;

    .line 94
    :cond_9
    iget-boolean v0, v8, Lzv;->e:Z

    .line 95
    const-string v10, "autoMirrored"

    invoke-static {v3, v10}, Lec;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 96
    invoke-virtual {v7, v14, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    :cond_a
    iput-boolean v0, v8, Lzv;->e:Z

    .line 97
    iget v0, v9, Lzu;->g:F

    const-string v8, "viewportWidth"

    const/4 v10, 0x7

    invoke-static {v7, v3, v8, v10, v0}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v9, Lzu;->g:F

    .line 98
    iget v0, v9, Lzu;->h:F

    const-string v8, "viewportHeight"

    const/16 v12, 0x8

    invoke-static {v7, v3, v8, v12, v0}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v9, Lzu;->h:F

    .line 99
    iget v8, v9, Lzu;->g:F

    const/4 v15, 0x0

    cmpg-float v8, v8, v15

    if-lez v8, :cond_27

    .line 100
    cmpg-float v0, v0, v15

    if-lez v0, :cond_26

    .line 101
    nop

    .line 102
    iget v0, v9, Lzu;->e:F

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, Lzu;->e:F

    .line 103
    iget v0, v9, Lzu;->f:F

    invoke-virtual {v7, v13, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, Lzu;->f:F

    .line 104
    iget v8, v9, Lzu;->e:F

    cmpg-float v8, v8, v15

    if-lez v8, :cond_25

    .line 105
    cmpg-float v0, v0, v15

    if-lez v0, :cond_24

    .line 106
    nop

    .line 107
    invoke-virtual {v9}, Lzu;->getAlpha()F

    move-result v0

    .line 108
    const-string v8, "alpha"

    const/4 v15, 0x4

    invoke-static {v7, v3, v8, v15, v0}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 109
    invoke-virtual {v9, v0}, Lzu;->setAlpha(F)V

    .line 110
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iput-object v0, v9, Lzu;->j:Ljava/lang/String;

    .line 111
    iget-object v8, v9, Lzu;->l:Lth;

    invoke-virtual {v8, v0, v9}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_b
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lzx;->getChangingConfigurations()I

    move-result v0

    iput v0, v6, Lzv;->a:I

    iput-boolean v11, v6, Lzv;->k:Z

    iget-object v0, v1, Lzx;->c:Lzv;

    .line 114
    iget-object v7, v0, Lzv;->b:Lzu;

    new-instance v8, Ljava/util/ArrayDeque;

    .line 115
    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 116
    iget-object v9, v7, Lzu;->d:Lzs;

    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 117
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 118
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    add-int/lit8 v14, v18, 0x1

    move v10, v9

    const/4 v9, 0x1

    :goto_3
    if-eq v10, v11, :cond_22

    .line 119
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-ge v15, v14, :cond_c

    const/4 v15, 0x3

    if-eq v10, v15, :cond_22

    :cond_c
    const-string v15, "group"

    if-ne v10, v13, :cond_20

    .line 120
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    check-cast v12, Lzs;

    .line 122
    const-string v11, "path"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v13, "fillType"

    move/from16 v20, v14

    const-string v14, "pathData"

    if-eqz v11, :cond_17

    new-instance v9, Lzr;

    .line 123
    invoke-direct {v9}, Lzr;-><init>()V

    sget-object v10, Lzo;->c:[I

    .line 124
    invoke-static {v2, v5, v4, v10}, Lec;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v11, 0x0

    iput-object v11, v9, Lzr;->a:[I

    .line 125
    invoke-static {v3, v14}, Lec;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    goto/16 :goto_6

    .line 183
    :cond_d
    nop

    .line 126
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e

    iput-object v14, v9, Lzr;->n:Ljava/lang/String;

    .line 127
    :cond_e
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 128
    invoke-static {v14}, Lec;->a(Ljava/lang/String;)[Leb;

    move-result-object v11

    iput-object v11, v9, Lzr;->m:[Leb;

    :cond_f
    nop

    .line 129
    const-string v11, "fillColor"

    const/4 v14, 0x1

    invoke-static {v10, v3, v5, v11, v14}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Ldn;

    move-result-object v11

    iput-object v11, v9, Lzr;->d:Ldn;

    const/16 v11, 0xc

    iget v14, v9, Lzr;->f:F

    .line 130
    const-string v15, "fillAlpha"

    invoke-static {v10, v3, v15, v11, v14}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v9, Lzr;->f:F

    .line 131
    const-string v11, "strokeLineCap"

    const/16 v14, 0x8

    const/4 v15, -0x1

    invoke-static {v10, v3, v11, v14, v15}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v11

    iget-object v15, v9, Lzr;->j:Landroid/graphics/Paint$Cap;

    if-eqz v11, :cond_12

    const/4 v14, 0x1

    if-eq v11, v14, :cond_11

    const/4 v14, 0x2

    if-eq v11, v14, :cond_10

    goto :goto_4

    .line 132
    :cond_10
    sget-object v15, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_4

    .line 133
    :cond_11
    sget-object v15, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_4

    .line 134
    :cond_12
    sget-object v15, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 131
    :goto_4
    iput-object v15, v9, Lzr;->j:Landroid/graphics/Paint$Cap;

    .line 135
    const-string v11, "strokeLineJoin"

    const/16 v14, 0x9

    const/4 v15, -0x1

    invoke-static {v10, v3, v11, v14, v15}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v11

    iget-object v14, v9, Lzr;->k:Landroid/graphics/Paint$Join;

    if-eqz v11, :cond_15

    const/4 v15, 0x1

    if-eq v11, v15, :cond_14

    const/4 v15, 0x2

    if-eq v11, v15, :cond_13

    goto :goto_5

    .line 136
    :cond_13
    sget-object v14, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_5

    .line 137
    :cond_14
    sget-object v14, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_5

    .line 138
    :cond_15
    sget-object v14, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 135
    :goto_5
    iput-object v14, v9, Lzr;->k:Landroid/graphics/Paint$Join;

    const/16 v11, 0xa

    iget v14, v9, Lzr;->l:F

    .line 139
    const-string v15, "strokeMiterLimit"

    invoke-static {v10, v3, v15, v11, v14}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v9, Lzr;->l:F

    .line 140
    const-string v11, "strokeColor"

    const/4 v14, 0x3

    invoke-static {v10, v3, v5, v11, v14}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Ldn;

    move-result-object v11

    iput-object v11, v9, Lzr;->b:Ldn;

    const/16 v11, 0xb

    iget v14, v9, Lzr;->e:F

    .line 141
    const-string v15, "strokeAlpha"

    invoke-static {v10, v3, v15, v11, v14}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v9, Lzr;->e:F

    iget v11, v9, Lzr;->c:F

    .line 142
    const-string v14, "strokeWidth"

    const/4 v15, 0x4

    invoke-static {v10, v3, v14, v15, v11}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v9, Lzr;->c:F

    iget v11, v9, Lzr;->h:F

    .line 143
    const-string v14, "trimPathEnd"

    const/4 v15, 0x6

    invoke-static {v10, v3, v14, v15, v11}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v9, Lzr;->h:F

    iget v11, v9, Lzr;->i:F

    .line 144
    const-string v14, "trimPathOffset"

    const/4 v15, 0x7

    invoke-static {v10, v3, v14, v15, v11}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v9, Lzr;->i:F

    iget v11, v9, Lzr;->g:F

    .line 145
    const-string v14, "trimPathStart"

    const/4 v15, 0x5

    invoke-static {v10, v3, v14, v15, v11}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v9, Lzr;->g:F

    const/16 v11, 0xd

    iget v14, v9, Lzr;->o:I

    .line 146
    invoke-static {v10, v3, v13, v11, v14}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v11

    iput v11, v9, Lzr;->o:I

    .line 147
    :goto_6
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    iget-object v10, v12, Lzs;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lzt;->getPathName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 149
    iget-object v10, v7, Lzu;->l:Lth;

    invoke-virtual {v9}, Lzt;->getPathName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_16
    iget v9, v0, Lzv;->a:I

    const/4 v2, 0x7

    const/4 v9, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/16 v16, 0x9

    const/16 v17, -0x1

    goto/16 :goto_8

    .line 134
    :cond_17
    const/16 v11, 0x8

    const/16 v16, 0x9

    const/16 v17, -0x1

    .line 151
    const-string v11, "clip-path"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    new-instance v10, Lzq;

    .line 152
    invoke-direct {v10}, Lzq;-><init>()V

    .line 153
    invoke-static {v3, v14}, Lec;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_18

    goto :goto_7

    .line 162
    :cond_18
    sget-object v11, Lzo;->d:[I

    .line 154
    invoke-static {v2, v5, v4, v11}, Lec;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 155
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_19

    iput-object v15, v10, Lzq;->n:Ljava/lang/String;

    .line 156
    :cond_19
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1a

    .line 157
    invoke-static {v15}, Lec;->a(Ljava/lang/String;)[Leb;

    move-result-object v14

    iput-object v14, v10, Lzq;->m:[Leb;

    :cond_1a
    nop

    .line 158
    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-static {v11, v3, v13, v15, v14}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v13

    iput v13, v10, Lzq;->o:I

    .line 159
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    :goto_7
    iget-object v11, v12, Lzs;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lzt;->getPathName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1b

    .line 161
    iget-object v11, v7, Lzu;->l:Lth;

    invoke-virtual {v10}, Lzt;->getPathName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_1b
    iget v10, v0, Lzv;->a:I

    const/4 v2, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    goto/16 :goto_8

    .line 159
    :cond_1c
    nop

    .line 163
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    new-instance v10, Lzs;

    .line 164
    invoke-direct {v10}, Lzs;-><init>()V

    sget-object v11, Lzo;->b:[I

    .line 165
    invoke-static {v2, v5, v4, v11}, Lec;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v13, 0x0

    iput-object v13, v10, Lzs;->l:[I

    iget v14, v10, Lzs;->c:F

    .line 166
    const-string v15, "rotation"

    const/4 v13, 0x5

    invoke-static {v11, v3, v15, v13, v14}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v14

    iput v14, v10, Lzs;->c:F

    iget v14, v10, Lzs;->d:F

    .line 167
    const/4 v15, 0x1

    invoke-virtual {v11, v15, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    iput v14, v10, Lzs;->d:F

    iget v14, v10, Lzs;->e:F

    .line 168
    const/4 v13, 0x2

    invoke-virtual {v11, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    iput v14, v10, Lzs;->e:F

    iget v14, v10, Lzs;->f:F

    .line 169
    const-string v13, "scaleX"

    const/4 v15, 0x3

    invoke-static {v11, v3, v13, v15, v14}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    iput v13, v10, Lzs;->f:F

    iget v13, v10, Lzs;->g:F

    .line 170
    const-string v14, "scaleY"

    const/4 v15, 0x4

    invoke-static {v11, v3, v14, v15, v13}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    iput v13, v10, Lzs;->g:F

    iget v13, v10, Lzs;->h:F

    .line 171
    const-string v14, "translateX"

    const/4 v2, 0x6

    invoke-static {v11, v3, v14, v2, v13}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    iput v13, v10, Lzs;->h:F

    iget v13, v10, Lzs;->i:F

    .line 172
    const-string v14, "translateY"

    const/4 v2, 0x7

    invoke-static {v11, v3, v14, v2, v13}, Lec;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    iput v13, v10, Lzs;->i:F

    .line 173
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1d

    iput-object v14, v10, Lzs;->m:Ljava/lang/String;

    .line 174
    :cond_1d
    invoke-virtual {v10}, Lzs;->a()V

    .line 175
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    iget-object v11, v12, Lzs;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v8, v10}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lzs;->getGroupName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1e

    .line 178
    iget-object v11, v7, Lzu;->l:Lth;

    invoke-virtual {v10}, Lzs;->getGroupName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_1e
    iget v10, v0, Lzv;->a:I

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v14, 0x3

    goto :goto_8

    .line 163
    :cond_1f
    const/4 v2, 0x7

    const/4 v13, 0x0

    const/4 v15, 0x4

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v14, 0x3

    goto :goto_8

    .line 179
    :cond_20
    move/from16 v20, v14

    const/4 v2, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x9

    const/16 v17, -0x1

    const/4 v14, 0x3

    if-ne v10, v14, :cond_21

    .line 180
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 181
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 182
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 183
    :cond_21
    :goto_8
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move-object/from16 v2, p1

    move/from16 v14, v20

    const/4 v11, 0x1

    const/16 v12, 0x8

    const/4 v13, 0x2

    const/4 v15, 0x4

    goto/16 :goto_3

    .line 182
    :cond_22
    if-nez v9, :cond_23

    .line 184
    iget-object v0, v6, Lzv;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v6, Lzv;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Lzx;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, v1, Lzx;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 185
    :cond_23
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "no path defined"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_24
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires height > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_25
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires width > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_26
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_27
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 187
    :cond_0
    invoke-super {p0}, Lzp;->invalidateSelf()V

    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 188
    invoke-static {v0}, Ley;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lzx;->c:Lzv;

    .line 189
    iget-boolean v0, v0, Lzv;->e:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 3

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 191
    :cond_0
    invoke-super {p0}, Lzp;->isStateful()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lzx;->c:Lzv;

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0}, Lzv;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lzx;->c:Lzv;

    iget-object v0, v0, Lzv;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lzx;->f:Z

    if-nez v0, :cond_1

    .line 195
    invoke-super {p0}, Lzp;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    new-instance v0, Lzv;

    iget-object v1, p0, Lzx;->c:Lzv;

    .line 196
    invoke-direct {v0, v1}, Lzv;-><init>(Lzv;)V

    iput-object v0, p0, Lzx;->c:Lzv;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzx;->f:Z

    :cond_1
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 5

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lzx;->c:Lzv;

    .line 199
    iget-object v1, v0, Lzv;->c:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, v0, Lzv;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_1

    .line 200
    invoke-virtual {p0, v1, v4}, Lzx;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lzx;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 201
    invoke-virtual {p0}, Lzx;->invalidateSelf()V

    const/4 v3, 0x1

    goto :goto_0

    .line 204
    :cond_1
    nop

    .line 202
    :goto_0
    invoke-virtual {v0}, Lzv;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lzv;->b:Lzu;

    iget-object v1, v1, Lzu;->d:Lzs;

    .line 203
    invoke-virtual {v1, p1}, Lbja;->a([I)Z

    move-result p1

    iget-boolean v1, v0, Lzv;->k:Z

    or-int/2addr v1, p1

    iput-boolean v1, v0, Lzv;->k:Z

    if-eqz p1, :cond_2

    .line 204
    invoke-virtual {p0}, Lzx;->invalidateSelf()V

    return v2

    :cond_2
    return v3
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 206
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lzp;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lzx;->c:Lzv;

    .line 208
    iget-object v0, v0, Lzv;->b:Lzu;

    invoke-virtual {v0}, Lzu;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lzx;->c:Lzv;

    .line 209
    iget-object v0, v0, Lzv;->b:Lzu;

    invoke-virtual {v0, p1}, Lzu;->setRootAlpha(I)V

    .line 210
    invoke-virtual {p0}, Lzx;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 211
    invoke-static {v0, p1}, Ley;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lzx;->c:Lzv;

    iput-boolean p1, v0, Lzv;->e:Z

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iput-object p1, p0, Lzx;->e:Landroid/graphics/ColorFilter;

    .line 213
    invoke-virtual {p0}, Lzx;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 214
    invoke-static {v0, p1}, Ley;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 215
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzx;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 216
    invoke-static {v0, p1}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Lzx;->c:Lzv;

    .line 217
    iget-object v1, v0, Lzv;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lzv;->c:Landroid/content/res/ColorStateList;

    .line 218
    iget-object v0, v0, Lzv;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lzx;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lzx;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 219
    invoke-virtual {p0}, Lzx;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 220
    invoke-static {v0, p1}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lzx;->c:Lzv;

    .line 221
    iget-object v1, v0, Lzv;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lzv;->d:Landroid/graphics/PorterDuff$Mode;

    .line 222
    iget-object v0, v0, Lzv;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Lzx;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lzx;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 223
    invoke-virtual {p0}, Lzx;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 225
    :cond_0
    invoke-super {p0, p1, p2}, Lzp;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lzx;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    .line 227
    :cond_0
    invoke-super {p0, p1}, Lzp;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
