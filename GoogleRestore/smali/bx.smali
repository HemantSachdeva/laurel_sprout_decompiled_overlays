.class public final Lbx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private A:Ljava/util/ArrayList;

.field private final B:Ljava/lang/Runnable;

.field private final C:Lbr;

.field private final D:Lec;

.field public final a:Lcf;

.field b:Ljava/util/ArrayList;

.field public final c:Lbo;

.field public d:Lsl;

.field public final e:Lsj;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Lj$/util/concurrent/ConcurrentHashMap;

.field public final h:Lbq;

.field i:I

.field public j:Lbn;

.field public k:Lbj;

.field public l:Lba;

.field m:Lba;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lcb;

.field private final r:Ljava/util/ArrayList;

.field private s:Z

.field private t:Ljava/util/ArrayList;

.field private final u:Lj$/util/concurrent/ConcurrentHashMap;

.field private final v:Lbm;

.field private w:Z

.field private x:Z

.field private y:Ljava/util/ArrayList;

.field private z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbx;->r:Ljava/util/ArrayList;

    new-instance v0, Lcf;

    .line 2
    invoke-direct {v0}, Lcf;-><init>()V

    iput-object v0, p0, Lbx;->a:Lcf;

    new-instance v0, Lbo;

    .line 3
    invoke-direct {v0, p0}, Lbo;-><init>(Lbx;)V

    iput-object v0, p0, Lbx;->c:Lbo;

    new-instance v0, Lsj;

    .line 4
    invoke-direct {v0, p0}, Lsj;-><init>(Lbx;)V

    iput-object v0, p0, Lbx;->e:Lsj;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbx;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbx;->u:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbx;->g:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lbr;

    .line 9
    invoke-direct {v0, p0}, Lbr;-><init>(Lbx;)V

    iput-object v0, p0, Lbx;->C:Lbr;

    new-instance v0, Lbq;

    .line 10
    invoke-direct {v0, p0}, Lbq;-><init>(Lbx;)V

    iput-object v0, p0, Lbx;->h:Lbq;

    const/4 v0, -0x1

    iput v0, p0, Lbx;->i:I

    .line 11
    new-instance v0, Lbs;

    invoke-direct {v0, p0}, Lbs;-><init>(Lbx;)V

    iput-object v0, p0, Lbx;->v:Lbm;

    new-instance v0, Lec;

    invoke-direct {v0}, Lec;-><init>()V

    iput-object v0, p0, Lbx;->D:Lec;

    new-instance v0, Lbt;

    .line 12
    invoke-direct {v0, p0}, Lbt;-><init>(Lbx;)V

    iput-object v0, p0, Lbx;->B:Ljava/lang/Runnable;

    return-void
.end method

.method static a(Landroid/view/View;)Lba;
    .locals 1

    .line 372
    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 373
    instance-of v0, p0, Lba;

    if-eqz v0, :cond_0

    .line 374
    check-cast p0, Lba;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 516
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 517
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 519
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 520
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lan;

    iget-boolean v3, v3, Lan;->s:Z

    if-nez v3, :cond_4

    if-eq v2, v1, :cond_1

    .line 521
    invoke-direct {p0, p1, p2, v2, v1}, Lbx;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 522
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 525
    :cond_2
    :goto_1
    if-ge v2, v0, :cond_3

    .line 523
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 524
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lan;

    iget-boolean v3, v3, Lan;->s:Z

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 525
    :cond_3
    :goto_2
    invoke-direct {p0, p1, p2, v1, v2}, Lbx;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    goto :goto_3

    .line 524
    :cond_4
    nop

    .line 525
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_5
    if-eq v2, v0, :cond_6

    .line 526
    invoke-direct {p0, p1, p2, v2, v0}, Lbx;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_6
    return-void

    .line 517
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 518
    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lan;

    iget-boolean v13, v1, Lan;->s:Z

    iget-object v1, v0, Lbx;->A:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 232
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lbx;->A:Ljava/util/ArrayList;

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 232
    :goto_0
    iget-object v1, v0, Lbx;->A:Ljava/util/ArrayList;

    iget-object v2, v0, Lbx;->a:Lcf;

    .line 234
    invoke-virtual {v2}, Lcf;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lbx;->m:Lba;

    move v2, v11

    const/4 v3, 0x0

    :goto_1
    const/4 v15, 0x3

    const/4 v6, 0x1

    if-ge v2, v12, :cond_12

    .line 235
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lan;

    .line 236
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Lbx;->A:Ljava/util/ArrayList;

    const/4 v8, 0x0

    :goto_2
    iget-object v14, v4, Lan;->d:Ljava/util/ArrayList;

    .line 237
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_b

    iget-object v14, v4, Lan;->d:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcg;

    .line 239
    iget v7, v14, Lcg;->a:I

    if-eq v7, v6, :cond_2

    const/4 v6, 0x2

    const/16 v11, 0x9

    if-eq v7, v6, :cond_5

    if-eq v7, v15, :cond_3

    const/4 v6, 0x6

    if-eq v7, v6, :cond_3

    const/4 v6, 0x7

    if-eq v7, v6, :cond_2

    const/16 v6, 0x8

    if-eq v7, v6, :cond_1

    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_1
    iget-object v6, v4, Lan;->d:Ljava/util/ArrayList;

    new-instance v7, Lcg;

    .line 240
    invoke-direct {v7, v11, v1}, Lcg;-><init>(ILba;)V

    invoke-virtual {v6, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    .line 241
    iget-object v1, v14, Lcg;->b:Lba;

    const/4 v7, 0x1

    goto/16 :goto_8

    .line 239
    :cond_2
    const/4 v7, 0x1

    goto/16 :goto_7

    .line 242
    :cond_3
    iget-object v6, v14, Lcg;->b:Lba;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    iget-object v6, v14, Lcg;->b:Lba;

    if-ne v6, v1, :cond_4

    iget-object v1, v4, Lan;->d:Ljava/util/ArrayList;

    new-instance v7, Lcg;

    .line 244
    invoke-direct {v7, v11, v6}, Lcg;-><init>(ILba;)V

    invoke-virtual {v1, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_4
    goto :goto_3

    .line 245
    :cond_5
    iget-object v6, v14, Lcg;->b:Lba;

    .line 246
    iget v7, v6, Lba;->B:I

    .line 247
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, -0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v15, v17

    const/16 v17, 0x0

    :goto_4
    if-ltz v15, :cond_9

    .line 248
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    check-cast v11, Lba;

    .line 249
    iget v10, v11, Lba;->B:I

    if-ne v10, v7, :cond_8

    if-ne v11, v6, :cond_6

    move/from16 v18, v7

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    if-ne v11, v1, :cond_7

    iget-object v1, v4, Lan;->d:Ljava/util/ArrayList;

    new-instance v10, Lcg;

    .line 250
    move/from16 v18, v7

    const/16 v7, 0x9

    invoke-direct {v10, v7, v11}, Lcg;-><init>(ILba;)V

    invoke-virtual {v1, v8, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    goto :goto_5

    .line 257
    :cond_7
    move/from16 v18, v7

    const/16 v7, 0x9

    .line 250
    :goto_5
    new-instance v10, Lcg;

    .line 251
    const/4 v7, 0x3

    invoke-direct {v10, v7, v11}, Lcg;-><init>(ILba;)V

    .line 252
    iget v7, v14, Lcg;->c:I

    iput v7, v10, Lcg;->c:I

    .line 253
    iget v7, v14, Lcg;->e:I

    iput v7, v10, Lcg;->e:I

    .line 254
    iget v7, v14, Lcg;->d:I

    iput v7, v10, Lcg;->d:I

    .line 255
    iget v7, v14, Lcg;->f:I

    iput v7, v10, Lcg;->f:I

    iget-object v7, v4, Lan;->d:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v7, v8, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 257
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    add-int/2addr v8, v7

    goto :goto_6

    :cond_8
    move/from16 v18, v7

    .line 249
    :goto_6
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v10, p2

    move/from16 v7, v18

    const/16 v11, 0x9

    goto :goto_4

    .line 257
    :cond_9
    if-eqz v17, :cond_a

    iget-object v6, v4, Lan;->d:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    const/4 v7, 0x1

    goto :goto_8

    :cond_a
    const/4 v7, 0x1

    iput v7, v14, Lcg;->a:I

    .line 259
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 260
    :goto_7
    iget-object v6, v14, Lcg;->b:Lba;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_8
    add-int/2addr v8, v7

    move-object/from16 v10, p2

    move/from16 v11, p3

    const/4 v6, 0x1

    const/4 v15, 0x3

    goto/16 :goto_2

    .line 237
    :cond_b
    const/4 v10, 0x1

    goto :goto_b

    .line 268
    :cond_c
    iget-object v5, v0, Lbx;->A:Ljava/util/ArrayList;

    iget-object v6, v4, Lan;->d:Ljava/util/ArrayList;

    .line 261
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, -0x1

    add-int/2addr v6, v7

    :goto_9
    if-ltz v6, :cond_f

    iget-object v7, v4, Lan;->d:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcg;

    .line 263
    iget v8, v7, Lcg;->a:I

    const/4 v10, 0x1

    if-eq v8, v10, :cond_e

    const/4 v11, 0x3

    if-eq v8, v11, :cond_d

    packed-switch v8, :pswitch_data_0

    goto :goto_a

    .line 264
    :pswitch_0
    iget-object v8, v7, Lcg;->g:Li;

    iput-object v8, v7, Lcg;->h:Li;

    goto :goto_a

    .line 265
    :pswitch_1
    iget-object v1, v7, Lcg;->b:Lba;

    goto :goto_a

    .line 266
    :pswitch_2
    const/4 v1, 0x0

    goto :goto_a

    :cond_d
    :pswitch_3
    iget-object v7, v7, Lcg;->b:Lba;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 267
    :cond_e
    :pswitch_4
    iget-object v7, v7, Lcg;->b:Lba;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    :goto_a
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 261
    :cond_f
    const/4 v10, 0x1

    .line 260
    :goto_b
    if-nez v3, :cond_11

    .line 268
    iget-boolean v3, v4, Lan;->j:Z

    if-eqz v3, :cond_10

    goto :goto_c

    :cond_10
    const/4 v3, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v3, 0x1

    :goto_d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v10, p2

    move/from16 v11, p3

    goto/16 :goto_1

    .line 267
    :cond_12
    const/4 v7, -0x1

    const/4 v10, 0x1

    iget-object v1, v0, Lbx;->A:Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v13, :cond_13

    iget v1, v0, Lbx;->i:I

    if-lez v1, :cond_13

    iget-object v1, v0, Lbx;->j:Lbn;

    iget-object v1, v1, Lbn;->c:Landroid/content/Context;

    iget-object v2, v0, Lbx;->k:Lbj;

    const/4 v8, 0x0

    iget-object v11, v0, Lbx;->C:Lbr;

    .line 270
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    const/4 v14, -0x1

    move v7, v8

    const/4 v15, 0x0

    move-object v8, v11

    invoke-static/range {v1 .. v8}, Lcp;->a(Landroid/content/Context;Lbj;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLbr;)V

    goto :goto_e

    .line 269
    :cond_13
    const/4 v14, -0x1

    const/4 v15, 0x0

    .line 270
    :goto_e
    move/from16 v1, p3

    :goto_f
    if-ge v1, v12, :cond_21

    .line 271
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lan;

    .line 272
    move-object/from16 v11, p2

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "Unknown cmd: "

    if-eqz v3, :cond_1c

    .line 273
    invoke-virtual {v2, v14}, Lan;->a(I)V

    add-int/lit8 v3, v12, -0x1

    iget-object v5, v2, Lan;->d:Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v14

    :goto_10
    if-ltz v5, :cond_1a

    iget-object v6, v2, Lan;->d:Ljava/util/ArrayList;

    .line 275
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcg;

    .line 276
    iget-object v7, v6, Lcg;->b:Lba;

    if-eqz v7, :cond_17

    iget v8, v2, Lan;->i:I

    const/16 v14, 0x2002

    const/16 v10, 0x1003

    const/16 v15, 0x1001

    if-eq v8, v15, :cond_16

    if-eq v8, v10, :cond_15

    if-eq v8, v14, :cond_14

    const/4 v14, 0x0

    goto :goto_11

    .line 296
    :cond_14
    const/16 v14, 0x1001

    goto :goto_11

    :cond_15
    const/16 v14, 0x1003

    goto :goto_11

    :cond_16
    nop

    .line 277
    :goto_11
    invoke-virtual {v7, v14}, Lba;->d(I)V

    .line 278
    :cond_17
    iget v8, v6, Lcg;->a:I

    packed-switch v8, :pswitch_data_1

    .line 350
    :pswitch_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 349
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcg;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :pswitch_6
    iget-object v8, v2, Lan;->a:Lbx;

    .line 279
    iget-object v10, v6, Lcg;->g:Li;

    invoke-virtual {v8, v7, v10}, Lbx;->a(Lba;Li;)V

    goto :goto_12

    .line 298
    :pswitch_7
    iget-object v8, v2, Lan;->a:Lbx;

    .line 280
    invoke-virtual {v8, v7}, Lbx;->k(Lba;)V

    goto :goto_12

    :pswitch_8
    iget-object v8, v2, Lan;->a:Lbx;

    .line 281
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lbx;->k(Lba;)V

    goto :goto_12

    .line 282
    :pswitch_9
    iget v8, v6, Lcg;->f:I

    invoke-virtual {v7, v8}, Lba;->c(I)V

    iget-object v8, v2, Lan;->a:Lbx;

    .line 283
    const/4 v10, 0x1

    invoke-virtual {v8, v7, v10}, Lbx;->a(Lba;Z)V

    iget-object v8, v2, Lan;->a:Lbx;

    .line 284
    invoke-virtual {v8, v7}, Lbx;->i(Lba;)V

    goto :goto_12

    .line 285
    :pswitch_a
    iget v8, v6, Lcg;->e:I

    invoke-virtual {v7, v8}, Lba;->c(I)V

    iget-object v8, v2, Lan;->a:Lbx;

    .line 286
    invoke-virtual {v8, v7}, Lbx;->j(Lba;)V

    goto :goto_12

    .line 287
    :pswitch_b
    iget v8, v6, Lcg;->f:I

    invoke-virtual {v7, v8}, Lba;->c(I)V

    iget-object v8, v2, Lan;->a:Lbx;

    .line 288
    const/4 v10, 0x1

    invoke-virtual {v8, v7, v10}, Lbx;->a(Lba;Z)V

    iget-object v8, v2, Lan;->a:Lbx;

    .line 289
    invoke-virtual {v8, v7}, Lbx;->h(Lba;)V

    goto :goto_12

    .line 290
    :pswitch_c
    iget v8, v6, Lcg;->e:I

    invoke-virtual {v7, v8}, Lba;->c(I)V

    .line 291
    invoke-static {v7}, Lbx;->n(Lba;)V

    goto :goto_12

    .line 292
    :pswitch_d
    iget v8, v6, Lcg;->e:I

    invoke-virtual {v7, v8}, Lba;->c(I)V

    iget-object v8, v2, Lan;->a:Lbx;

    .line 293
    invoke-virtual {v8, v7}, Lbx;->f(Lba;)V

    goto :goto_12

    .line 294
    :pswitch_e
    iget v8, v6, Lcg;->f:I

    invoke-virtual {v7, v8}, Lba;->c(I)V

    iget-object v8, v2, Lan;->a:Lbx;

    .line 295
    const/4 v10, 0x1

    invoke-virtual {v8, v7, v10}, Lbx;->a(Lba;Z)V

    iget-object v8, v2, Lan;->a:Lbx;

    .line 296
    invoke-virtual {v8, v7}, Lbx;->g(Lba;)V

    .line 279
    :goto_12
    iget-boolean v8, v2, Lan;->s:Z

    if-nez v8, :cond_18

    .line 297
    iget v6, v6, Lcg;->a:I

    const/4 v8, 0x3

    if-eq v6, v8, :cond_19

    if-eqz v7, :cond_19

    iget-object v6, v2, Lan;->a:Lbx;

    .line 298
    invoke-virtual {v6, v7}, Lbx;->d(Lba;)V

    goto :goto_13

    .line 279
    :cond_18
    const/4 v8, 0x3

    .line 298
    :cond_19
    :goto_13
    add-int/lit8 v5, v5, -0x1

    const/4 v10, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    goto/16 :goto_10

    .line 296
    :cond_1a
    const/4 v8, 0x3

    iget-boolean v4, v2, Lan;->s:Z

    if-nez v4, :cond_1b

    if-ne v1, v3, :cond_1b

    iget-object v2, v2, Lan;->a:Lbx;

    iget v3, v2, Lbx;->i:I

    .line 299
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lbx;->a(IZ)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_16

    .line 296
    :cond_1b
    const/4 v5, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_16

    .line 299
    :cond_1c
    const/4 v5, 0x1

    const/4 v8, 0x3

    .line 300
    invoke-virtual {v2, v5}, Lan;->a(I)V

    iget-object v3, v2, Lan;->d:Ljava/util/ArrayList;

    .line 301
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v3, :cond_1f

    iget-object v6, v2, Lan;->d:Ljava/util/ArrayList;

    .line 302
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcg;

    .line 303
    iget-object v7, v6, Lcg;->b:Lba;

    if-eqz v7, :cond_1d

    iget v10, v2, Lan;->i:I

    .line 304
    invoke-virtual {v7, v10}, Lba;->d(I)V

    .line 305
    :cond_1d
    iget v10, v6, Lcg;->a:I

    packed-switch v10, :pswitch_data_2

    .line 348
    :pswitch_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcg;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :pswitch_10
    iget-object v10, v2, Lan;->a:Lbx;

    .line 306
    iget-object v14, v6, Lcg;->h:Li;

    invoke-virtual {v10, v7, v14}, Lbx;->a(Lba;Li;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_15

    .line 325
    :pswitch_11
    iget-object v10, v2, Lan;->a:Lbx;

    .line 307
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lbx;->k(Lba;)V

    const/4 v15, 0x0

    goto :goto_15

    :pswitch_12
    const/4 v14, 0x0

    iget-object v10, v2, Lan;->a:Lbx;

    .line 308
    invoke-virtual {v10, v7}, Lbx;->k(Lba;)V

    const/4 v15, 0x0

    goto :goto_15

    .line 309
    :pswitch_13
    const/4 v14, 0x0

    iget v10, v6, Lcg;->c:I

    invoke-virtual {v7, v10}, Lba;->c(I)V

    iget-object v10, v2, Lan;->a:Lbx;

    .line 310
    const/4 v15, 0x0

    invoke-virtual {v10, v7, v15}, Lbx;->a(Lba;Z)V

    iget-object v10, v2, Lan;->a:Lbx;

    .line 311
    invoke-virtual {v10, v7}, Lbx;->j(Lba;)V

    const/4 v15, 0x0

    goto :goto_15

    .line 312
    :pswitch_14
    const/4 v14, 0x0

    iget v10, v6, Lcg;->d:I

    invoke-virtual {v7, v10}, Lba;->c(I)V

    iget-object v10, v2, Lan;->a:Lbx;

    .line 313
    invoke-virtual {v10, v7}, Lbx;->i(Lba;)V

    const/4 v15, 0x0

    goto :goto_15

    .line 314
    :pswitch_15
    const/4 v14, 0x0

    iget v10, v6, Lcg;->c:I

    invoke-virtual {v7, v10}, Lba;->c(I)V

    iget-object v10, v2, Lan;->a:Lbx;

    .line 315
    const/4 v15, 0x0

    invoke-virtual {v10, v7, v15}, Lbx;->a(Lba;Z)V

    .line 316
    invoke-static {v7}, Lbx;->n(Lba;)V

    const/4 v15, 0x0

    goto :goto_15

    .line 317
    :pswitch_16
    const/4 v14, 0x0

    iget v10, v6, Lcg;->d:I

    invoke-virtual {v7, v10}, Lba;->c(I)V

    iget-object v10, v2, Lan;->a:Lbx;

    .line 318
    invoke-virtual {v10, v7}, Lbx;->h(Lba;)V

    const/4 v15, 0x0

    goto :goto_15

    .line 319
    :pswitch_17
    const/4 v14, 0x0

    iget v10, v6, Lcg;->d:I

    invoke-virtual {v7, v10}, Lba;->c(I)V

    iget-object v10, v2, Lan;->a:Lbx;

    .line 320
    invoke-virtual {v10, v7}, Lbx;->g(Lba;)V

    const/4 v15, 0x0

    goto :goto_15

    .line 321
    :pswitch_18
    const/4 v14, 0x0

    iget v10, v6, Lcg;->c:I

    invoke-virtual {v7, v10}, Lba;->c(I)V

    iget-object v10, v2, Lan;->a:Lbx;

    .line 322
    const/4 v15, 0x0

    invoke-virtual {v10, v7, v15}, Lbx;->a(Lba;Z)V

    iget-object v10, v2, Lan;->a:Lbx;

    .line 323
    invoke-virtual {v10, v7}, Lbx;->f(Lba;)V

    .line 306
    :goto_15
    iget-boolean v10, v2, Lan;->s:Z

    if-nez v10, :cond_1e

    .line 324
    iget v6, v6, Lcg;->a:I

    const/4 v10, 0x1

    if-eq v6, v10, :cond_1e

    if-eqz v7, :cond_1e

    iget-object v6, v2, Lan;->a:Lbx;

    .line 325
    invoke-virtual {v6, v7}, Lbx;->d(Lba;)V

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14

    .line 323
    :cond_1f
    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-boolean v3, v2, Lan;->s:Z

    if-nez v3, :cond_20

    iget-object v2, v2, Lan;->a:Lbx;

    iget v3, v2, Lbx;->i:I

    .line 326
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lbx;->a(IZ)V

    .line 299
    :cond_20
    :goto_16
    add-int/lit8 v1, v1, 0x1

    move-object v15, v14

    const/4 v10, 0x1

    const/4 v14, -0x1

    goto/16 :goto_f

    .line 326
    :cond_21
    move-object/from16 v11, p2

    const/4 v15, 0x0

    if-eqz v13, :cond_28

    .line 327
    new-instance v1, Ltj;

    invoke-direct {v1}, Ltj;-><init>()V

    iget v2, v0, Lbx;->i:I

    if-gtz v2, :cond_22

    goto :goto_18

    .line 343
    :cond_22
    const/4 v3, 0x4

    .line 328
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lbx;->a:Lcf;

    .line 329
    invoke-virtual {v3}, Lcf;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lba;

    .line 330
    iget v5, v4, Lba;->f:I

    if-ge v5, v2, :cond_23

    .line 331
    invoke-virtual {v0, v4, v2}, Lbx;->a(Lba;I)V

    .line 332
    iget-object v5, v4, Lba;->L:Landroid/view/View;

    if-eqz v5, :cond_23

    iget-boolean v5, v4, Lba;->D:Z

    if-nez v5, :cond_23

    iget-boolean v5, v4, Lba;->P:Z

    if-eqz v5, :cond_23

    .line 333
    invoke-virtual {v1, v4}, Ltj;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 327
    :cond_24
    :goto_18
    add-int/lit8 v2, v12, -0x1

    :goto_19
    move/from16 v10, p3

    if-lt v2, v10, :cond_26

    .line 334
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lan;

    .line 335
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v4, 0x0

    :goto_1a
    iget-object v5, v3, Lan;->d:Ljava/util/ArrayList;

    .line 336
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_25

    iget-object v5, v3, Lan;->d:Ljava/util/ArrayList;

    .line 337
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcg;

    .line 338
    iget-object v5, v5, Lcg;->b:Lba;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_26
    iget v2, v1, Ltj;->b:I

    const/4 v14, 0x0

    :goto_1b
    if-ge v14, v2, :cond_29

    .line 339
    invoke-virtual {v1, v14}, Ltj;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lba;

    .line 340
    iget-boolean v4, v3, Lba;->p:Z

    if-nez v4, :cond_27

    .line 341
    invoke-virtual {v3}, Lba;->x()Landroid/view/View;

    move-result-object v4

    .line 342
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    iput v5, v3, Lba;->R:F

    const/4 v3, 0x0

    .line 343
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_27
    add-int/lit8 v14, v14, 0x1

    goto :goto_1b

    .line 326
    :cond_28
    move/from16 v10, p3

    .line 333
    :cond_29
    if-eq v12, v10, :cond_2b

    if-eqz v13, :cond_2b

    iget v1, v0, Lbx;->i:I

    if-lez v1, :cond_2a

    iget-object v1, v0, Lbx;->j:Lbn;

    iget-object v1, v1, Lbn;->c:Landroid/content/Context;

    iget-object v2, v0, Lbx;->k:Lbj;

    const/4 v7, 0x1

    iget-object v8, v0, Lbx;->C:Lbr;

    .line 344
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v1 .. v8}, Lcp;->a(Landroid/content/Context;Lbj;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLbr;)V

    :cond_2a
    iget v1, v0, Lbx;->i:I

    .line 345
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbx;->a(IZ)V

    goto :goto_1c

    .line 348
    :cond_2b
    nop

    .line 345
    :goto_1c
    if-ge v10, v12, :cond_2e

    .line 346
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lan;

    .line 347
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 348
    iget v2, v1, Lan;->c:I

    if-ltz v2, :cond_2c

    const/4 v2, -0x1

    iput v2, v1, Lan;->c:I

    goto :goto_1d

    :cond_2c
    const/4 v2, -0x1

    goto :goto_1d

    .line 347
    :cond_2d
    const/4 v2, -0x1

    .line 348
    :goto_1d
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_2e
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method static a(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final d(Z)V
    .locals 2

    iget-boolean v0, p0, Lbx;->s:Z

    if-nez v0, :cond_5

    .line 200
    iget-object v0, p0, Lbx;->j:Lbn;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lbx;->p:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 201
    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 202
    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lbx;->j:Lbn;

    iget-object v1, v1, Lbn;->d:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 204
    if-nez p1, :cond_2

    .line 205
    invoke-direct {p0}, Lbx;->q()V

    :cond_2
    iget-object p1, p0, Lbx;->y:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    .line 206
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbx;->y:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 207
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbx;->z:Ljava/util/ArrayList;

    .line 202
    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lbx;->s:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbx;->s:Z

    return-void

    .line 203
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 204
    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 0
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 200
    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static final m(Lba;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lba;->I:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lba;->w:Lbx;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lba;->z:Lba;

    invoke-static {p0}, Lbx;->m(Lba;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :cond_3
    return v0
.end method

.method static final n(Lba;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 641
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    iget-boolean v0, p0, Lba;->D:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lba;->D:Z

    .line 643
    iget-boolean v0, p0, Lba;->Q:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lba;->Q:Z

    :cond_1
    return-void
.end method

.method private final o(Lba;)V
    .locals 3

    iget-object v0, p0, Lbx;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 41
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lue;

    .line 43
    invoke-virtual {v2}, Lue;->b()V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 45
    invoke-virtual {p0, p1}, Lbx;->b(Lba;)V

    iget-object v0, p0, Lbx;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 46
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final p()V
    .locals 6

    iget-object v0, p0, Lbx;->a:Lcf;

    .line 644
    invoke-virtual {v0}, Lcf;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lce;

    iget-object v4, v4, Lce;->b:Lba;

    .line 645
    iget-boolean v5, v4, Lba;->M:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lbx;->s:Z

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lbx;->x:Z

    goto :goto_1

    :cond_0
    iput-boolean v2, v4, Lba;->M:Z

    .line 646
    invoke-virtual {p0, v4}, Lbx;->c(Lba;)V

    .line 645
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 646
    :cond_2
    return-void
.end method

.method private final p(Lba;)V
    .locals 3

    .line 636
    invoke-direct {p0, p1}, Lbx;->q(Lba;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 637
    const v1, 0x7f0a01d6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 638
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    nop

    .line 639
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba;

    .line 640
    invoke-virtual {p1}, Lba;->G()I

    move-result p1

    invoke-virtual {v0, p1}, Lba;->c(I)V

    :cond_1
    return-void
.end method

.method private final q(Lba;)Landroid/view/ViewGroup;
    .locals 2

    .line 364
    iget-object v0, p1, Lba;->K:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    .line 365
    :cond_0
    iget v0, p1, Lba;->B:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lbx;->k:Lbj;

    .line 366
    invoke-virtual {v0}, Lbj;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbx;->k:Lbj;

    .line 367
    iget p1, p1, Lba;->B:I

    invoke-virtual {v0, p1}, Lbj;->a(I)Landroid/view/View;

    move-result-object p1

    .line 368
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 369
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method

.method private final q()V
    .locals 2

    invoke-virtual {p0}, Lbx;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbx;->s:Z

    iget-object v0, p0, Lbx;->z:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lbx;->y:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private static final r(Lba;)Z
    .locals 5

    .line 379
    iget-boolean v0, p0, Lba;->H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lba;->I:Z

    if-nez v0, :cond_5

    :cond_0
    iget-object p0, p0, Lba;->y:Lbx;

    iget-object p0, p0, Lbx;->a:Lcf;

    new-instance v0, Ljava/util/ArrayList;

    .line 380
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcf;->b:Ljava/util/HashMap;

    .line 381
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lce;->b:Lba;

    .line 382
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 383
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3
    if-ge v2, p0, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 384
    check-cast v4, Lba;

    if-eqz v4, :cond_4

    .line 385
    invoke-static {v4}, Lbx;->r(Lba;)Z

    move-result v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_3

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    return v1
.end method

.method private final s()V
    .locals 2

    iget-object v0, p0, Lbx;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 182
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbx;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 183
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba;

    .line 184
    invoke-direct {p0, v1}, Lbx;->o(Lba;)V

    .line 185
    invoke-virtual {p0, v1}, Lbx;->c(Lba;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final t()V
    .locals 1

    iget-boolean v0, p0, Lbx;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbx;->x:Z

    .line 111
    invoke-direct {p0}, Lbx;->p()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lba;
    .locals 4

    iget-object v0, p0, Lbx;->a:Lcf;

    iget-object v1, v0, Lcf;->a:Ljava/util/ArrayList;

    .line 356
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, v0, Lcf;->a:Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lba;->C:Ljava/lang/String;

    .line 358
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcf;->b:Ljava/util/HashMap;

    .line 359
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lce;->b:Lba;

    .line 360
    iget-object v1, v2, Lba;->C:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 358
    :goto_1
    return-object v2
.end method

.method public final a()Lch;
    .locals 1

    new-instance v0, Lan;

    .line 40
    invoke-direct {v0, p0}, Lan;-><init>(Lbx;)V

    return-object v0
.end method

.method final a(IZ)V
    .locals 5

    iget-object v0, p0, Lbx;->j:Lbn;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 430
    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 0
    :cond_1
    :goto_0
    if-nez p2, :cond_3

    iget p2, p0, Lbx;->i:I

    if-eq p1, p2, :cond_2

    goto :goto_1

    .line 430
    :cond_2
    return-void

    .line 0
    :cond_3
    :goto_1
    iput p1, p0, Lbx;->i:I

    iget-object p1, p0, Lbx;->a:Lcf;

    .line 421
    invoke-virtual {p1}, Lcf;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lba;

    .line 422
    invoke-virtual {p0, p2}, Lbx;->d(Lba;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lbx;->a:Lcf;

    .line 423
    invoke-virtual {p1}, Lcf;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lce;

    iget-object v3, v2, Lce;->b:Lba;

    .line 424
    iget-boolean v4, v3, Lba;->P:Z

    if-nez v4, :cond_5

    .line 425
    invoke-virtual {p0, v3}, Lbx;->d(Lba;)V

    .line 426
    :cond_5
    iget-boolean v4, v3, Lba;->q:Z

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lba;->o()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lbx;->a:Lcf;

    .line 427
    invoke-virtual {v3, v2}, Lcf;->b(Lce;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 428
    :cond_7
    invoke-direct {p0}, Lbx;->p()V

    iget-boolean p1, p0, Lbx;->w:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lbx;->j:Lbn;

    if-eqz p1, :cond_8

    iget p2, p0, Lbx;->i:I

    const/4 v1, 0x6

    if-ne p2, v1, :cond_8

    .line 429
    invoke-virtual {p1}, Lbn;->d()V

    iput-boolean v0, p0, Lbx;->w:Z

    :cond_8
    return-void
.end method

.method final a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lbx;->a:Lcf;

    .line 64
    invoke-virtual {v0}, Lcf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba;

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1, p1}, Lba;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, v1, Lba;->y:Lbx;

    .line 66
    invoke-virtual {v1, p1}, Lbx;->a(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Landroid/os/Parcelable;)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    .line 527
    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Lbz;

    iget-object v2, v1, Lbz;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lbx;->a:Lcf;

    iget-object v2, v2, Lcf;->b:Ljava/util/HashMap;

    .line 528
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lbz;->a:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, "): "

    const-string v7, "FragmentManager"

    const/4 v8, 0x2

    if-ge v5, v3, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 529
    move-object v15, v9

    check-cast v15, Lcd;

    if-eqz v15, :cond_5

    iget-object v9, v0, Lbx;->q:Lcb;

    iget-object v10, v15, Lcd;->b:Ljava/lang/String;

    iget-object v9, v9, Lcb;->d:Ljava/util/HashMap;

    .line 530
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lba;

    if-eqz v9, :cond_3

    invoke-static {v8}, Lbx;->a(I)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    .line 531
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSaveState: re-attaching retained "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v10, Lce;

    iget-object v11, v0, Lbx;->h:Lbq;

    iget-object v12, v0, Lbx;->a:Lcf;

    .line 532
    invoke-direct {v10, v11, v12, v9, v15}, Lce;-><init>(Lbq;Lcf;Lba;Lcd;)V

    goto :goto_1

    .line 537
    :cond_3
    new-instance v9, Lce;

    iget-object v11, v0, Lbx;->h:Lbq;

    iget-object v12, v0, Lbx;->a:Lcf;

    iget-object v10, v0, Lbx;->j:Lbn;

    iget-object v10, v10, Lbn;->c:Landroid/content/Context;

    .line 533
    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    .line 534
    invoke-virtual/range {p0 .. p0}, Lbx;->n()Lbm;

    move-result-object v14

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lce;-><init>(Lbq;Lcf;Ljava/lang/ClassLoader;Lbm;Lcd;)V

    .line 532
    :goto_1
    iget-object v9, v10, Lce;->b:Lba;

    iput-object v0, v9, Lba;->w:Lbx;

    invoke-static {v8}, Lbx;->a(I)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    .line 535
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSaveState: active ("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lba;->j:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, v0, Lbx;->j:Lbn;

    iget-object v6, v6, Lbn;->c:Landroid/content/Context;

    .line 536
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v10, v6}, Lce;->a(Ljava/lang/ClassLoader;)V

    iget-object v6, v0, Lbx;->a:Lcf;

    .line 537
    invoke-virtual {v6, v10}, Lcf;->a(Lce;)V

    iget v6, v0, Lbx;->i:I

    iput v6, v10, Lce;->c:I

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 534
    :cond_6
    iget-object v2, v0, Lbx;->q:Lcb;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lcb;->d:Ljava/util/HashMap;

    .line 538
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_2
    const/4 v9, 0x1

    if-ge v5, v2, :cond_9

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 539
    check-cast v10, Lba;

    iget-object v11, v0, Lbx;->a:Lcf;

    .line 540
    iget-object v12, v10, Lba;->j:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcf;->a(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-static {v8}, Lbx;->a(I)Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    .line 541
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Discarding retained Fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " that was not found in the set of active Fragments "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lbz;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v11, v0, Lbx;->q:Lcb;

    .line 542
    invoke-virtual {v11, v10}, Lcb;->c(Lba;)V

    iput-object v0, v10, Lba;->w:Lbx;

    new-instance v11, Lce;

    iget-object v12, v0, Lbx;->h:Lbq;

    iget-object v13, v0, Lbx;->a:Lcf;

    .line 543
    invoke-direct {v11, v12, v13, v10}, Lce;-><init>(Lbq;Lcf;Lba;)V

    iput v9, v11, Lce;->c:I

    .line 544
    invoke-virtual {v11}, Lce;->b()V

    iput-boolean v9, v10, Lba;->q:Z

    .line 545
    invoke-virtual {v11}, Lce;->b()V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    iget-object v2, v0, Lbx;->a:Lcf;

    iget-object v3, v1, Lbz;->b:Ljava/util/ArrayList;

    iget-object v5, v2, Lcf;->a:Ljava/util/ArrayList;

    .line 546
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v5, :cond_c

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 547
    check-cast v11, Ljava/lang/String;

    .line 548
    invoke-virtual {v2, v11}, Lcf;->c(Ljava/lang/String;)Lba;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 579
    invoke-static {v8}, Lbx;->a(I)Z

    move-result v13

    if-eqz v13, :cond_a

    new-instance v13, Ljava/lang/StringBuilder;

    .line 549
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restoreSaveState: added ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_a
    invoke-virtual {v2, v12}, Lcf;->a(Lba;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 548
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 579
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No instantiated fragment for ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :cond_c
    iget-object v2, v1, Lbz;->c:[Lap;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    array-length v2, v2

    new-instance v5, Ljava/util/ArrayList;

    .line 551
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Lbx;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_4
    iget-object v5, v1, Lbz;->c:[Lap;

    .line 552
    array-length v10, v5

    if-ge v2, v10, :cond_12

    .line 553
    aget-object v5, v5, v2

    new-instance v10, Lan;

    .line 554
    invoke-direct {v10, v0}, Lan;-><init>(Lbx;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5
    iget-object v13, v5, Lap;->a:[I

    .line 555
    array-length v13, v13

    if-ge v11, v13, :cond_f

    new-instance v13, Lcg;

    invoke-direct {v13}, Lcg;-><init>()V

    add-int/lit8 v14, v11, 0x1

    iget-object v15, v5, Lap;->a:[I

    .line 556
    aget v11, v15, v11

    iput v11, v13, Lcg;->a:I

    invoke-static {v8}, Lbx;->a(I)Z

    move-result v11

    if-eqz v11, :cond_d

    new-instance v11, Ljava/lang/StringBuilder;

    .line 557
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Instantiate "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " op #"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " base fragment #"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v5, Lap;->a:[I

    aget v15, v15, v14

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v11, v5, Lap;->b:Ljava/util/ArrayList;

    .line 558
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_e

    .line 559
    invoke-virtual {v0, v11}, Lbx;->c(Ljava/lang/String;)Lba;

    move-result-object v11

    iput-object v11, v13, Lcg;->b:Lba;

    goto :goto_6

    .line 566
    :cond_e
    iput-object v3, v13, Lcg;->b:Lba;

    .line 560
    :goto_6
    invoke-static {}, Li;->values()[Li;

    move-result-object v11

    iget-object v15, v5, Lap;->c:[I

    aget v15, v15, v12

    aget-object v11, v11, v15

    iput-object v11, v13, Lcg;->g:Li;

    .line 561
    invoke-static {}, Li;->values()[Li;

    move-result-object v11

    iget-object v15, v5, Lap;->d:[I

    aget v15, v15, v12

    aget-object v11, v11, v15

    iput-object v11, v13, Lcg;->h:Li;

    iget-object v11, v5, Lap;->a:[I

    add-int/lit8 v15, v14, 0x1

    .line 562
    aget v14, v11, v14

    iput v14, v13, Lcg;->c:I

    add-int/lit8 v16, v15, 0x1

    .line 563
    aget v15, v11, v15

    iput v15, v13, Lcg;->d:I

    add-int/lit8 v17, v16, 0x1

    .line 564
    aget v3, v11, v16

    iput v3, v13, Lcg;->e:I

    add-int/lit8 v16, v17, 0x1

    .line 565
    aget v11, v11, v17

    iput v11, v13, Lcg;->f:I

    iput v14, v10, Lan;->e:I

    iput v15, v10, Lan;->f:I

    iput v3, v10, Lan;->g:I

    iput v11, v10, Lan;->h:I

    .line 566
    invoke-virtual {v10, v13}, Lch;->a(Lcg;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v16

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_f
    iget v3, v5, Lap;->e:I

    iput v3, v10, Lan;->i:I

    iget-object v3, v5, Lap;->f:Ljava/lang/String;

    iput-object v3, v10, Lan;->l:Ljava/lang/String;

    iget v3, v5, Lap;->g:I

    iput v3, v10, Lan;->c:I

    iput-boolean v9, v10, Lan;->j:Z

    iget v3, v5, Lap;->h:I

    iput v3, v10, Lan;->m:I

    iget-object v3, v5, Lap;->i:Ljava/lang/CharSequence;

    iput-object v3, v10, Lan;->n:Ljava/lang/CharSequence;

    iget v3, v5, Lap;->j:I

    iput v3, v10, Lan;->o:I

    iget-object v3, v5, Lap;->k:Ljava/lang/CharSequence;

    iput-object v3, v10, Lan;->p:Ljava/lang/CharSequence;

    iget-object v3, v5, Lap;->l:Ljava/util/ArrayList;

    iput-object v3, v10, Lan;->q:Ljava/util/ArrayList;

    iget-object v3, v5, Lap;->m:Ljava/util/ArrayList;

    iput-object v3, v10, Lan;->r:Ljava/util/ArrayList;

    iget-boolean v3, v5, Lap;->n:Z

    iput-boolean v3, v10, Lan;->s:Z

    .line 567
    invoke-virtual {v10, v9}, Lan;->a(I)V

    invoke-static {v8}, Lbx;->a(I)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    .line 568
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: back stack #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (index "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lan;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v3, Ldb;

    invoke-direct {v3}, Ldb;-><init>()V

    new-instance v5, Ljava/io/PrintWriter;

    .line 570
    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 571
    const-string v3, "  "

    invoke-virtual {v10, v3, v5, v4}, Lan;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 572
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_10
    iget-object v3, v0, Lbx;->b:Ljava/util/ArrayList;

    .line 573
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_4

    .line 578
    :cond_11
    const/4 v2, 0x0

    iput-object v2, v0, Lbx;->b:Ljava/util/ArrayList;

    .line 573
    :cond_12
    iget-object v2, v0, Lbx;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, v1, Lbz;->d:I

    .line 574
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Lbz;->e:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 575
    invoke-virtual {v0, v2}, Lbx;->c(Ljava/lang/String;)Lba;

    move-result-object v2

    iput-object v2, v0, Lbx;->m:Lba;

    .line 576
    invoke-virtual {v0, v2}, Lbx;->l(Lba;)V

    :cond_13
    iget-object v2, v1, Lbz;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    .line 577
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_14

    iget-object v3, v0, Lbx;->u:Lj$/util/concurrent/ConcurrentHashMap;

    .line 578
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lbz;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method final a(Lba;I)V
    .locals 13

    iget-object v0, p0, Lbx;->a:Lcf;

    .line 432
    iget-object v1, p1, Lba;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcf;->b(Ljava/lang/String;)Lce;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lce;

    iget-object v2, p0, Lbx;->h:Lbq;

    iget-object v3, p0, Lbx;->a:Lcf;

    .line 433
    invoke-direct {v0, v2, v3, p1}, Lce;-><init>(Lbq;Lcf;Lba;)V

    iput v1, v0, Lce;->c:I

    .line 434
    :cond_0
    invoke-virtual {v0}, Lce;->a()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 435
    iget v2, p1, Lba;->f:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-gt v2, p2, :cond_8

    if-ge v2, p2, :cond_1

    iget-object v2, p0, Lbx;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 436
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 437
    invoke-direct {p0, p1}, Lbx;->o(Lba;)V

    .line 438
    :cond_1
    iget v2, p1, Lba;->f:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_4

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_7

    goto/16 :goto_4

    .line 482
    :cond_2
    if-ltz p2, :cond_3

    .line 439
    invoke-virtual {v0}, Lce;->d()V

    :cond_3
    if-lez p2, :cond_4

    .line 440
    invoke-virtual {v0}, Lce;->e()V

    :cond_4
    if-ltz p2, :cond_5

    .line 441
    invoke-virtual {v0}, Lce;->c()V

    :cond_5
    if-le p2, v1, :cond_6

    .line 442
    invoke-virtual {v0}, Lce;->f()V

    .line 443
    invoke-virtual {v0}, Lce;->g()V

    .line 444
    invoke-virtual {v0}, Lce;->h()V

    :cond_6
    if-le p2, v4, :cond_7

    .line 445
    invoke-virtual {v0}, Lce;->i()V

    :cond_7
    if-le p2, v3, :cond_9

    .line 446
    invoke-virtual {v0}, Lce;->j()V

    goto/16 :goto_4

    :cond_8
    if-le v2, p2, :cond_18

    if-eqz v2, :cond_16

    if-eq v2, v1, :cond_14

    if-eq v2, v4, :cond_c

    if-eq v2, v3, :cond_b

    const/4 v5, 0x6

    if-eq v2, v5, :cond_a

    :cond_9
    goto/16 :goto_4

    .line 479
    :cond_a
    if-ge p2, v5, :cond_b

    .line 447
    invoke-virtual {v0}, Lce;->k()V

    :cond_b
    if-ge p2, v3, :cond_c

    .line 448
    invoke-virtual {v0}, Lce;->l()V

    :cond_c
    if-ge p2, v4, :cond_14

    invoke-static {v4}, Lbx;->a(I)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    .line 449
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    :cond_d
    iget-object v2, p1, Lba;->L:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lbx;->j:Lbn;

    check-cast v2, Lbb;

    iget-object v2, v2, Lbb;->a:Lbc;

    .line 451
    invoke-virtual {v2}, Lbc;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_e

    .line 452
    iget-object v2, p1, Lba;->h:Landroid/util/SparseArray;

    if-nez v2, :cond_e

    .line 453
    invoke-virtual {v0}, Lce;->m()V

    .line 454
    :cond_e
    iget-object v2, p1, Lba;->L:Landroid/view/View;

    if-eqz v2, :cond_13

    iget-object v3, p1, Lba;->K:Landroid/view/ViewGroup;

    if-eqz v3, :cond_13

    .line 455
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 456
    iget-object v2, p1, Lba;->L:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 457
    invoke-virtual {p1}, Lba;->w()Z

    move-result v2

    if-nez v2, :cond_13

    iget v2, p0, Lbx;->i:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-ltz v2, :cond_f

    iget-boolean v2, p0, Lbx;->p:Z

    if-nez v2, :cond_f

    .line 458
    iget-object v2, p1, Lba;->L:Landroid/view/View;

    .line 459
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_f

    iget v2, p1, Lba;->R:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_f

    iget-object v2, p0, Lbx;->j:Lbn;

    iget-object v2, v2, Lbn;->c:Landroid/content/Context;

    const/4 v5, 0x0

    .line 460
    invoke-static {v2, p1, v5}, Ley;->a(Landroid/content/Context;Lba;Z)Lbh;

    move-result-object v5

    goto :goto_0

    .line 473
    :cond_f
    nop

    .line 460
    :goto_0
    iput v3, p1, Lba;->R:F

    .line 461
    iget-object v2, p1, Lba;->K:Landroid/view/ViewGroup;

    .line 462
    iget-object v3, p1, Lba;->L:Landroid/view/View;

    if-eqz v5, :cond_11

    iget-object v10, p0, Lbx;->C:Lbr;

    .line 463
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v11, Lue;

    invoke-direct {v11}, Lue;-><init>()V

    new-instance v6, Lbd;

    .line 464
    invoke-direct {v6, p1}, Lbd;-><init>(Lba;)V

    invoke-virtual {v11, v6}, Lue;->a(Lud;)V

    .line 465
    invoke-virtual {v10, p1, v11}, Lbr;->a(Lba;Lue;)V

    iget-object v6, v5, Lbh;->a:Landroid/view/animation/Animation;

    if-eqz v6, :cond_10

    .line 466
    new-instance v5, Lbi;

    invoke-direct {v5, v6, v2, v3}, Lbi;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 467
    iget-object v6, p1, Lba;->L:Landroid/view/View;

    invoke-virtual {p1, v6}, Lba;->a(Landroid/view/View;)V

    .line 468
    new-instance v6, Lbf;

    invoke-direct {v6, v2, p1, v10, v11}, Lbf;-><init>(Landroid/view/ViewGroup;Lba;Lbr;Lue;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 469
    iget-object v6, p1, Lba;->L:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 477
    :cond_10
    iget-object v5, v5, Lbh;->b:Landroid/animation/Animator;

    .line 470
    invoke-virtual {p1, v5}, Lba;->a(Landroid/animation/Animator;)V

    new-instance v12, Lbg;

    .line 471
    move-object v6, v12

    move-object v7, v2

    move-object v8, v3

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Lbg;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lba;Lbr;Lue;)V

    invoke-virtual {v5, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 472
    iget-object v6, p1, Lba;->L:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 474
    :cond_11
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 475
    iget-object v3, p1, Lba;->K:Landroid/view/ViewGroup;

    if-ne v2, v3, :cond_12

    goto :goto_2

    .line 477
    :cond_12
    return-void

    .line 475
    :cond_13
    :goto_2
    iget-object v2, p0, Lbx;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 476
    invoke-virtual {v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    .line 477
    invoke-virtual {v0}, Lce;->n()V

    .line 480
    :cond_14
    if-gtz p2, :cond_16

    iget-object v2, p0, Lbx;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 478
    invoke-virtual {v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    goto :goto_3

    .line 479
    :cond_15
    invoke-virtual {v0}, Lce;->o()V

    nop

    .line 446
    :cond_16
    move v1, p2

    :goto_3
    if-gez v1, :cond_17

    .line 480
    invoke-virtual {v0}, Lce;->p()V

    .line 481
    :cond_17
    move p2, v1

    goto :goto_4

    .line 473
    :cond_18
    nop

    .line 481
    :goto_4
    iget v0, p1, Lba;->f:I

    if-eq v0, p2, :cond_1a

    invoke-static {v4}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    .line 482
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lba;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_19
    iput p2, p1, Lba;->f:I

    :cond_1a
    return-void
.end method

.method final a(Lba;Li;)V
    .locals 2

    .line 630
    iget-object v0, p1, Lba;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbx;->c(Ljava/lang/String;)Lba;

    move-result-object v0

    invoke-virtual {p1, v0}, Lba;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lba;->x:Lbn;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lba;->w:Lbx;

    if-ne v0, p0, :cond_1

    .line 631
    :cond_0
    iput-object p2, p1, Lba;->U:Li;

    return-void

    .line 630
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 631
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final a(Lba;Z)V
    .locals 1

    .line 627
    invoke-direct {p0, p1}, Lbx;->q(Lba;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 628
    instance-of v0, p1, Lbk;

    if-eqz v0, :cond_0

    .line 629
    check-cast p1, Lbk;

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lbk;->a:Z

    :cond_0
    return-void
.end method

.method final a(Lbn;Lbj;Lba;)V
    .locals 4

    iget-object v0, p0, Lbx;->j:Lbn;

    if-nez v0, :cond_6

    .line 20
    iput-object p1, p0, Lbx;->j:Lbn;

    iput-object p2, p0, Lbx;->k:Lbj;

    iput-object p3, p0, Lbx;->l:Lba;

    if-eqz p3, :cond_0

    .line 21
    invoke-virtual {p0}, Lbx;->b()V

    .line 22
    :cond_0
    instance-of p2, p1, Lsm;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lbb;

    iget-object p2, p2, Lbb;->a:Lbc;

    iget-object p2, p2, Lsi;->i:Lsl;

    iput-object p2, p0, Lbx;->d:Lsl;

    if-eqz p3, :cond_1

    move-object v0, p3

    goto :goto_0

    .line 33
    :cond_1
    move-object v0, p1

    .line 22
    :goto_0
    iget-object v1, p0, Lbx;->e:Lsj;

    .line 23
    invoke-interface {v0}, Ll;->ab()Lj;

    move-result-object v0

    iget-object v2, v0, Lj;->a:Li;

    .line 24
    sget-object v3, Li;->a:Li;

    if-eq v2, v3, :cond_2

    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    .line 25
    invoke-direct {v2, p2, v0, v1}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Lsl;Lj;Lsj;)V

    invoke-virtual {v1, v2}, Lsj;->a(Lsf;)V

    :cond_2
    if-eqz p3, :cond_4

    iget-object p1, p3, Lba;->w:Lbx;

    iget-object p1, p1, Lbx;->q:Lcb;

    iget-object p2, p1, Lcb;->e:Ljava/util/HashMap;

    iget-object v0, p3, Lba;->j:Ljava/lang/String;

    .line 26
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcb;

    if-nez p2, :cond_3

    new-instance p2, Lcb;

    iget-boolean v0, p1, Lcb;->g:Z

    .line 27
    invoke-direct {p2, v0}, Lcb;-><init>(Z)V

    iget-object p1, p1, Lcb;->e:Ljava/util/HashMap;

    iget-object p3, p3, Lba;->j:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    nop

    :goto_1
    iput-object p2, p0, Lbx;->q:Lcb;

    goto :goto_2

    .line 29
    :cond_4
    instance-of p2, p1, Lak;

    if-eqz p2, :cond_5

    .line 30
    invoke-interface {p1}, Lak;->ac()Laj;

    move-result-object p1

    new-instance p2, Lai;

    sget-object p3, Lcb;->a:Lae;

    .line 31
    invoke-direct {p2, p1, p3}, Lai;-><init>(Laj;Lae;)V

    const-class p1, Lcb;

    .line 32
    invoke-virtual {p2, p1}, Lai;->a(Ljava/lang/Class;)Lac;

    move-result-object p1

    check-cast p1, Lcb;

    iput-object p1, p0, Lbx;->q:Lcb;

    goto :goto_2

    :cond_5
    new-instance p1, Lcb;

    const/4 p2, 0x0

    .line 33
    invoke-direct {p1, p2}, Lcb;-><init>(Z)V

    iput-object p1, p0, Lbx;->q:Lcb;

    .line 28
    :goto_2
    iget-object p1, p0, Lbx;->q:Lcb;

    invoke-virtual {p0}, Lbx;->d()Z

    move-result p2

    iput-boolean p2, p1, Lcb;->i:Z

    iget-object p1, p0, Lbx;->a:Lcf;

    iget-object p2, p0, Lbx;->q:Lcb;

    iput-object p2, p1, Lcf;->c:Lcb;

    return-void

    .line 0
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Lbv;Z)V
    .locals 2

    if-nez p2, :cond_2

    iget-object v0, p0, Lbx;->j:Lbn;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lbx;->p:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    .line 186
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    .line 187
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_1
    invoke-direct {p0}, Lbx;->q()V

    :cond_2
    iget-object v0, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 189
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbx;->j:Lbn;

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    .line 190
    monitor-exit v0

    return-void

    .line 199
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    .line 191
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_4
    iget-object p2, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 193
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lbx;->j:Lbn;

    iget-object p2, p2, Lbn;->d:Landroid/os/Handler;

    iget-object v1, p0, Lbx;->B:Ljava/lang/Runnable;

    .line 195
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lbx;->j:Lbn;

    iget-object p2, p2, Lbn;->d:Landroid/os/Handler;

    iget-object v1, p0, Lbx;->B:Ljava/lang/Runnable;

    .line 196
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    invoke-virtual {p0}, Lbx;->b()V

    .line 198
    :cond_5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 191
    :catchall_0
    move-exception p2

    .line 198
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    .line 187
    :catchall_1
    move-exception p1

    .line 199
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbx;->a:Lcf;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcf;->b:Ljava/util/HashMap;

    .line 114
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments:"

    .line 116
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcf;->b:Ljava/util/HashMap;

    .line 117
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lce;

    .line 118
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    iget-object v4, v4, Lce;->b:Lba;

    .line 119
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v4, v2, p2, p3, p4}, Lba;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    .line 121
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, v1, Lcf;->a:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_2

    .line 123
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    iget-object v3, v1, Lcf;->a:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lba;

    .line 125
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    .line 126
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 128
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3}, Lba;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lbx;->t:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 130
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 131
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Lbx;->t:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba;

    .line 133
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 134
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 136
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2}, Lba;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lbx;->b:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 138
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 139
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_4

    iget-object v2, p0, Lbx;->b:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lan;

    .line 141
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 142
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 144
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Lan;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2, v0, p3}, Lan;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 147
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbx;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 149
    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 151
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge p4, v0, :cond_5

    iget-object v1, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbv;

    .line 153
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    .line 154
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 156
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 158
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    .line 160
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    .line 162
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lbx;->j:Lbn;

    .line 163
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    .line 165
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lbx;->k:Lbj;

    .line 166
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lbx;->l:Lba;

    if-eqz p2, :cond_6

    .line 167
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    .line 168
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lbx;->l:Lba;

    .line 169
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 170
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    .line 171
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lbx;->i:I

    .line 172
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 173
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lbx;->n:Z

    .line 174
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 175
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lbx;->o:Z

    .line 176
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 177
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lbx;->p:Z

    .line 178
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Lbx;->w:Z

    if-eqz p2, :cond_7

    .line 179
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    .line 180
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lbx;->w:Z

    .line 181
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 158
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method final a(Z)V
    .locals 2

    iget-object v0, p0, Lbx;->a:Lcf;

    .line 86
    invoke-virtual {v0}, Lcf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lba;->y:Lbx;

    .line 87
    invoke-virtual {v1, p1}, Lbx;->a(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Landroid/view/Menu;)Z
    .locals 6

    iget v0, p0, Lbx;->i:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbx;->a:Lcf;

    .line 102
    invoke-virtual {v0}, Lcf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lba;

    if-eqz v4, :cond_1

    iget-boolean v5, v4, Lba;->D:Z

    if-nez v5, :cond_1

    iget-boolean v5, v4, Lba;->H:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lba;->I:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    .line 103
    :cond_2
    const/4 v5, 0x0

    .line 102
    :goto_1
    iget-object v4, v4, Lba;->y:Lbx;

    .line 103
    invoke-virtual {v4, p1}, Lbx;->a(Landroid/view/Menu;)Z

    move-result v4

    or-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    iget v0, p0, Lbx;->i:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbx;->a:Lcf;

    .line 70
    invoke-virtual {v0}, Lcf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lba;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-static {v4}, Lbx;->m(Lba;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v4, Lba;->D:Z

    if-nez v6, :cond_3

    iget-boolean v6, v4, Lba;->H:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Lba;->I:Z

    if-eqz v6, :cond_1

    .line 71
    invoke-virtual {v4, p1, p2}, Lba;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v6, 0x1

    goto :goto_1

    .line 74
    :cond_1
    const/4 v6, 0x0

    .line 71
    :goto_1
    iget-object v7, v4, Lba;->y:Lbx;

    .line 72
    invoke-virtual {v7, p1, p2}, Lbx;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    or-int/2addr v6, v7

    if-eqz v6, :cond_3

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 74
    :cond_2
    nop

    :goto_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    nop

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lbx;->t:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    :goto_3
    iget-object p1, p0, Lbx;->t:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Lbx;->t:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba;

    if-eqz v2, :cond_5

    .line 77
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iput-object v2, p0, Lbx;->t:Ljava/util/ArrayList;

    return v3
.end method

.method final a(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Lbx;->i:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbx;->a:Lcf;

    .line 88
    invoke-virtual {v0}, Lcf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lba;->D:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lba;->H:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lba;->I:Z

    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {v2, p1}, Lba;->a(Landroid/view/MenuItem;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v2, v2, Lba;->y:Lbx;

    .line 90
    invoke-virtual {v2, p1}, Lbx;->a(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method final a(Lba;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lba;->w:Lbx;

    iget-object v2, v1, Lbx;->m:Lba;

    .line 386
    invoke-virtual {p1, v2}, Lba;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Lbx;->l:Lba;

    .line 387
    invoke-virtual {p0, p1}, Lbx;->a(Lba;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 8

    .line 486
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbx;->c(Z)V

    .line 487
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbx;->d(Z)V

    iget-object v1, p0, Lbx;->m:Lba;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 488
    invoke-virtual {v1}, Lba;->u()Lbx;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Lbx;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    return v0

    .line 489
    :cond_1
    :goto_0
    iget-object v3, p0, Lbx;->y:Ljava/util/ArrayList;

    iget-object v4, p0, Lbx;->z:Ljava/util/ArrayList;

    const/4 v6, -0x1

    .line 490
    move-object v2, p0

    move-object v5, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lbx;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lbx;->s:Z

    :try_start_0
    iget-object p2, p0, Lbx;->y:Ljava/util/ArrayList;

    iget-object v0, p0, Lbx;->z:Ljava/util/ArrayList;

    .line 491
    invoke-direct {p0, p2, v0}, Lbx;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    invoke-direct {p0}, Lbx;->r()V

    goto :goto_1

    .line 496
    :catchall_0
    move-exception p1

    .line 492
    invoke-direct {p0}, Lbx;->r()V

    .line 493
    throw p1

    .line 494
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lbx;->b()V

    .line 495
    invoke-direct {p0}, Lbx;->t()V

    iget-object p2, p0, Lbx;->a:Lcf;

    .line 496
    invoke-virtual {p2}, Lcf;->a()V

    return p1
.end method

.method final a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 6

    iget-object v0, p0, Lbx;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    if-nez p5, :cond_2

    .line 507
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v3

    if-gez p3, :cond_1

    return v1

    :cond_1
    iget-object p4, p0, Lbx;->b:Ljava/util/ArrayList;

    .line 508
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    .line 500
    :cond_3
    const/4 v0, -0x1

    goto :goto_4

    .line 497
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v3

    :goto_1
    if-ltz v0, :cond_7

    iget-object v4, p0, Lbx;->b:Ljava/util/ArrayList;

    .line 498
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lan;

    if-eqz p3, :cond_5

    iget-object v5, v4, Lan;->l:Ljava/lang/String;

    .line 499
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 506
    :cond_5
    if-ltz p4, :cond_6

    .line 500
    iget v4, v4, Lan;->c:I

    if-eq p4, v4, :cond_7

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 499
    :cond_7
    :goto_2
    if-gez v0, :cond_8

    return v1

    :cond_8
    if-eqz p5, :cond_b

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_b

    iget-object p5, p0, Lbx;->b:Ljava/util/ArrayList;

    .line 501
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lan;

    if-eqz p3, :cond_9

    iget-object v4, p5, Lan;->l:Ljava/lang/String;

    .line 502
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    if-ltz p4, :cond_b

    iget p5, p5, Lan;->c:I

    if-ne p4, p5, :cond_c

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 506
    :cond_b
    nop

    .line 502
    :cond_c
    :goto_4
    iget-object p3, p0, Lbx;->b:Ljava/util/ArrayList;

    .line 503
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v3

    if-ne v0, p3, :cond_d

    return v1

    :cond_d
    iget-object p3, p0, Lbx;->b:Ljava/util/ArrayList;

    .line 504
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v3

    :goto_5
    if-le p3, v0, :cond_e

    iget-object p4, p0, Lbx;->b:Ljava/util/ArrayList;

    .line 505
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    .line 509
    :cond_e
    :goto_6
    return v2
.end method

.method public final b(I)Lba;
    .locals 4

    iget-object v0, p0, Lbx;->a:Lcf;

    iget-object v1, v0, Lcf;->a:Ljava/util/ArrayList;

    .line 352
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, v0, Lcf;->a:Ljava/util/ArrayList;

    .line 353
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba;

    if-eqz v2, :cond_0

    iget v3, v2, Lba;->A:I

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcf;->b:Ljava/util/HashMap;

    .line 354
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lce;->b:Lba;

    .line 355
    iget v1, v2, Lba;->A:I

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 353
    :goto_1
    return-object v2
.end method

.method final b(Ljava/lang/String;)Lba;
    .locals 3

    iget-object v0, p0, Lbx;->a:Lcf;

    iget-object v0, v0, Lcf;->b:Ljava/util/HashMap;

    .line 361
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lce;->b:Lba;

    iget-object v2, v1, Lba;->j:Ljava/lang/String;

    .line 362
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lba;->y:Lbx;

    .line 363
    invoke-virtual {v1, p1}, Lbx;->b(Ljava/lang/String;)Lba;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 664
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 665
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbx;->e:Lsj;

    iput-boolean v2, v1, Lsj;->a:Z

    .line 666
    monitor-exit v0

    return-void

    .line 667
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbx;->e:Lsj;

    iget-object v1, p0, Lbx;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 668
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lbx;->l:Lba;

    .line 669
    invoke-virtual {p0, v1}, Lbx;->a(Lba;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lsj;->a:Z

    return-void

    :catchall_0
    move-exception v1

    .line 667
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final b(Landroid/view/Menu;)V
    .locals 3

    iget v0, p0, Lbx;->i:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbx;->a:Lcf;

    .line 91
    invoke-virtual {v0}, Lcf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lba;->D:Z

    if-nez v2, :cond_1

    iget-object v1, v1, Lba;->y:Lbx;

    .line 92
    invoke-virtual {v1, p1}, Lbx;->b(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Lba;)V
    .locals 3

    .line 53
    invoke-virtual {p1}, Lba;->E()V

    iget-object v0, p0, Lbx;->h:Lbq;

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbq;->g(Lba;Z)V

    const/4 v0, 0x0

    iput-object v0, p1, Lba;->K:Landroid/view/ViewGroup;

    iput-object v0, p1, Lba;->L:Landroid/view/View;

    iput-object v0, p1, Lba;->V:Lda;

    .line 55
    iget-object v2, p1, Lba;->W:Lv;

    invoke-virtual {v2, v0}, Lv;->a(Ljava/lang/Object;)V

    iput-boolean v1, p1, Lba;->s:Z

    return-void
.end method

.method final b(Lbv;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lbx;->j:Lbn;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbx;->p:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    return-void

    .line 223
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lbx;->d(Z)V

    iget-object p2, p0, Lbx;->y:Ljava/util/ArrayList;

    iget-object v0, p0, Lbx;->z:Ljava/util/ArrayList;

    .line 224
    invoke-interface {p1, p2, v0}, Lbv;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbx;->s:Z

    :try_start_0
    iget-object p1, p0, Lbx;->y:Ljava/util/ArrayList;

    iget-object p2, p0, Lbx;->z:Ljava/util/ArrayList;

    .line 225
    invoke-direct {p0, p1, p2}, Lbx;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-direct {p0}, Lbx;->r()V

    goto :goto_1

    .line 230
    :catchall_0
    move-exception p1

    .line 226
    invoke-direct {p0}, Lbx;->r()V

    .line 227
    throw p1

    .line 228
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lbx;->b()V

    .line 229
    invoke-direct {p0}, Lbx;->t()V

    iget-object p1, p0, Lbx;->a:Lcf;

    .line 230
    invoke-virtual {p1}, Lcf;->a()V

    return-void
.end method

.method final b(Z)V
    .locals 2

    iget-object v0, p0, Lbx;->a:Lcf;

    .line 100
    invoke-virtual {v0}, Lcf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lba;->y:Lbx;

    .line 101
    invoke-virtual {v1, p1}, Lbx;->b(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Lbx;->i:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbx;->a:Lcf;

    .line 67
    invoke-virtual {v0}, Lcf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lba;->D:Z

    if-nez v3, :cond_1

    iget-object v2, v2, Lba;->y:Lbx;

    .line 68
    invoke-virtual {v2, p1}, Lbx;->b(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method final c(Ljava/lang/String;)Lba;
    .locals 1

    iget-object v0, p0, Lbx;->a:Lcf;

    .line 351
    invoke-virtual {v0, p1}, Lcf;->c(Ljava/lang/String;)Lba;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lbx;->s:Z

    iget-object v2, p0, Lbx;->a:Lcf;

    iget-object v2, v2, Lcf;->b:Ljava/util/HashMap;

    .line 106
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lce;

    if-eqz v3, :cond_0

    iput p1, v3, Lce;->c:I

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0, p1, v1}, Lbx;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iput-boolean v1, p0, Lbx;->s:Z

    .line 108
    invoke-virtual {p0, v0}, Lbx;->c(Z)V

    return-void

    .line 107
    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lbx;->s:Z

    .line 109
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method final c(Lba;)V
    .locals 1

    iget v0, p0, Lbx;->i:I

    .line 431
    invoke-virtual {p0, p1, v0}, Lbx;->a(Lba;I)V

    return-void
.end method

.method public final c(Z)V
    .locals 6

    .line 208
    invoke-direct {p0, p1}, Lbx;->d(Z)V

    :goto_0
    iget-object p1, p0, Lbx;->y:Ljava/util/ArrayList;

    iget-object v0, p0, Lbx;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 209
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    monitor-exit v1

    goto :goto_2

    .line 221
    :cond_0
    iget-object v2, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v5, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbv;

    invoke-interface {v5, p1, v0}, Lbv;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lbx;->r:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lbx;->j:Lbn;

    iget-object p1, p1, Lbn;->d:Landroid/os/Handler;

    iget-object v0, p0, Lbx;->B:Ljava/lang/Runnable;

    .line 214
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbx;->s:Z

    :try_start_1
    iget-object p1, p0, Lbx;->y:Ljava/util/ArrayList;

    iget-object v0, p0, Lbx;->z:Ljava/util/ArrayList;

    .line 216
    invoke-direct {p0, p1, v0}, Lbx;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    invoke-direct {p0}, Lbx;->r()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lbx;->r()V

    .line 222
    throw p1

    .line 219
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lbx;->b()V

    .line 220
    invoke-direct {p0}, Lbx;->t()V

    iget-object p1, p0, Lbx;->a:Lcf;

    .line 221
    invoke-virtual {p1}, Lcf;->a()V

    return-void

    .line 217
    :catchall_1
    move-exception p1

    .line 215
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final c()Z
    .locals 2

    .line 485
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbx;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method final d(Lba;)V
    .locals 7

    iget-object v0, p0, Lbx;->a:Lcf;

    .line 388
    iget-object v1, p1, Lba;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcf;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 389
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lbx;->i:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "since it is not added to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {p0, p1}, Lbx;->c(Lba;)V

    .line 391
    iget-object v0, p1, Lba;->L:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 392
    iget-boolean v3, p1, Lba;->P:Z

    if-eqz v3, :cond_4

    iget-object v3, p1, Lba;->K:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 393
    iget v3, p1, Lba;->R:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_2

    .line 394
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iput v4, p1, Lba;->R:F

    iput-boolean v2, p1, Lba;->P:Z

    iget-object v0, p0, Lbx;->j:Lbn;

    iget-object v0, v0, Lbn;->c:Landroid/content/Context;

    .line 395
    invoke-static {v0, p1, v1}, Ley;->a(Landroid/content/Context;Lba;Z)Lbh;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, v0, Lbh;->a:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3

    .line 396
    iget-object v0, p1, Lba;->L:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 408
    :cond_3
    iget-object v3, v0, Lbh;->b:Landroid/animation/Animator;

    .line 397
    iget-object v4, p1, Lba;->L:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, v0, Lbh;->b:Landroid/animation/Animator;

    .line 398
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 399
    :cond_4
    :goto_0
    iget-boolean v0, p1, Lba;->Q:Z

    if-eqz v0, :cond_c

    .line 400
    iget-object v0, p1, Lba;->L:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbx;->j:Lbn;

    iget-object v0, v0, Lbn;->c:Landroid/content/Context;

    .line 401
    iget-boolean v3, p1, Lba;->D:Z

    xor-int/2addr v3, v1

    .line 402
    invoke-static {v0, p1, v3}, Ley;->a(Landroid/content/Context;Lba;Z)Lbh;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v3, v0, Lbh;->b:Landroid/animation/Animator;

    if-eqz v3, :cond_7

    .line 409
    iget-object v4, p1, Lba;->L:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 410
    iget-boolean v3, p1, Lba;->D:Z

    if-eqz v3, :cond_6

    .line 411
    invoke-virtual {p1}, Lba;->I()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 412
    invoke-virtual {p1, v2}, Lba;->a(Z)V

    goto :goto_1

    .line 413
    :cond_5
    iget-object v3, p1, Lba;->K:Landroid/view/ViewGroup;

    .line 414
    iget-object v4, p1, Lba;->L:Landroid/view/View;

    .line 415
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v5, v0, Lbh;->b:Landroid/animation/Animator;

    new-instance v6, Lbu;

    .line 416
    invoke-direct {v6, v3, v4, p1}, Lbu;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lba;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 417
    :cond_6
    iget-object v3, p1, Lba;->L:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :goto_1
    iget-object v0, v0, Lbh;->b:Landroid/animation/Animator;

    .line 418
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_3

    .line 417
    :cond_7
    if-eqz v0, :cond_8

    .line 403
    iget-object v3, p1, Lba;->L:Landroid/view/View;

    iget-object v4, v0, Lbh;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Lbh;->a:Landroid/view/animation/Animation;

    .line 404
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 405
    :cond_8
    iget-boolean v0, p1, Lba;->D:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lba;->I()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x8

    goto :goto_2

    .line 408
    :cond_9
    const/4 v0, 0x0

    .line 406
    :goto_2
    iget-object v3, p1, Lba;->L:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 407
    invoke-virtual {p1}, Lba;->I()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 408
    invoke-virtual {p1, v2}, Lba;->a(Z)V

    .line 419
    :cond_a
    :goto_3
    iget-boolean v0, p1, Lba;->p:Z

    if-eqz v0, :cond_b

    invoke-static {p1}, Lbx;->r(Lba;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lbx;->w:Z

    :cond_b
    iput-boolean v2, p1, Lba;->Q:Z

    .line 420
    iget-boolean p1, p1, Lba;->D:Z

    return-void

    .line 408
    :cond_c
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lbx;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbx;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final e()Landroid/os/Parcelable;
    .locals 12

    .line 580
    invoke-direct {p0}, Lbx;->s()V

    .line 581
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbx;->c(Z)V

    iput-boolean v0, p0, Lbx;->n:Z

    iget-object v1, p0, Lbx;->q:Lcb;

    iput-boolean v0, v1, Lcb;->i:Z

    iget-object v1, p0, Lbx;->a:Lcf;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcf;->b:Ljava/util/HashMap;

    .line 582
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v1, Lcf;->b:Ljava/util/HashMap;

    .line 583
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lce;

    if-eqz v3, :cond_0

    iget-object v7, v3, Lce;->b:Lba;

    new-instance v8, Lcd;

    .line 584
    invoke-direct {v8, v7}, Lcd;-><init>(Lba;)V

    iget-object v9, v3, Lce;->b:Lba;

    .line 585
    iget v10, v9, Lba;->f:I

    if-ltz v10, :cond_9

    iget-object v10, v8, Lcd;->m:Landroid/os/Bundle;

    if-nez v10, :cond_9

    new-instance v9, Landroid/os/Bundle;

    .line 587
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v10, v3, Lce;->b:Lba;

    .line 588
    invoke-virtual {v10, v9}, Lba;->c(Landroid/os/Bundle;)V

    iget-object v11, v10, Lba;->X:Lwz;

    .line 589
    invoke-virtual {v11, v9}, Lwz;->b(Landroid/os/Bundle;)V

    iget-object v10, v10, Lba;->y:Lbx;

    .line 590
    invoke-virtual {v10}, Lbx;->e()Landroid/os/Parcelable;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v11, "android:support:fragments"

    .line 591
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v10, v3, Lce;->a:Lbq;

    iget-object v11, v3, Lce;->b:Lba;

    .line 592
    invoke-virtual {v10, v11, v9, v4}, Lbq;->d(Lba;Landroid/os/Bundle;Z)V

    .line 593
    invoke-virtual {v9}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v9

    :goto_1
    iget-object v4, v3, Lce;->b:Lba;

    .line 594
    iget-object v4, v4, Lba;->L:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 595
    invoke-virtual {v3}, Lce;->m()V

    :cond_3
    iget-object v4, v3, Lce;->b:Lba;

    .line 596
    iget-object v4, v4, Lba;->h:Landroid/util/SparseArray;

    if-eqz v4, :cond_5

    if-nez v6, :cond_4

    new-instance v4, Landroid/os/Bundle;

    .line 597
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v6, v4

    :cond_4
    const-string v4, "android:view_state"

    iget-object v9, v3, Lce;->b:Lba;

    .line 598
    iget-object v9, v9, Lba;->h:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_5
    iget-object v4, v3, Lce;->b:Lba;

    .line 599
    iget-boolean v4, v4, Lba;->N:Z

    if-nez v4, :cond_7

    if-nez v6, :cond_6

    new-instance v4, Landroid/os/Bundle;

    .line 600
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v6, v4

    :cond_6
    const-string v4, "android:user_visible_hint"

    iget-object v9, v3, Lce;->b:Lba;

    .line 601
    iget-boolean v9, v9, Lba;->N:Z

    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iput-object v6, v8, Lcd;->m:Landroid/os/Bundle;

    iget-object v4, v3, Lce;->b:Lba;

    .line 602
    iget-object v4, v4, Lba;->m:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, v8, Lcd;->m:Landroid/os/Bundle;

    if-nez v4, :cond_8

    new-instance v4, Landroid/os/Bundle;

    .line 603
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v8, Lcd;->m:Landroid/os/Bundle;

    :cond_8
    iget-object v4, v8, Lcd;->m:Landroid/os/Bundle;

    const-string v6, "android:target_state"

    iget-object v9, v3, Lce;->b:Lba;

    .line 604
    iget-object v9, v9, Lba;->m:Ljava/lang/String;

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lce;->b:Lba;

    .line 605
    iget v3, v3, Lba;->n:I

    if-eqz v3, :cond_a

    iget-object v4, v8, Lcd;->m:Landroid/os/Bundle;

    const-string v6, "android:target_req_state"

    .line 606
    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 586
    :cond_9
    iget-object v3, v9, Lba;->g:Landroid/os/Bundle;

    iput-object v3, v8, Lcd;->m:Landroid/os/Bundle;

    .line 607
    :cond_a
    :goto_2
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lbx;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    .line 608
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved state of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcd;->m:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "FragmentManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 609
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v5}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    .line 610
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object v6

    :cond_d
    iget-object v0, p0, Lbx;->a:Lcf;

    iget-object v1, v0, Lcf;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v3, v0, Lcf;->a:Ljava/util/ArrayList;

    .line 611
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 612
    monitor-exit v1

    move-object v3, v6

    goto :goto_4

    .line 626
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, v0, Lcf;->a:Ljava/util/ArrayList;

    .line 613
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Lcf;->a:Ljava/util/ArrayList;

    .line 614
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lba;

    .line 615
    iget-object v8, v7, Lba;->j:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lbx;->a(I)Z

    move-result v8

    if-eqz v8, :cond_f

    new-instance v8, Ljava/lang/StringBuilder;

    .line 616
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAllState: adding fragment ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lba;->j:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "FragmentManager"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 617
    :cond_10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :goto_4
    iget-object v0, p0, Lbx;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 619
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    new-array v6, v0, [Lap;

    :goto_5
    if-ge v4, v0, :cond_12

    new-instance v1, Lap;

    iget-object v7, p0, Lbx;->b:Ljava/util/ArrayList;

    .line 620
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lan;

    invoke-direct {v1, v7}, Lap;-><init>(Lan;)V

    aput-object v1, v6, v4

    invoke-static {v5}, Lbx;->a(I)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    .line 621
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveAllState: adding back stack #"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lbx;->b:Ljava/util/ArrayList;

    .line 622
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_12
    goto :goto_6

    .line 626
    :cond_13
    nop

    .line 621
    :goto_6
    new-instance v0, Lbz;

    .line 623
    invoke-direct {v0}, Lbz;-><init>()V

    iput-object v2, v0, Lbz;->a:Ljava/util/ArrayList;

    iput-object v3, v0, Lbz;->b:Ljava/util/ArrayList;

    iput-object v6, v0, Lbz;->c:[Lap;

    iget-object v1, p0, Lbx;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 624
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Lbz;->d:I

    iget-object v1, p0, Lbx;->m:Lba;

    if-eqz v1, :cond_14

    iget-object v1, v1, Lba;->j:Ljava/lang/String;

    iput-object v1, v0, Lbz;->e:Ljava/lang/String;

    :cond_14
    iget-object v1, v0, Lbz;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lbx;->u:Lj$/util/concurrent/ConcurrentHashMap;

    .line 625
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lbz;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lbx;->u:Lj$/util/concurrent/ConcurrentHashMap;

    .line 626
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 617
    :catchall_0
    move-exception v0

    .line 618
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method final e(Lba;)Lce;
    .locals 3

    iget-object v0, p0, Lbx;->a:Lcf;

    .line 50
    iget-object v1, p1, Lba;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcf;->b(Ljava/lang/String;)Lce;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lce;

    iget-object v1, p0, Lbx;->h:Lbq;

    iget-object v2, p0, Lbx;->a:Lcf;

    .line 51
    invoke-direct {v0, v1, v2, p1}, Lce;-><init>(Lbq;Lcf;Lba;)V

    iget-object p1, p0, Lbx;->j:Lbn;

    iget-object p1, p1, Lbn;->c:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lce;->a(Ljava/lang/ClassLoader;)V

    iget p1, p0, Lbx;->i:I

    iput p1, v0, Lce;->c:I

    return-object v0
.end method

.method final f()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbx;->n:Z

    iput-boolean v0, p0, Lbx;->o:Z

    iget-object v1, p0, Lbx;->q:Lcb;

    iput-boolean v0, v1, Lcb;->i:Z

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbx;->c(I)V

    return-void
.end method

.method final f(Lba;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lbx;->e(Lba;)Lce;

    move-result-object v0

    iget-object v1, p0, Lbx;->a:Lcf;

    .line 15
    invoke-virtual {v1, v0}, Lcf;->a(Lce;)V

    .line 16
    iget-boolean v0, p1, Lba;->E:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lbx;->a:Lcf;

    .line 17
    invoke-virtual {v0, p1}, Lcf;->a(Lba;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lba;->q:Z

    .line 18
    iget-object v1, p1, Lba;->L:Landroid/view/View;

    if-nez v1, :cond_1

    iput-boolean v0, p1, Lba;->Q:Z

    .line 19
    :cond_1
    invoke-static {p1}, Lbx;->r(Lba;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbx;->w:Z

    :cond_2
    return-void
.end method

.method final g()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbx;->n:Z

    iput-boolean v0, p0, Lbx;->o:Z

    iget-object v1, p0, Lbx;->q:Lcb;

    iput-boolean v0, v1, Lcb;->i:Z

    .line 63
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lbx;->c(I)V

    return-void
.end method

.method final g(Lba;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 510
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lba;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    invoke-virtual {p1}, Lba;->o()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 512
    iget-boolean v2, p1, Lba;->E:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 515
    :cond_1
    return-void

    .line 512
    :cond_2
    :goto_0
    iget-object v0, p0, Lbx;->a:Lcf;

    .line 513
    invoke-virtual {v0, p1}, Lcf;->b(Lba;)V

    .line 514
    invoke-static {p1}, Lbx;->r(Lba;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lbx;->w:Z

    :cond_3
    iput-boolean v1, p1, Lba;->q:Z

    .line 515
    invoke-direct {p0, p1}, Lbx;->p(Lba;)V

    return-void
.end method

.method final h()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbx;->n:Z

    iput-boolean v0, p0, Lbx;->o:Z

    iget-object v1, p0, Lbx;->q:Lcb;

    iput-boolean v0, v1, Lcb;->i:Z

    .line 105
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lbx;->c(I)V

    return-void
.end method

.method final h(Lba;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 375
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-boolean v0, p1, Lba;->D:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lba;->D:Z

    .line 377
    iget-boolean v1, p1, Lba;->Q:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lba;->Q:Z

    .line 378
    invoke-direct {p0, p1}, Lbx;->p(Lba;)V

    :cond_1
    return-void
.end method

.method final i()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbx;->n:Z

    iput-boolean v0, p0, Lbx;->o:Z

    iget-object v1, p0, Lbx;->q:Lcb;

    iput-boolean v0, v1, Lcb;->i:Z

    .line 104
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lbx;->c(I)V

    return-void
.end method

.method final i(Lba;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-boolean v1, p1, Lba;->E:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Lba;->E:Z

    .line 58
    iget-boolean v3, p1, Lba;->p:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lbx;->a:Lcf;

    .line 60
    invoke-virtual {v0, p1}, Lcf;->b(Lba;)V

    .line 61
    invoke-static {p1}, Lbx;->r(Lba;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lbx;->w:Z

    .line 62
    :cond_2
    invoke-direct {p0, p1}, Lbx;->p(Lba;)V

    :cond_3
    return-void
.end method

.method final j()V
    .locals 1

    .line 99
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lbx;->c(I)V

    return-void
.end method

.method final j(Lba;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-boolean v1, p1, Lba;->E:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Lba;->E:Z

    .line 36
    iget-boolean v1, p1, Lba;->p:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lbx;->a:Lcf;

    .line 37
    invoke-virtual {v1, p1}, Lcf;->a(Lba;)V

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    invoke-static {p1}, Lbx;->r(Lba;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbx;->w:Z

    :cond_2
    return-void
.end method

.method final k()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbx;->o:Z

    iget-object v1, p0, Lbx;->q:Lcb;

    iput-boolean v0, v1, Lcb;->i:Z

    .line 110
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lbx;->c(I)V

    return-void
.end method

.method final k(Lba;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p1, Lba;->j:Ljava/lang/String;

    .line 632
    invoke-virtual {p0, v0}, Lbx;->c(Ljava/lang/String;)Lba;

    move-result-object v0

    invoke-virtual {p1, v0}, Lba;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lba;->x:Lbn;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lba;->w:Lbx;

    if-ne v0, p0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 635
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lbx;->m:Lba;

    iput-object p1, p0, Lbx;->m:Lba;

    .line 633
    invoke-virtual {p0, v0}, Lbx;->l(Lba;)V

    iget-object p1, p0, Lbx;->m:Lba;

    .line 634
    invoke-virtual {p0, p1}, Lbx;->l(Lba;)V

    return-void
.end method

.method final l()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbx;->p:Z

    .line 78
    invoke-virtual {p0, v0}, Lbx;->c(Z)V

    .line 79
    invoke-direct {p0}, Lbx;->s()V

    .line 80
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lbx;->c(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbx;->j:Lbn;

    iput-object v0, p0, Lbx;->k:Lbj;

    iput-object v0, p0, Lbx;->l:Lba;

    iget-object v1, p0, Lbx;->d:Lsl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbx;->e:Lsj;

    iget-object v1, v1, Lsj;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsf;

    .line 82
    invoke-interface {v2}, Lsf;->a()V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lbx;->d:Lsl;

    :cond_1
    return-void
.end method

.method public final l(Lba;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lba;->j:Ljava/lang/String;

    .line 93
    invoke-virtual {p0, v0}, Lbx;->c(Ljava/lang/String;)Lba;

    move-result-object v0

    invoke-virtual {p1, v0}, Lba;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lba;->w:Lbx;

    .line 94
    invoke-virtual {v0, p1}, Lbx;->a(Lba;)Z

    move-result v0

    iget-object v1, p1, Lba;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 96
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lba;->o:Ljava/lang/Boolean;

    iget-object p1, p1, Lba;->y:Lbx;

    .line 97
    invoke-virtual {p1}, Lbx;->b()V

    iget-object v0, p1, Lbx;->m:Lba;

    .line 98
    invoke-virtual {p1, v0}, Lbx;->l(Lba;)V

    :cond_1
    return-void
.end method

.method final m()V
    .locals 2

    iget-object v0, p0, Lbx;->a:Lcf;

    .line 83
    invoke-virtual {v0}, Lcf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba;

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Lba;->onLowMemory()V

    iget-object v1, v1, Lba;->y:Lbx;

    .line 85
    invoke-virtual {v1}, Lbx;->m()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final n()Lbm;
    .locals 1

    iget-object v0, p0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lba;->w:Lbx;

    .line 370
    invoke-virtual {v0}, Lbx;->n()Lbm;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lbx;->v:Lbm;

    return-object v0
.end method

.method public noteStateNotSaved()V
    .locals 2

    iget-object v0, p0, Lbx;->j:Lbn;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbx;->n:Z

    iput-boolean v0, p0, Lbx;->o:Z

    iget-object v1, p0, Lbx;->q:Lcb;

    iput-boolean v0, v1, Lcb;->i:Z

    iget-object v0, p0, Lbx;->a:Lcf;

    .line 483
    invoke-virtual {v0}, Lcf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lba;->y:Lbx;

    .line 484
    invoke-virtual {v1}, Lbx;->noteStateNotSaved()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final o()Lec;
    .locals 1

    iget-object v0, p0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lba;->w:Lbx;

    .line 371
    invoke-virtual {v0}, Lbx;->o()Lec;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lbx;->D:Lec;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    .line 647
    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 648
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbx;->l:Lba;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 652
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbx;->l:Lba;

    .line 654
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 663
    :cond_0
    iget-object v1, p0, Lbx;->j:Lbn;

    if-eqz v1, :cond_1

    .line 656
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 657
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbx;->j:Lbn;

    .line 659
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    nop

    .line 661
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :goto_0
    nop

    .line 662
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
