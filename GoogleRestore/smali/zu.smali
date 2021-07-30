.class final Lzu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/graphics/Matrix;


# instance fields
.field b:Landroid/graphics/Paint;

.field c:Landroid/graphics/Paint;

.field final d:Lzs;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/Boolean;

.field final l:Lth;

.field private final m:Landroid/graphics/Path;

.field private final n:Landroid/graphics/Path;

.field private final o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/PathMeasure;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    .line 1
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lzu;->a:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lzu;->o:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lzu;->e:F

    iput v0, p0, Lzu;->f:F

    iput v0, p0, Lzu;->g:F

    iput v0, p0, Lzu;->h:F

    const/16 v0, 0xff

    iput v0, p0, Lzu;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lzu;->j:Ljava/lang/String;

    iput-object v0, p0, Lzu;->k:Ljava/lang/Boolean;

    .line 3
    new-instance v0, Lth;

    invoke-direct {v0}, Lth;-><init>()V

    iput-object v0, p0, Lzu;->l:Lth;

    new-instance v0, Lzs;

    .line 4
    invoke-direct {v0}, Lzs;-><init>()V

    iput-object v0, p0, Lzu;->d:Lzs;

    new-instance v0, Landroid/graphics/Path;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lzu;->m:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lzu;->n:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Lzu;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lzu;->o:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lzu;->e:F

    iput v0, p0, Lzu;->f:F

    iput v0, p0, Lzu;->g:F

    iput v0, p0, Lzu;->h:F

    const/16 v0, 0xff

    iput v0, p0, Lzu;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lzu;->j:Ljava/lang/String;

    iput-object v0, p0, Lzu;->k:Ljava/lang/Boolean;

    .line 8
    new-instance v0, Lth;

    invoke-direct {v0}, Lth;-><init>()V

    iput-object v0, p0, Lzu;->l:Lth;

    new-instance v1, Lzs;

    .line 9
    iget-object v2, p1, Lzu;->d:Lzs;

    invoke-direct {v1, v2, v0}, Lzs;-><init>(Lzs;Lth;)V

    iput-object v1, p0, Lzu;->d:Lzs;

    new-instance v1, Landroid/graphics/Path;

    .line 10
    iget-object v2, p1, Lzu;->m:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lzu;->m:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    .line 11
    iget-object v2, p1, Lzu;->n:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lzu;->n:Landroid/graphics/Path;

    .line 12
    iget v1, p1, Lzu;->e:F

    iput v1, p0, Lzu;->e:F

    .line 13
    iget v1, p1, Lzu;->f:F

    iput v1, p0, Lzu;->f:F

    .line 14
    iget v1, p1, Lzu;->g:F

    iput v1, p0, Lzu;->g:F

    .line 15
    iget v1, p1, Lzu;->h:F

    iput v1, p0, Lzu;->h:F

    .line 16
    iget v1, p1, Lzu;->q:I

    const/4 v1, 0x0

    iput v1, p0, Lzu;->q:I

    .line 17
    iget v1, p1, Lzu;->i:I

    iput v1, p0, Lzu;->i:I

    .line 18
    iget-object v1, p1, Lzu;->j:Ljava/lang/String;

    iput-object v1, p0, Lzu;->j:Ljava/lang/String;

    .line 19
    iget-object v1, p1, Lzu;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v0, v1, p0}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    iget-object p1, p1, Lzu;->k:Ljava/lang/Boolean;

    iput-object p1, p0, Lzu;->k:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Lzs;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V
    .locals 36

    .line 22
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    iget-object v0, v7, Lzs;->a:Landroid/graphics/Matrix;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 23
    iget-object v0, v7, Lzs;->a:Landroid/graphics/Matrix;

    iget-object v1, v7, Lzs;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 24
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 25
    :goto_0
    iget-object v0, v7, Lzs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_35

    .line 26
    iget-object v0, v7, Lzs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbja;

    .line 27
    instance-of v1, v0, Lzs;

    if-eqz v1, :cond_0

    .line 28
    move-object v1, v0

    check-cast v1, Lzs;

    .line 29
    iget-object v2, v7, Lzs;->a:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lzu;->a(Lzs;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    move-object v0, v6

    move-object v2, v8

    move/from16 v30, v10

    const/4 v8, 0x0

    goto/16 :goto_1a

    .line 30
    :cond_0
    instance-of v1, v0, Lzt;

    if-eqz v1, :cond_33

    .line 31
    check-cast v0, Lzt;

    move/from16 v1, p4

    int-to-float v2, v1

    iget v3, v6, Lzu;->g:F

    div-float/2addr v2, v3

    move/from16 v3, p5

    int-to-float v4, v3

    iget v5, v6, Lzu;->h:F

    div-float/2addr v4, v5

    .line 32
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 33
    iget-object v11, v7, Lzs;->a:Landroid/graphics/Matrix;

    iget-object v12, v6, Lzu;->o:Landroid/graphics/Matrix;

    .line 34
    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v12, v6, Lzu;->o:Landroid/graphics/Matrix;

    .line 35
    invoke-virtual {v12, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x4

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    .line 36
    invoke-virtual {v11, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    aget v11, v4, v9

    const/4 v12, 0x1

    aget v13, v4, v12

    float-to-double v14, v11

    float-to-double v2, v13

    .line 37
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    const/4 v11, 0x2

    aget v13, v4, v11

    const/4 v14, 0x3

    aget v15, v4, v14

    float-to-double v11, v13

    float-to-double v14, v15

    .line 38
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    aget v14, v4, v9

    const/4 v15, 0x1

    aget v18, v4, v15

    const/4 v15, 0x2

    aget v19, v4, v15

    const/4 v13, 0x3

    aget v4, v4, v13

    mul-float v14, v14, v4

    mul-float v18, v18, v19

    sub-float v14, v14, v18

    double-to-float v2, v2

    double-to-float v3, v11

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 40
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v2

    goto :goto_1

    .line 126
    :cond_1
    const/4 v4, 0x0

    .line 40
    :goto_1
    cmpl-float v2, v4, v3

    if-eqz v2, :cond_32

    iget-object v2, v6, Lzu;->m:Landroid/graphics/Path;

    .line 41
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v11, v0, Lzt;->m:[Leb;

    if-eqz v11, :cond_23

    const/4 v12, 0x6

    new-array v14, v12, [F

    const/4 v12, 0x0

    const/16 v18, 0x6d

    :goto_2
    array-length v13, v11

    if-ge v12, v13, :cond_23

    .line 42
    aget-object v13, v11, v12

    iget-char v3, v13, Leb;->a:C

    iget-object v13, v13, Leb;->b:[F

    aget v20, v14, v9

    const/16 v16, 0x1

    aget v21, v14, v16

    const/16 v17, 0x2

    aget v22, v14, v17

    const/16 v19, 0x3

    aget v23, v14, v19

    const/16 v19, 0x4

    aget v9, v14, v19

    const/16 v28, 0x5

    aget v15, v14, v28

    sparse-switch v3, :sswitch_data_0

    const/16 v29, 0x2

    goto :goto_4

    .line 43
    :sswitch_0
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 44
    invoke-virtual {v2, v9, v15}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v20, v9

    move/from16 v22, v20

    move/from16 v21, v15

    move/from16 v23, v21

    goto :goto_3

    :sswitch_1
    const/16 v29, 0x4

    goto :goto_4

    :sswitch_2
    nop

    :goto_3
    const/16 v29, 0x2

    goto :goto_4

    :sswitch_3
    const/16 v29, 0x1

    goto :goto_4

    :sswitch_4
    const/16 v29, 0x6

    goto :goto_4

    :sswitch_5
    const/16 v19, 0x7

    const/16 v29, 0x7

    .line 42
    :goto_4
    move/from16 v31, v4

    move/from16 v30, v10

    move/from16 v1, v18

    move/from16 v7, v20

    move/from16 v10, v21

    const/4 v4, 0x0

    :goto_5
    move/from16 v32, v5

    array-length v5, v13

    if-ge v4, v5, :cond_22

    const/16 v5, 0x41

    if-eq v3, v5, :cond_1f

    const/16 v5, 0x43

    if-eq v3, v5, :cond_1e

    const/16 v5, 0x48

    if-eq v3, v5, :cond_1d

    const/16 v5, 0x51

    if-eq v3, v5, :cond_1c

    const/16 v5, 0x56

    if-eq v3, v5, :cond_1b

    const/16 v5, 0x61

    if-eq v3, v5, :cond_18

    const/16 v5, 0x63

    if-eq v3, v5, :cond_17

    const/16 v5, 0x68

    if-eq v3, v5, :cond_16

    const/16 v5, 0x71

    if-eq v3, v5, :cond_15

    const/16 v5, 0x76

    if-eq v3, v5, :cond_14

    const/16 v5, 0x4c

    if-eq v3, v5, :cond_13

    const/16 v5, 0x4d

    if-eq v3, v5, :cond_11

    const/16 v5, 0x53

    if-eq v3, v5, :cond_e

    const/16 v5, 0x54

    if-eq v3, v5, :cond_b

    const/16 v5, 0x6c

    if-eq v3, v5, :cond_a

    const/16 v5, 0x6d

    if-eq v3, v5, :cond_8

    const/16 v5, 0x73

    if-eq v3, v5, :cond_5

    const/16 v5, 0x74

    if-eq v3, v5, :cond_2

    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    goto/16 :goto_12

    .line 46
    :cond_2
    const/16 v5, 0x71

    if-eq v1, v5, :cond_4

    const/16 v5, 0x74

    if-eq v1, v5, :cond_4

    const/16 v5, 0x51

    if-eq v1, v5, :cond_4

    const/16 v5, 0x54

    if-ne v1, v5, :cond_3

    goto :goto_6

    .line 49
    :cond_3
    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_7

    .line 46
    :cond_4
    :goto_6
    sub-float v1, v7, v22

    sub-float v5, v10, v23

    :goto_7
    add-int/lit8 v18, v4, 0x1

    .line 47
    move/from16 v33, v3

    aget v3, v13, v4

    aget v8, v13, v18

    invoke-virtual {v2, v1, v5, v3, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v1, v7

    add-float/2addr v5, v10

    .line 48
    aget v3, v13, v4

    add-float/2addr v7, v3

    .line 49
    aget v3, v13, v18

    add-float/2addr v10, v3

    move-object/from16 v34, v0

    move/from16 v22, v1

    move/from16 v23, v5

    move-object/from16 v35, v11

    goto/16 :goto_12

    :cond_5
    move/from16 v33, v3

    const/16 v3, 0x63

    if-eq v1, v3, :cond_7

    const/16 v3, 0x73

    if-eq v1, v3, :cond_7

    const/16 v3, 0x43

    if-eq v1, v3, :cond_7

    const/16 v3, 0x53

    if-ne v1, v3, :cond_6

    goto :goto_8

    .line 54
    :cond_6
    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_9

    .line 49
    :cond_7
    :goto_8
    sub-float v1, v7, v22

    sub-float v3, v10, v23

    move/from16 v19, v1

    move/from16 v20, v3

    :goto_9
    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v5, v4, 0x3

    .line 50
    aget v21, v13, v4

    aget v22, v13, v1

    aget v23, v13, v3

    aget v24, v13, v5

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 51
    aget v8, v13, v4

    add-float/2addr v8, v7

    .line 52
    aget v1, v13, v1

    add-float/2addr v1, v10

    .line 53
    aget v3, v13, v3

    add-float/2addr v7, v3

    .line 54
    aget v3, v13, v5

    add-float/2addr v10, v3

    move-object/from16 v34, v0

    move/from16 v23, v1

    move/from16 v22, v8

    move-object/from16 v35, v11

    goto/16 :goto_12

    .line 60
    :cond_8
    move/from16 v33, v3

    aget v1, v13, v4

    add-float/2addr v7, v1

    add-int/lit8 v3, v4, 0x1

    .line 61
    aget v3, v13, v3

    add-float/2addr v10, v3

    if-lez v4, :cond_9

    .line 62
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v34, v0

    move-object/from16 v35, v11

    goto/16 :goto_12

    .line 63
    :cond_9
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->rMoveTo(FF)V

    move-object/from16 v34, v0

    move v9, v7

    move v15, v10

    move-object/from16 v35, v11

    goto/16 :goto_12

    :cond_a
    move/from16 v33, v3

    add-int/lit8 v1, v4, 0x1

    .line 64
    aget v3, v13, v4

    aget v5, v13, v1

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 65
    aget v3, v13, v4

    add-float/2addr v7, v3

    .line 66
    aget v1, v13, v1

    add-float/2addr v10, v1

    move-object/from16 v34, v0

    move-object/from16 v35, v11

    goto/16 :goto_12

    .line 78
    :cond_b
    move/from16 v33, v3

    const/16 v3, 0x71

    if-eq v1, v3, :cond_d

    const/16 v3, 0x74

    if-eq v1, v3, :cond_d

    const/16 v3, 0x51

    if-eq v1, v3, :cond_d

    const/16 v3, 0x54

    if-ne v1, v3, :cond_c

    goto :goto_a

    .line 81
    :cond_c
    goto :goto_b

    .line 78
    :cond_d
    :goto_a
    add-float/2addr v7, v7

    sub-float v7, v7, v22

    add-float/2addr v10, v10

    sub-float v10, v10, v23

    :goto_b
    add-int/lit8 v1, v4, 0x1

    .line 79
    aget v3, v13, v4

    aget v5, v13, v1

    invoke-virtual {v2, v7, v10, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 80
    aget v3, v13, v4

    .line 81
    aget v1, v13, v1

    move-object/from16 v34, v0

    move/from16 v22, v7

    move/from16 v23, v10

    move-object/from16 v35, v11

    move v10, v1

    move v7, v3

    goto/16 :goto_12

    :cond_e
    move/from16 v33, v3

    const/16 v3, 0x63

    if-eq v1, v3, :cond_10

    const/16 v3, 0x73

    if-eq v1, v3, :cond_10

    const/16 v3, 0x43

    if-eq v1, v3, :cond_10

    const/16 v3, 0x53

    if-ne v1, v3, :cond_f

    goto :goto_c

    .line 86
    :cond_f
    move/from16 v19, v7

    move/from16 v20, v10

    goto :goto_d

    .line 81
    :cond_10
    :goto_c
    add-float/2addr v7, v7

    sub-float v7, v7, v22

    add-float/2addr v10, v10

    sub-float v10, v10, v23

    move/from16 v19, v7

    move/from16 v20, v10

    :goto_d
    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v5, v4, 0x3

    .line 82
    aget v21, v13, v4

    aget v22, v13, v1

    aget v23, v13, v3

    aget v24, v13, v5

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 83
    aget v7, v13, v4

    .line 84
    aget v1, v13, v1

    .line 85
    aget v3, v13, v3

    .line 86
    aget v10, v13, v5

    move-object/from16 v34, v0

    move/from16 v23, v1

    move/from16 v22, v7

    move-object/from16 v35, v11

    move v7, v3

    goto/16 :goto_12

    .line 92
    :cond_11
    move/from16 v33, v3

    aget v7, v13, v4

    add-int/lit8 v1, v4, 0x1

    .line 93
    aget v10, v13, v1

    if-lez v4, :cond_12

    .line 94
    invoke-virtual {v2, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v34, v0

    move-object/from16 v35, v11

    goto/16 :goto_12

    .line 95
    :cond_12
    invoke-virtual {v2, v7, v10}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v34, v0

    move v9, v7

    move v15, v10

    move-object/from16 v35, v11

    goto/16 :goto_12

    :cond_13
    move/from16 v33, v3

    add-int/lit8 v1, v4, 0x1

    .line 96
    aget v3, v13, v4

    aget v5, v13, v1

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 97
    aget v7, v13, v4

    .line 98
    aget v10, v13, v1

    move-object/from16 v34, v0

    move-object/from16 v35, v11

    goto/16 :goto_12

    .line 73
    :cond_14
    move/from16 v33, v3

    .line 45
    aget v1, v13, v4

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 46
    aget v1, v13, v4

    add-float/2addr v10, v1

    move-object/from16 v34, v0

    move-object/from16 v35, v11

    goto/16 :goto_12

    .line 54
    :cond_15
    move/from16 v33, v3

    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v5, v4, 0x3

    .line 55
    aget v8, v13, v4

    move-object/from16 v34, v0

    aget v0, v13, v1

    aget v6, v13, v3

    move-object/from16 v35, v11

    aget v11, v13, v5

    invoke-virtual {v2, v8, v0, v6, v11}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 56
    aget v0, v13, v4

    add-float/2addr v0, v7

    .line 57
    aget v1, v13, v1

    add-float/2addr v1, v10

    .line 58
    aget v3, v13, v3

    add-float/2addr v7, v3

    .line 59
    aget v3, v13, v5

    add-float/2addr v10, v3

    move/from16 v22, v0

    move/from16 v23, v1

    goto/16 :goto_12

    .line 67
    :cond_16
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    aget v0, v13, v4

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 68
    aget v0, v13, v4

    add-float/2addr v7, v0

    goto/16 :goto_12

    .line 42
    :cond_17
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x2

    add-int/lit8 v1, v4, 0x3

    add-int/lit8 v3, v4, 0x4

    add-int/lit8 v5, v4, 0x5

    .line 69
    aget v19, v13, v4

    add-int/lit8 v6, v4, 0x1

    aget v20, v13, v6

    aget v21, v13, v0

    aget v22, v13, v1

    aget v23, v13, v3

    aget v24, v13, v5

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 70
    aget v0, v13, v0

    add-float/2addr v0, v7

    .line 71
    aget v1, v13, v1

    add-float/2addr v1, v10

    .line 72
    aget v3, v13, v3

    add-float/2addr v7, v3

    .line 73
    aget v3, v13, v5

    add-float/2addr v10, v3

    move/from16 v22, v0

    move/from16 v23, v1

    goto/16 :goto_12

    .line 105
    :cond_18
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x5

    .line 74
    aget v1, v13, v0

    add-float v21, v1, v7

    add-int/lit8 v1, v4, 0x6

    aget v3, v13, v1

    add-float v22, v3, v10

    aget v23, v13, v4

    add-int/lit8 v3, v4, 0x1

    aget v24, v13, v3

    add-int/lit8 v3, v4, 0x2

    aget v25, v13, v3

    add-int/lit8 v3, v4, 0x3

    aget v3, v13, v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_19

    const/16 v26, 0x1

    goto :goto_e

    .line 76
    :cond_19
    const/16 v26, 0x0

    .line 74
    :goto_e
    add-int/lit8 v3, v4, 0x4

    aget v3, v13, v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1a

    const/16 v27, 0x1

    goto :goto_f

    .line 76
    :cond_1a
    const/16 v27, 0x0

    .line 74
    :goto_f
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v10

    invoke-static/range {v18 .. v27}, Leb;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 75
    aget v0, v13, v0

    add-float/2addr v7, v0

    .line 76
    aget v0, v13, v1

    add-float/2addr v10, v0

    move/from16 v22, v7

    move/from16 v23, v10

    goto/16 :goto_12

    .line 77
    :cond_1b
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    aget v0, v13, v4

    invoke-virtual {v2, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    aget v10, v13, v4

    goto/16 :goto_12

    .line 86
    :cond_1c
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v4, 0x2

    add-int/lit8 v3, v4, 0x3

    .line 87
    aget v5, v13, v4

    aget v6, v13, v0

    aget v7, v13, v1

    aget v8, v13, v3

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 88
    aget v5, v13, v4

    .line 89
    aget v0, v13, v0

    .line 90
    aget v7, v13, v1

    .line 91
    aget v10, v13, v3

    move/from16 v23, v0

    move/from16 v22, v5

    goto/16 :goto_12

    .line 99
    :cond_1d
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    aget v0, v13, v4

    invoke-virtual {v2, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 100
    aget v7, v13, v4

    goto/16 :goto_12

    .line 68
    :cond_1e
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x2

    add-int/lit8 v1, v4, 0x3

    add-int/lit8 v3, v4, 0x4

    add-int/lit8 v5, v4, 0x5

    .line 101
    aget v19, v13, v4

    add-int/lit8 v6, v4, 0x1

    aget v20, v13, v6

    aget v21, v13, v0

    aget v22, v13, v1

    aget v23, v13, v3

    aget v24, v13, v5

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 102
    aget v7, v13, v3

    .line 103
    aget v10, v13, v5

    .line 104
    aget v0, v13, v0

    .line 105
    aget v1, v13, v1

    move/from16 v22, v0

    move/from16 v23, v1

    goto :goto_12

    .line 100
    :cond_1f
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v35, v11

    add-int/lit8 v0, v4, 0x5

    .line 106
    aget v21, v13, v0

    add-int/lit8 v1, v4, 0x6

    aget v22, v13, v1

    aget v23, v13, v4

    add-int/lit8 v3, v4, 0x1

    aget v24, v13, v3

    add-int/lit8 v3, v4, 0x2

    aget v25, v13, v3

    add-int/lit8 v3, v4, 0x3

    aget v3, v13, v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_20

    const/16 v26, 0x1

    goto :goto_10

    .line 108
    :cond_20
    const/16 v26, 0x0

    .line 106
    :goto_10
    add-int/lit8 v3, v4, 0x4

    aget v3, v13, v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_21

    const/16 v27, 0x1

    goto :goto_11

    .line 108
    :cond_21
    const/16 v27, 0x0

    .line 106
    :goto_11
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v10

    invoke-static/range {v18 .. v27}, Leb;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 107
    aget v7, v13, v0

    .line 108
    aget v10, v13, v1

    move/from16 v22, v7

    move/from16 v23, v10

    .line 42
    :goto_12
    add-int v4, v4, v29

    move-object/from16 v6, p0

    move-object/from16 v8, p3

    move/from16 v5, v32

    move/from16 v1, v33

    move v3, v1

    move-object/from16 v0, v34

    move-object/from16 v11, v35

    goto/16 :goto_5

    .line 108
    :cond_22
    move-object/from16 v34, v0

    move-object/from16 v35, v11

    const/4 v0, 0x0

    aput v7, v14, v0

    const/4 v0, 0x1

    aput v10, v14, v0

    const/4 v0, 0x2

    aput v22, v14, v0

    const/4 v1, 0x3

    aput v23, v14, v1

    const/4 v3, 0x4

    aput v9, v14, v3

    aput v15, v14, v28

    .line 109
    aget-object v4, v35, v12

    iget-char v4, v4, Leb;->a:C

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v1, p4

    move/from16 v18, v4

    move/from16 v10, v30

    move/from16 v4, v31

    move/from16 v5, v32

    move-object/from16 v0, v34

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_2

    .line 41
    :cond_23
    move-object/from16 v34, v0

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v30, v10

    .line 44
    move-object/from16 v0, p0

    iget-object v1, v0, Lzu;->m:Landroid/graphics/Path;

    iget-object v2, v0, Lzu;->n:Landroid/graphics/Path;

    .line 110
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 111
    invoke-virtual/range {v34 .. v34}, Lzt;->a()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v0, Lzu;->n:Landroid/graphics/Path;

    .line 112
    move-object/from16 v3, v34

    iget v3, v3, Lzt;->o:I

    if-nez v3, :cond_24

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_13

    .line 113
    :cond_24
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 112
    :goto_13
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v2, v0, Lzu;->n:Landroid/graphics/Path;

    iget-object v3, v0, Lzu;->o:Landroid/graphics/Matrix;

    .line 114
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lzu;->n:Landroid/graphics/Path;

    .line 115
    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v8, 0x0

    goto/16 :goto_1a

    .line 116
    :cond_25
    move-object/from16 v2, p3

    move-object/from16 v3, v34

    check-cast v3, Lzr;

    .line 117
    iget v4, v3, Lzr;->g:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-nez v7, :cond_27

    iget v6, v3, Lzr;->h:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_26

    goto :goto_14

    :cond_26
    const/4 v8, 0x0

    goto :goto_16

    .line 118
    :cond_27
    :goto_14
    iget v6, v3, Lzr;->i:F

    add-float/2addr v4, v6

    rem-float/2addr v4, v5

    .line 119
    iget v7, v3, Lzr;->h:F

    add-float/2addr v7, v6

    rem-float/2addr v7, v5

    iget-object v5, v0, Lzu;->p:Landroid/graphics/PathMeasure;

    if-nez v5, :cond_28

    new-instance v5, Landroid/graphics/PathMeasure;

    .line 120
    invoke-direct {v5}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v5, v0, Lzu;->p:Landroid/graphics/PathMeasure;

    :cond_28
    iget-object v5, v0, Lzu;->p:Landroid/graphics/PathMeasure;

    iget-object v6, v0, Lzu;->m:Landroid/graphics/Path;

    .line 121
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v5, v0, Lzu;->p:Landroid/graphics/PathMeasure;

    .line 122
    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    mul-float v4, v4, v5

    mul-float v7, v7, v5

    .line 123
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    cmpl-float v6, v4, v7

    if-lez v6, :cond_29

    iget-object v6, v0, Lzu;->p:Landroid/graphics/PathMeasure;

    .line 124
    const/4 v9, 0x1

    invoke-virtual {v6, v4, v5, v1, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v4, v0, Lzu;->p:Landroid/graphics/PathMeasure;

    .line 125
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7, v1, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_15

    .line 139
    :cond_29
    const/4 v5, 0x0

    const/4 v9, 0x1

    iget-object v6, v0, Lzu;->p:Landroid/graphics/PathMeasure;

    .line 126
    invoke-virtual {v6, v4, v7, v1, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 125
    :goto_15
    nop

    .line 127
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_16
    iget-object v4, v0, Lzu;->n:Landroid/graphics/Path;

    iget-object v5, v0, Lzu;->o:Landroid/graphics/Matrix;

    .line 128
    invoke-virtual {v4, v1, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 129
    iget-object v1, v3, Lzr;->d:Ldn;

    invoke-virtual {v1}, Ldn;->c()Z

    move-result v1

    const/high16 v4, 0x437f0000    # 255.0f

    const/16 v5, 0xff

    const/4 v6, 0x0

    if-eqz v1, :cond_2d

    .line 130
    iget-object v1, v3, Lzr;->d:Ldn;

    iget-object v7, v0, Lzu;->c:Landroid/graphics/Paint;

    if-nez v7, :cond_2a

    new-instance v7, Landroid/graphics/Paint;

    .line 131
    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Lzu;->c:Landroid/graphics/Paint;

    .line 132
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_2a
    iget-object v7, v0, Lzu;->c:Landroid/graphics/Paint;

    .line 133
    invoke-virtual {v1}, Ldn;->a()Z

    move-result v9

    if-eqz v9, :cond_2b

    iget-object v1, v1, Ldn;->a:Landroid/graphics/Shader;

    iget-object v9, v0, Lzu;->o:Landroid/graphics/Matrix;

    .line 134
    invoke-virtual {v1, v9}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 135
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 136
    iget v1, v3, Lzr;->f:F

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_17

    .line 142
    :cond_2b
    nop

    .line 137
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 138
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v1, Ldn;->b:I

    .line 139
    iget v9, v3, Lzr;->f:F

    invoke-static {v1, v9}, Lzx;->a(IF)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    :goto_17
    nop

    .line 140
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, v0, Lzu;->n:Landroid/graphics/Path;

    .line 141
    iget v9, v3, Lzr;->o:I

    if-nez v9, :cond_2c

    sget-object v9, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_18

    .line 142
    :cond_2c
    sget-object v9, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 141
    :goto_18
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v1, v0, Lzu;->n:Landroid/graphics/Path;

    .line 143
    invoke-virtual {v2, v1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 144
    :cond_2d
    iget-object v1, v3, Lzr;->b:Ldn;

    invoke-virtual {v1}, Ldn;->c()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 145
    iget-object v1, v3, Lzr;->b:Ldn;

    iget-object v7, v0, Lzu;->b:Landroid/graphics/Paint;

    if-nez v7, :cond_2e

    new-instance v7, Landroid/graphics/Paint;

    .line 146
    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Lzu;->b:Landroid/graphics/Paint;

    .line 147
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_2e
    iget-object v7, v0, Lzu;->b:Landroid/graphics/Paint;

    .line 148
    iget-object v9, v3, Lzr;->k:Landroid/graphics/Paint$Join;

    if-eqz v9, :cond_2f

    .line 149
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 150
    :cond_2f
    iget-object v9, v3, Lzr;->j:Landroid/graphics/Paint$Cap;

    if-eqz v9, :cond_30

    .line 151
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 152
    :cond_30
    iget v9, v3, Lzr;->l:F

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 153
    invoke-virtual {v1}, Ldn;->a()Z

    move-result v9

    if-eqz v9, :cond_31

    iget-object v1, v1, Ldn;->a:Landroid/graphics/Shader;

    iget-object v5, v0, Lzu;->o:Landroid/graphics/Matrix;

    .line 154
    invoke-virtual {v1, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 155
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 156
    iget v1, v3, Lzr;->e:F

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_19

    .line 162
    :cond_31
    nop

    .line 157
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 158
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v1, Ldn;->b:I

    .line 159
    iget v4, v3, Lzr;->e:F

    invoke-static {v1, v4}, Lzx;->a(IF)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    :goto_19
    nop

    .line 160
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 161
    iget v1, v3, Lzr;->c:F

    mul-float v5, v32, v31

    mul-float v1, v1, v5

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lzu;->n:Landroid/graphics/Path;

    .line 162
    invoke-virtual {v2, v1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1a

    .line 40
    :cond_32
    move-object v0, v6

    move-object v2, v8

    move/from16 v30, v10

    const/4 v8, 0x0

    goto :goto_1a

    .line 30
    :cond_33
    move-object v0, v6

    move-object v2, v8

    move/from16 v30, v10

    const/4 v8, 0x0

    .line 29
    :cond_34
    :goto_1a
    add-int/lit8 v10, v30, 0x1

    move-object/from16 v7, p1

    move-object v6, v0

    move-object v8, v2

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 163
    :cond_35
    move-object v0, v6

    move-object v2, v8

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_2
        0x56 -> :sswitch_3
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_2
        0x76 -> :sswitch_3
        0x7a -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getAlpha()F
    .locals 2

    invoke-virtual {p0}, Lzu;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    iget v0, p0, Lzu;->i:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 164
    invoke-virtual {p0, p1}, Lzu;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    iput p1, p0, Lzu;->i:I

    return-void
.end method
