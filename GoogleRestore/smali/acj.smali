.class public final Lacj;
.super Labj;
.source "PG"


# static fields
.field private static final s:Ljava/lang/Object;


# instance fields
.field public final m:Ljava/lang/Object;

.field public n:Lacd;

.field private final o:Landroid/graphics/Bitmap$Config;

.field private final p:I

.field private final q:I

.field private final r:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lacj;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lacd;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Labn;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p7}, Labj;-><init>(Ljava/lang/String;Labn;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lacj;->m:Ljava/lang/Object;

    new-instance p1, Laax;

    .line 2
    const/16 p7, 0x3e8

    const/4 v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p1, p7, v0, v1}, Laax;-><init>(IIF)V

    iput-object p1, p0, Labj;->k:Laax;

    iput-object p2, p0, Lacj;->n:Lacd;

    iput-object p6, p0, Lacj;->o:Landroid/graphics/Bitmap$Config;

    iput p3, p0, Lacj;->p:I

    iput p4, p0, Lacj;->q:I

    iput-object p5, p0, Lacj;->r:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 3

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    return p2

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_3

    if-nez p0, :cond_2

    return p2

    :cond_2
    return p0

    :cond_3
    if-nez p0, :cond_4

    int-to-double v0, p2

    int-to-double p0, p1

    int-to-double p2, p3

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p0

    double-to-int p0, v0

    return p0

    :cond_4
    if-nez p1, :cond_5

    return p0

    :cond_5
    int-to-double v0, p3

    int-to-double p2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p2

    .line 4
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_7

    int-to-double p1, p1

    int-to-double p3, p0

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v0

    cmpg-double v2, p3, p1

    if-gez v2, :cond_6

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    double-to-int p0, p1

    :cond_6
    return p0

    :cond_7
    int-to-double p1, p1

    int-to-double p3, p0

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v0

    cmpl-double v2, p3, p1

    if-lez v2, :cond_8

    goto :goto_1

    :cond_8
    return p0
.end method


# virtual methods
.method protected final a(Labf;)Labo;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v3, Lacj;->s:Ljava/lang/Object;

    monitor-enter v3

    .line 5
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v2, Labf;->a:[B

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    .line 6
    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v7, v1, Lacj;->p:I

    if-nez v7, :cond_1

    iget v7, v1, Lacj;->q:I

    if-nez v7, :cond_1

    iget-object v7, v1, Lacj;->o:Landroid/graphics/Bitmap$Config;

    iput-object v7, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 18
    array-length v7, v0

    invoke-static {v0, v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    move-object v6, v0

    goto :goto_1

    .line 40
    :cond_1
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    array-length v7, v0

    invoke-static {v0, v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 9
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, v1, Lacj;->p:I

    iget v10, v1, Lacj;->q:I

    iget-object v11, v1, Lacj;->r:Landroid/widget/ImageView$ScaleType;

    .line 10
    invoke-static {v9, v10, v7, v8, v11}, Lacj;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v9

    iget v10, v1, Lacj;->q:I

    iget v11, v1, Lacj;->p:I

    iget-object v12, v1, Lacj;->r:Landroid/widget/ImageView$ScaleType;

    .line 11
    invoke-static {v10, v11, v8, v7, v12}, Lacj;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v10

    iput-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-double v11, v7

    int-to-double v13, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    int-to-double v7, v8

    int-to-double v13, v10

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v13

    .line 12
    :try_start_1
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    const/high16 v11, 0x3f800000    # 1.0f

    :goto_0
    add-float v12, v11, v11

    float-to-double v13, v12

    cmpg-double v15, v13, v7

    if-gtz v15, :cond_2

    move v11, v12

    goto :goto_0

    :cond_2
    float-to-int v7, v11

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 13
    array-length v7, v0

    invoke-static {v0, v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-gt v6, v9, :cond_3

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v6, v10, :cond_0

    :cond_3
    nop

    .line 16
    invoke-static {v0, v9, v10, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 18
    :goto_1
    const/4 v7, 0x0

    if-nez v6, :cond_4

    new-instance v0, Labh;

    .line 42
    invoke-direct {v0, v7}, Labh;-><init>([B)V

    invoke-static {v0}, Labo;->a(Labr;)Labo;

    move-result-object v0

    goto/16 :goto_b

    .line 19
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 20
    iget-object v10, v2, Labf;->b:Ljava/util/Map;

    if-nez v10, :cond_5

    move-object v4, v6

    goto/16 :goto_a

    .line 41
    :cond_5
    const-string v0, "Date"

    .line 21
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_6

    .line 22
    invoke-static {v0}, Lbef;->a(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_2

    .line 40
    :cond_6
    move-wide v13, v11

    .line 22
    :goto_2
    const-string v0, "Cache-Control"

    .line 23
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v15, ","

    .line 24
    invoke-virtual {v0, v15, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v17, v11

    move-wide/from16 v19, v17

    const/4 v7, 0x0

    const/16 v21, 0x0

    .line 25
    :goto_3
    array-length v0, v15

    if-ge v7, v0, :cond_d

    .line 26
    aget-object v0, v15, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "no-cache"

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "no-store"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v6

    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_7
    const-string v4, "max-age="

    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_8

    const/16 v4, 0x8

    .line 29
    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 46
    :catch_0
    move-exception v0

    goto :goto_4

    .line 29
    :cond_8
    :try_start_3
    const-string v4, "stale-while-revalidate="

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_9

    const/16 v4, 0x17

    .line 31
    :try_start_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_9
    :try_start_5
    const-string v4, "must-revalidate"

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "proxy-revalidate"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const/16 v21, 0x1

    .line 29
    :cond_b
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto :goto_3

    .line 32
    :cond_c
    move-object v4, v6

    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_d
    const/4 v0, 0x1

    goto :goto_5

    .line 40
    :cond_e
    move-wide/from16 v17, v11

    move-wide/from16 v19, v17

    const/4 v0, 0x0

    const/16 v21, 0x0

    .line 32
    :goto_5
    const-string v4, "Expires"

    .line 33
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 34
    invoke-static {v4}, Lbef;->a(Ljava/lang/String;)J

    move-result-wide v15

    goto :goto_6

    .line 40
    :cond_f
    move-wide v15, v11

    .line 34
    :goto_6
    const-string v4, "Last-Modified"

    .line 35
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 36
    invoke-static {v4}, Lbef;->a(Ljava/lang/String;)J

    move-result-wide v22

    move-object v4, v6

    move-wide/from16 v5, v22

    goto :goto_7

    .line 40
    :cond_10
    move-object v4, v6

    move-wide v5, v11

    .line 36
    :goto_7
    const-string v7, "ETag"

    .line 37
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_12

    const-wide/16 v11, 0x3e8

    mul-long v17, v17, v11

    add-long v8, v8, v17

    if-eqz v21, :cond_11

    move-wide v11, v8

    goto :goto_8

    .line 40
    :cond_11
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->signum(J)I

    mul-long v19, v19, v11

    add-long v19, v8, v19

    move-wide/from16 v11, v19

    .line 37
    :goto_8
    move-wide/from16 v24, v8

    move-wide v8, v11

    move-wide/from16 v11, v24

    goto :goto_9

    .line 40
    :cond_12
    cmp-long v0, v13, v11

    if-lez v0, :cond_13

    cmp-long v0, v15, v13

    if-ltz v0, :cond_13

    sub-long/2addr v15, v13

    add-long v11, v8, v15

    :cond_13
    move-wide v8, v11

    .line 37
    :goto_9
    :try_start_6
    new-instance v0, Laar;

    .line 38
    invoke-direct {v0}, Laar;-><init>()V

    .line 39
    iget-object v15, v2, Labf;->a:[B

    iput-object v15, v0, Laar;->a:[B

    iput-object v7, v0, Laar;->b:Ljava/lang/String;

    iput-wide v11, v0, Laar;->f:J

    iput-wide v8, v0, Laar;->e:J

    iput-wide v13, v0, Laar;->c:J

    iput-wide v5, v0, Laar;->d:J

    iput-object v10, v0, Laar;->g:Ljava/util/Map;

    .line 40
    iget-object v5, v2, Labf;->c:Ljava/util/List;

    iput-object v5, v0, Laar;->h:Ljava/util/List;

    move-object v7, v0

    .line 20
    :goto_a
    new-instance v0, Labo;

    .line 41
    invoke-direct {v0, v4, v7}, Labo;-><init>(Ljava/lang/Object;Laar;)V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 45
    :goto_b
    :try_start_7
    monitor-exit v3

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    goto :goto_c

    .line 17
    :catch_1
    move-exception v0

    const-string v4, "Caught OOM for %d byte image, url=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 43
    iget-object v2, v2, Labf;->a:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    iget-object v2, v1, Labj;->b:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Labu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Labh;

    .line 44
    invoke-direct {v2, v0}, Labh;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Labo;->a(Labr;)Labo;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 46
    :goto_c
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lacj;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lacj;->n:Lacd;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object v0, v1, Lacd;->b:Laci;

    iget-object v1, v1, Lacd;->a:Ljava/lang/String;

    iget-object v2, v0, Laci;->e:Lakh;

    iget-object v2, v2, Lakh;->a:Ltn;

    invoke-virtual {v2, v1, p1}, Ltn;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Laci;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lacg;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, v2, Lacg;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Laci;->a(Ljava/lang/String;Lacg;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
