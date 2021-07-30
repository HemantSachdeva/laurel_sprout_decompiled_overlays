.class final synthetic Lagi;
.super Ljava/lang/Object;

# interfaces
.implements Lajv;


# instance fields
.field private final a:Lagm;

.field private final b:Ldac;


# direct methods
.method public constructor <init>(Lagm;Ldac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lagi;->a:Lagm;

    iput-object p2, p0, Lagi;->b:Ldac;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lagi;->a:Lagm;

    iget-object v2, v0, Lagi;->b:Ldac;

    move-object/from16 v3, p1

    check-cast v3, Ljava/util/List;

    iget-object v4, v1, Lagm;->j:Lacw;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "Fetched contacts backup info."

    invoke-virtual {v4, v7, v6}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lj$/util/Collection$$Dispatch;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lagl;

    invoke-direct {v4, v1}, Lagl;-><init>(Lagm;)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbnd;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lbnd;->a()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v1, Lagm;->l:Lanp;

    invoke-virtual {v7}, Lanp;->a()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v3}, Lbnd;->a()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v10, v9, :cond_4

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbnp;

    iget-object v12, v11, Lbnp;->a:Ljava/lang/String;

    const-string v13, "com.google"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v11, v11, Lbnp;->b:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v15, v11

    goto :goto_1

    :cond_1
    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-static {v12}, Lanq;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v11, Lbnp;->b:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int v17, v17, v11

    goto :goto_1

    :cond_2
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v11, Lbnp;->b:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int v16, v16, v11

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    new-instance v7, Lahe;

    iget-object v12, v1, Lagm;->n:Ljava/lang/String;

    iget-object v13, v3, Lbnd;->a:Ljava/lang/String;

    iget-object v14, v3, Lbnd;->c:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, [Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, [Ljava/lang/String;

    move-object v11, v7

    invoke-direct/range {v11 .. v19}, Lahe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v3, v1, Lagm;->j:Lacw;

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "Cannot find contacts backup for the given device."

    invoke-virtual {v3, v6, v4}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lagm;->f()Lahe;

    move-result-object v7

    :goto_3
    iget-object v1, v1, Lagm;->m:Lacy;

    sget-object v3, Laxl;->c:Laxl;

    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v4

    sget-object v6, Laxu;->g:Laxu;

    invoke-virtual {v6}, Ldkd;->g()Ldjy;

    move-result-object v6

    iget-boolean v8, v6, Ldjy;->b:Z

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v5, v6, Ldjy;->b:Z

    :cond_6
    iget-object v8, v6, Ldjy;->a:Ldkd;

    check-cast v8, Laxu;

    iget v3, v3, Laxl;->d:I

    iput v3, v8, Laxu;->f:I

    iget v3, v8, Laxu;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v8, Laxu;->a:I

    iget v9, v7, Lahe;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v8, Laxu;->a:I

    iput v9, v8, Laxu;->b:I

    iget v9, v7, Lahe;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v8, Laxu;->a:I

    iput v9, v8, Laxu;->c:I

    iget v9, v7, Lahe;->c:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v8, Laxu;->a:I

    iput v9, v8, Laxu;->d:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v8, Laxu;->a:I

    move/from16 v3, p2

    iput v3, v8, Laxu;->e:I

    iget-boolean v3, v4, Ldjy;->b:Z

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v5, v4, Ldjy;->b:Z

    :cond_7
    iget-object v3, v4, Ldjy;->a:Ldkd;

    check-cast v3, Lavi;

    invoke-virtual {v6}, Ldjy;->f()Ldkd;

    move-result-object v5

    check-cast v5, Laxu;

    sget-object v6, Lavi;->q:Lavi;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v3, Lavi;->j:Laxu;

    iget v5, v3, Lavi;->a:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iput v5, v3, Lavi;->a:I

    sget-object v3, Lavh;->w:Lavh;

    invoke-virtual {v1, v4, v3}, Lacy;->a(Ldjy;Lavh;)V

    invoke-virtual {v2, v7}, Ldac;->a(Ljava/lang/Object;)Z

    return-void
.end method
