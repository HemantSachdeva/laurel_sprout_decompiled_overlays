.class public final Lcnr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static d:Lcnr;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcnr;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcnr;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcnr;->c:Z

    return-void
.end method

.method public static a()Lcnr;
    .locals 2

    sget-object v0, Lcnr;->d:Lcnr;

    if-nez v0, :cond_0

    new-instance v0, Lcnq;

    .line 1
    invoke-direct {v0}, Lcnq;-><init>()V

    const v1, 0x7f1201c0

    iput v1, v0, Lcnq;->a:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcnq;->b:Z

    .line 2
    invoke-virtual {v0}, Lcnq;->a()Lcnr;

    move-result-object v0

    sput-object v0, Lcnr;->d:Lcnr;

    :cond_0
    sget-object v0, Lcnr;->d:Lcnr;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)I
    .locals 18

    .line 3
    move-object/from16 v0, p0

    const-string v1, "theme"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static/range {p1 .. p1}, Lcne;->a(Landroid/content/Intent;)Z

    move-result v2

    iget-boolean v3, v0, Lcnr;->c:Z

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x2

    const-string v11, "glif_light"

    const-string v12, "material"

    const-string v13, "glif_v3"

    const-string v14, "glif_v2"

    const-string v15, "glif"

    const-string v4, "glif_v3_light"

    const-string v5, "material_light"

    const-string v6, "glif_v2_light"

    const/16 v16, -0x1

    const/16 v17, 0x0

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_6
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_7
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :goto_0
    const/4 v4, -0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const v17, 0x7f1201c9

    goto/16 :goto_4

    :pswitch_1
    const v17, 0x7f1201c0

    goto/16 :goto_4

    :pswitch_2
    const v17, 0x7f1201c3

    goto/16 :goto_4

    :pswitch_3
    const v17, 0x7f1201c6

    goto/16 :goto_4

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :cond_2
    goto :goto_2

    :sswitch_8
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x4

    goto :goto_3

    :sswitch_9
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x7

    goto :goto_3

    :sswitch_a
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :sswitch_b
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x3

    goto :goto_3

    :sswitch_c
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x5

    goto :goto_3

    :sswitch_d
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :sswitch_e
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x6

    goto :goto_3

    :sswitch_f
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    goto :goto_3

    :goto_2
    const/4 v4, -0x1

    :goto_3
    packed-switch v4, :pswitch_data_1

    goto :goto_4

    :pswitch_4
    const v17, 0x7f1201c8

    goto :goto_4

    :pswitch_5
    const v17, 0x7f1201ca

    goto :goto_4

    :pswitch_6
    const v17, 0x7f1201bf

    goto :goto_4

    :pswitch_7
    const v17, 0x7f1201c1

    goto :goto_4

    :pswitch_8
    const v17, 0x7f1201c2

    goto :goto_4

    :pswitch_9
    const v17, 0x7f1201c4

    goto :goto_4

    :pswitch_a
    const v17, 0x7f1201c5

    goto :goto_4

    :pswitch_b
    const v17, 0x7f1201c7

    :cond_3
    :goto_4
    if-nez v17, :cond_4

    iget v1, v0, Lcnr;->a:I

    return v1

    :cond_4
    return v17

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_7
        -0x4bb9bc02 -> :sswitch_6
        -0x49f8f44f -> :sswitch_5
        0x3074c2 -> :sswitch_4
        0x6e4af19 -> :sswitch_3
        0x6e4af1a -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7edf2f90 -> :sswitch_f
        -0x4bb9bc02 -> :sswitch_e
        -0x49f8f44f -> :sswitch_d
        0x3074c2 -> :sswitch_c
        0x6e4af19 -> :sswitch_b
        0x6e4af1a -> :sswitch_a
        0x11d36527 -> :sswitch_9
        0x2dc1f359 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
