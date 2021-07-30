.class public Lcom/android/settingslib/graph/ThemedBatteryDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ThemedBatteryDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemedBatteryDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemedBatteryDrawable.kt\ncom/android/settingslib/graph/ThemedBatteryDrawable\n*L\n1#1,425:1\n*E\n"
.end annotation


# instance fields
.field private batteryLevel:I

.field private final boltPath:Landroid/graphics/Path;

.field private charging:Z

.field private colorLevels:[I

.field private final context:Landroid/content/Context;

.field private dualTone:Z

.field private final dualToneBackgroundFill:Landroid/graphics/Paint;

.field private final errorPaint:Landroid/graphics/Paint;

.field private final errorPerimeterPath:Landroid/graphics/Path;

.field private fillColor:I

.field private final fillColorStrokePaint:Landroid/graphics/Paint;

.field private final fillColorStrokeProtection:Landroid/graphics/Paint;

.field private final fillMask:Landroid/graphics/Path;

.field private final fillPaint:Landroid/graphics/Paint;

.field private final fillRect:Landroid/graphics/RectF;

.field private intrinsicHeight:I

.field private intrinsicWidth:I

.field private final invalidateRunnable:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private invertFillIcon:Z

.field private levelColor:I

.field private final levelPath:Landroid/graphics/Path;

.field private final levelRect:Landroid/graphics/RectF;

.field private final perimeterPath:Landroid/graphics/Path;

.field private final plusPath:Landroid/graphics/Path;

.field private powerSaveEnabled:Z

.field private final scaleMatrix:Landroid/graphics/Matrix;

.field private final scaledBolt:Landroid/graphics/Path;

.field private final scaledErrorPerimeter:Landroid/graphics/Path;

.field private final scaledFill:Landroid/graphics/Path;

.field private final scaledPerimeter:Landroid/graphics/Path;

.field private final scaledPlus:Landroid/graphics/Path;

.field private final unifiedPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 45
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    .line 46
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    .line 47
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    .line 48
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledErrorPerimeter:Landroid/graphics/Path;

    .line 50
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    .line 51
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    .line 53
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    .line 55
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    .line 56
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    .line 58
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    .line 59
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 61
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    .line 64
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    .line 65
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    .line 68
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    .line 69
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    const p1, -0xff01

    .line 80
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 83
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 90
    new-instance p1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;-><init>(Lcom/android/settingslib/graph/ThemedBatteryDrawable;)V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    .line 94
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e002f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 109
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 110
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 112
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    sget-object v2, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 115
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 116
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 109
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    .line 119
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 121
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    sget-object v2, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 124
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 125
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 119
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokeProtection:Landroid/graphics/Paint;

    .line 128
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 129
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xff

    .line 130
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 136
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 137
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$color;->batterymeter_plus_color:I

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 139
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 140
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    sget-object v3, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 136
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPaint:Landroid/graphics/Paint;

    .line 146
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 147
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 150
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    .line 155
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "context.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 156
    iput p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicHeight:I

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 157
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicWidth:I

    .line 159
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 160
    sget p2, Lcom/android/settingslib/R$array;->batterymeter_color_levels:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 161
    sget v0, Lcom/android/settingslib/R$array;->batterymeter_color_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 162
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 163
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aput v5, v3, v4

    .line 166
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 168
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v6

    .line 167
    invoke-static {v5, v6}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v5

    aput v5, v3, v4

    goto :goto_1

    .line 170
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->loadPaths()V

    return-void
.end method

.method private final batteryColorForLevel(I)I
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getColorForLevel(I)I

    move-result p0

    goto :goto_1

    .line 256
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    :goto_1
    return p0
.end method

.method private final getColorForLevel(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 265
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 266
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 267
    aget v3, v2, v3

    if-gt p1, v1, :cond_1

    .line 271
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_0

    .line 272
    iget v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final loadPaths()V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 388
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 390
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 393
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 395
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 399
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 401
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 405
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 409
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    return-void
.end method

.method private final postInvalidate()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {v1, v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {v1, v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final updateSize()V
    .locals 6

    .line 361
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "b"

    .line 362
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 368
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 369
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledErrorPerimeter:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 370
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 371
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 372
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 373
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 378
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 381
    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokeProtection:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 181
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 182
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 183
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 184
    iget v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/16 v2, 0x5f

    if-lt v0, v2, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, v1

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 191
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 192
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 195
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 197
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 207
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 212
    :cond_2
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 218
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 219
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 216
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 220
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-nez v0, :cond_4

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 232
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 233
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 238
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-eqz v0, :cond_6

    .line 239
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 240
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    if-eqz v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokeProtection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 245
    :cond_6
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v0, :cond_7

    .line 247
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledErrorPerimeter:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 249
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 251
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 305
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 309
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getPowerSaveEnabled()Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 327
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 328
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->updateSize()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 1

    const/16 v0, 0x43

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    if-gt p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 316
    :cond_1
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    .line 317
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryColorForLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 319
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setCharging(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    .line 100
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->postInvalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 292
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 293
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 294
    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setColors(III)V
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 343
    iget-object p3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    iget p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryColorForLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 352
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setPowerSaveEnabled(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    .line 106
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->postInvalidate()V

    return-void
.end method
