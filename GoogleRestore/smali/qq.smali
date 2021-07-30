.class public final Lqq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field e:I

.field f:Lqp;

.field public final synthetic g:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    iput-object p1, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqq;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lqq;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqq;->c:Ljava/util/ArrayList;

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lqq;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lqq;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 17
    invoke-virtual {v0}, Lqx;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 19
    iget-object v0, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v1, v1, Lqx;->g:Z

    if-nez v1, :cond_0

    return p1

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 20
    invoke-virtual {v0, p1}, Lmi;->b(I)I

    move-result p1

    return p1

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 19
    invoke-virtual {p1}, Lqx;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(IJ)Lqz;
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    if-ltz v0, :cond_41

    iget-object v2, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 79
    invoke-virtual {v2}, Lqx;->a()I

    move-result v2

    if-ge v0, v2, :cond_41

    .line 82
    iget-object v2, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v2, v2, Lqx;->g:Z

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    iget-object v2, v1, Lqq;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object v8, v6

    goto :goto_2

    .line 108
    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_2

    iget-object v8, v1, Lqq;->b:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lqz;

    .line 85
    invoke-virtual {v8}, Lqz;->g()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lqz;->c()I

    move-result v9

    if-ne v9, v0, :cond_1

    .line 86
    invoke-virtual {v8, v3}, Lqz;->b(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iget-boolean v8, v8, Lqc;->b:Z

    if-eqz v8, :cond_4

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 87
    invoke-virtual {v7, v0}, Lmi;->b(I)I

    move-result v7

    if-lez v7, :cond_4

    iget-object v8, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 88
    invoke-virtual {v8}, Lqc;->a()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 89
    invoke-virtual {v8, v7}, Lqc;->b(I)J

    move-result-wide v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_4

    iget-object v10, v1, Lqq;->b:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lqz;

    .line 91
    invoke-virtual {v10}, Lqz;->g()Z

    move-result v11

    if-nez v11, :cond_3

    iget-wide v11, v10, Lqz;->e:J

    cmp-long v13, v11, v7

    if-nez v13, :cond_3

    .line 92
    invoke-virtual {v10, v3}, Lqz;->b(I)V

    move-object v8, v10

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move-object v8, v6

    .line 83
    :goto_2
    if-eqz v8, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    .line 108
    :cond_5
    const/4 v2, 0x0

    .line 83
    :goto_3
    goto :goto_4

    .line 166
    :cond_6
    move-object v8, v6

    const/4 v2, 0x0

    .line 83
    :goto_4
    const/4 v7, -0x1

    if-nez v8, :cond_1b

    iget-object v8, v1, Lqq;->a:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_9

    iget-object v10, v1, Lqq;->a:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lqz;

    .line 95
    invoke-virtual {v10}, Lqz;->g()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v10}, Lqz;->c()I

    move-result v11

    if-ne v11, v0, :cond_8

    .line 96
    invoke-virtual {v10}, Lqz;->j()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v11, v11, Lqx;->g:Z

    if-nez v11, :cond_7

    invoke-virtual {v10}, Lqz;->m()Z

    move-result v11

    if-nez v11, :cond_8

    .line 97
    :cond_7
    invoke-virtual {v10, v3}, Lqz;->b(I)V

    move-object v8, v10

    goto/16 :goto_9

    .line 126
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    iget-object v8, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    iget-object v9, v8, Lnu;->b:Ljava/util/List;

    .line 98
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_b

    iget-object v11, v8, Lnu;->b:Ljava/util/List;

    .line 99
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 100
    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v12

    .line 101
    invoke-virtual {v12}, Lqz;->c()I

    move-result v13

    if-ne v13, v0, :cond_a

    .line 102
    invoke-virtual {v12}, Lqz;->j()Z

    move-result v13

    if-nez v13, :cond_a

    .line 103
    invoke-virtual {v12}, Lqz;->m()Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_7

    .line 108
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    move-object v11, v6

    .line 103
    :goto_7
    if-eqz v11, :cond_f

    .line 109
    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v8

    iget-object v9, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    iget-object v10, v9, Lnu;->c:Lqa;

    .line 110
    invoke-virtual {v10, v11}, Lqa;->a(Landroid/view/View;)I

    move-result v10

    if-ltz v10, :cond_e

    .line 111
    iget-object v12, v9, Lnu;->a:Lnt;

    .line 112
    invoke-virtual {v12, v10}, Lnt;->c(I)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 113
    iget-object v12, v9, Lnu;->a:Lnt;

    .line 114
    invoke-virtual {v12, v10}, Lnt;->b(I)V

    .line 115
    invoke-virtual {v9, v11}, Lnu;->d(Landroid/view/View;)V

    iget-object v9, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 116
    invoke-virtual {v9, v11}, Lnu;->b(Landroid/view/View;)I

    move-result v9

    if-eq v9, v7, :cond_c

    .line 118
    iget-object v10, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    .line 119
    invoke-virtual {v10, v9}, Lnu;->d(I)V

    .line 120
    invoke-virtual {v1, v11}, Lqq;->c(Landroid/view/View;)V

    const/16 v9, 0x2020

    .line 121
    invoke-virtual {v8, v9}, Lqz;->b(I)V

    goto/16 :goto_9

    .line 116
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 118
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_f
    iget-object v8, v1, Lqq;->c:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_11

    iget-object v10, v1, Lqq;->c:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lqz;

    .line 106
    invoke-virtual {v10}, Lqz;->j()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v10}, Lqz;->c()I

    move-result v11

    if-ne v11, v0, :cond_10

    .line 107
    invoke-virtual {v10}, Lqz;->o()Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v8, v1, Lqq;->c:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v8, v10

    goto :goto_9

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_11
    move-object v8, v6

    .line 97
    :goto_9
    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Lqz;->m()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v9, v9, Lqx;->g:Z

    if-nez v9, :cond_12

    goto :goto_a

    .line 130
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_d

    :cond_13
    iget v9, v8, Lqz;->c:I

    if-ltz v9, :cond_19

    iget-object v10, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 122
    invoke-virtual {v10}, Lqc;->a()I

    move-result v10

    if-ge v9, v10, :cond_19

    .line 124
    iget-object v9, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v9, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v10, v10, Lqx;->g:Z

    if-nez v10, :cond_14

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iget v10, v8, Lqz;->c:I

    .line 125
    invoke-virtual {v9, v10}, Lqc;->a(I)I

    move-result v9

    iget v10, v8, Lqz;->f:I

    if-ne v9, v10, :cond_15

    :cond_14
    iget-object v9, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iget-boolean v10, v9, Lqc;->b:Z

    if-eqz v10, :cond_18

    iget-wide v10, v8, Lqz;->e:J

    iget v12, v8, Lqz;->c:I

    .line 126
    invoke-virtual {v9, v12}, Lqc;->b(I)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_15

    goto :goto_c

    .line 97
    :cond_15
    :goto_a
    const/4 v9, 0x4

    .line 127
    invoke-virtual {v8, v9}, Lqz;->b(I)V

    invoke-virtual {v8}, Lqz;->e()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v8, Lqz;->a:Landroid/view/View;

    .line 128
    invoke-virtual {v9, v10, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 129
    invoke-virtual {v8}, Lqz;->f()V

    goto :goto_b

    .line 151
    :cond_16
    invoke-virtual {v8}, Lqz;->g()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 130
    invoke-virtual {v8}, Lqz;->h()V

    .line 131
    :cond_17
    :goto_b
    invoke-virtual {v1, v8}, Lqq;->a(Lqz;)V

    move-object v8, v6

    goto :goto_d

    .line 126
    :cond_18
    :goto_c
    const/4 v2, 0x1

    goto :goto_d

    .line 122
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 124
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1a
    goto :goto_d

    .line 108
    :cond_1b
    nop

    .line 131
    :goto_d
    const-wide v11, 0x7fffffffffffffffL

    if-nez v8, :cond_2f

    iget-object v13, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 132
    invoke-virtual {v13, v0}, Lmi;->b(I)I

    move-result v13

    if-ltz v13, :cond_2e

    iget-object v14, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v14, v14, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 133
    invoke-virtual {v14}, Lqc;->a()I

    move-result v14

    if-ge v13, v14, :cond_2e

    .line 135
    iget-object v14, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v14, v14, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 136
    invoke-virtual {v14, v13}, Lqc;->a(I)I

    move-result v14

    iget-object v15, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iget-boolean v5, v15, Lqc;->b:Z

    if-eqz v5, :cond_24

    .line 137
    invoke-virtual {v15, v13}, Lqc;->b(I)J

    move-result-wide v16

    iget-object v5, v1, Lqq;->a:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v7

    :goto_e
    if-ltz v5, :cond_1f

    iget-object v8, v1, Lqq;->a:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lqz;

    iget-wide v9, v8, Lqz;->e:J

    cmp-long v15, v9, v16

    if-nez v15, :cond_1e

    .line 140
    invoke-virtual {v8}, Lqz;->g()Z

    move-result v9

    if-nez v9, :cond_1e

    iget v9, v8, Lqz;->f:I

    if-ne v14, v9, :cond_1d

    .line 144
    invoke-virtual {v8, v3}, Lqz;->b(I)V

    .line 145
    invoke-virtual {v8}, Lqz;->m()Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v3, v3, Lqx;->g:Z

    if-nez v3, :cond_1c

    const/4 v3, 0x2

    const/16 v5, 0xe

    .line 146
    invoke-virtual {v8, v3, v5}, Lqz;->a(II)V

    goto :goto_11

    .line 203
    :cond_1c
    goto :goto_11

    :cond_1d
    iget-object v9, v1, Lqq;->a:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 142
    iget-object v10, v8, Lqz;->a:Landroid/view/View;

    invoke-virtual {v9, v10, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 143
    iget-object v8, v8, Lqz;->a:Landroid/view/View;

    invoke-virtual {v1, v8}, Lqq;->b(Landroid/view/View;)V

    :cond_1e
    add-int/lit8 v5, v5, -0x1

    goto :goto_e

    :cond_1f
    iget-object v3, v1, Lqq;->c:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v7

    :goto_f
    if-ltz v3, :cond_22

    iget-object v5, v1, Lqq;->c:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqz;

    iget-wide v8, v5, Lqz;->e:J

    cmp-long v10, v8, v16

    if-nez v10, :cond_21

    .line 149
    invoke-virtual {v5}, Lqz;->o()Z

    move-result v8

    if-nez v8, :cond_21

    iget v8, v5, Lqz;->f:I

    if-ne v14, v8, :cond_20

    iget-object v8, v1, Lqq;->c:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v8, v5

    goto :goto_11

    .line 151
    :cond_20
    invoke-virtual {v1, v3}, Lqq;->b(I)V

    goto :goto_10

    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    :cond_22
    nop

    :goto_10
    move-object v8, v6

    .line 146
    :goto_11
    if-eqz v8, :cond_23

    iput v13, v8, Lqz;->c:I

    const/4 v2, 0x1

    goto :goto_12

    .line 203
    :cond_23
    goto :goto_12

    .line 151
    :cond_24
    nop

    .line 146
    :goto_12
    if-nez v8, :cond_28

    .line 152
    invoke-virtual/range {p0 .. p0}, Lqq;->d()Lqp;

    move-result-object v3

    iget-object v3, v3, Lqp;->a:Landroid/util/SparseArray;

    .line 153
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqo;

    if-eqz v3, :cond_26

    iget-object v5, v3, Lqo;->a:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_26

    iget-object v3, v3, Lqo;->a:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v7

    :goto_13
    if-ltz v5, :cond_26

    .line 156
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lqz;

    invoke-virtual {v7}, Lqz;->o()Z

    move-result v7

    if-nez v7, :cond_25

    .line 157
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqz;

    goto :goto_14

    .line 203
    :cond_25
    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    :cond_26
    move-object v3, v6

    .line 157
    :goto_14
    if-eqz v3, :cond_27

    .line 158
    invoke-virtual {v3}, Lqz;->r()V

    :cond_27
    move-object v8, v3

    :cond_28
    if-nez v8, :cond_2d

    .line 159
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    cmp-long v3, p2, v11

    if-eqz v3, :cond_2a

    iget-object v3, v1, Lqq;->f:Lqp;

    .line 160
    invoke-virtual {v3, v14}, Lqp;->a(I)Lqo;

    move-result-object v3

    iget-wide v9, v3, Lqo;->c:J

    const-wide/16 v16, 0x0

    cmp-long v3, v9, v16

    if-eqz v3, :cond_2a

    add-long/2addr v9, v7

    cmp-long v3, v9, p2

    if-gez v3, :cond_29

    goto :goto_15

    .line 203
    :cond_29
    return-object v6

    .line 160
    :cond_2a
    :goto_15
    iget-object v3, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    :try_start_0
    const-string v9, "RV CreateView"

    .line 161
    invoke-static {v9}, Lui;->a(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v5, v3, v14}, Lqc;->a(Landroid/view/ViewGroup;I)Lqz;

    move-result-object v3

    .line 163
    iget-object v5, v3, Lqz;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_2c

    .line 164
    iput v14, v3, Lqz;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-static {}, Lui;->a()V

    .line 167
    iget-object v5, v3, Lqz;->a:Landroid/view/View;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_2b

    new-instance v9, Ljava/lang/ref/WeakReference;

    .line 168
    invoke-direct {v9, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, v3, Lqz;->b:Ljava/lang/ref/WeakReference;

    .line 169
    :cond_2b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-object v5, v1, Lqq;->f:Lqp;

    .line 170
    invoke-virtual {v5, v14}, Lqp;->a(I)Lqo;

    move-result-object v5

    iget-wide v13, v5, Lqo;->c:J

    sub-long/2addr v9, v7

    invoke-static {v13, v14, v9, v10}, Lqp;->a(JJ)J

    move-result-wide v7

    iput-wide v7, v5, Lqo;->c:J

    move-object v8, v3

    goto :goto_16

    .line 163
    :cond_2c
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 164
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :catchall_0
    move-exception v0

    .line 165
    invoke-static {}, Lui;->a()V

    .line 166
    throw v0

    .line 203
    :cond_2d
    goto :goto_16

    .line 133
    :cond_2e
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistency detected. Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(offset:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ").state:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 135
    invoke-virtual {v0}, Lqx;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_2f
    nop

    .line 170
    :goto_16
    if-eqz v2, :cond_30

    iget-object v3, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v3, v3, Lqx;->g:Z

    if-nez v3, :cond_30

    .line 171
    const/16 v3, 0x2000

    invoke-virtual {v8, v3}, Lqz;->a(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 172
    invoke-virtual {v8, v4, v3}, Lqz;->a(II)V

    iget-object v3, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 173
    iget-boolean v3, v3, Lqx;->j:Z

    if-eqz v3, :cond_30

    .line 174
    invoke-static {v8}, Lqg;->b(Lqz;)V

    .line 175
    invoke-virtual {v8}, Lqz;->q()Ljava/util/List;

    .line 176
    invoke-static {v8}, Lqg;->c(Lqz;)Lqf;

    move-result-object v3

    iget-object v5, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 177
    invoke-virtual {v5, v8, v3}, Landroid/support/v7/widget/RecyclerView;->a(Lqz;Lqf;)V

    :cond_30
    iget-object v3, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v3, v3, Lqx;->g:Z

    if-eqz v3, :cond_31

    .line 178
    invoke-virtual {v8}, Lqz;->l()Z

    move-result v3

    if-eqz v3, :cond_31

    iput v0, v8, Lqz;->g:I

    const/4 v0, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1a

    .line 179
    :cond_31
    invoke-virtual {v8}, Lqz;->l()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {v8}, Lqz;->k()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {v8}, Lqz;->j()Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_17

    .line 203
    :cond_32
    const/4 v0, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1a

    .line 179
    :cond_33
    :goto_17
    iget-object v3, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 180
    invoke-virtual {v3, v0}, Lmi;->b(I)I

    move-result v3

    iput-object v6, v8, Lqz;->p:Lqc;

    iget-object v5, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iput-object v5, v8, Lqz;->o:Landroid/support/v7/widget/RecyclerView;

    iget v5, v8, Lqz;->f:I

    .line 181
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    cmp-long v9, p2, v11

    if-eqz v9, :cond_34

    iget-object v9, v1, Lqq;->f:Lqp;

    .line 182
    invoke-virtual {v9, v5}, Lqp;->a(I)Lqo;

    move-result-object v5

    iget-wide v9, v5, Lqo;->d:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-eqz v5, :cond_34

    add-long/2addr v9, v6

    cmp-long v5, v9, p2

    if-gez v5, :cond_32

    :cond_34
    iget-object v5, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 183
    iget-object v9, v8, Lqz;->p:Lqc;

    if-nez v9, :cond_36

    iput v3, v8, Lqz;->c:I

    iget-boolean v10, v5, Lqc;->b:Z

    if-eqz v10, :cond_35

    .line 184
    invoke-virtual {v5, v3}, Lqc;->b(I)J

    move-result-wide v10

    iput-wide v10, v8, Lqz;->e:J

    :cond_35
    const/16 v10, 0x207

    .line 185
    const/4 v11, 0x1

    invoke-virtual {v8, v11, v10}, Lqz;->a(II)V

    .line 186
    const-string v10, "RV OnBindView"

    invoke-static {v10}, Lui;->a(Ljava/lang/String;)V

    :cond_36
    iput-object v5, v8, Lqz;->p:Lqc;

    .line 187
    invoke-virtual {v8}, Lqz;->q()Ljava/util/List;

    .line 188
    invoke-virtual {v5, v8, v3}, Lqc;->a(Lqz;I)V

    if-nez v9, :cond_38

    .line 189
    invoke-virtual {v8}, Lqz;->p()V

    .line 190
    iget-object v3, v8, Lqz;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 191
    instance-of v5, v3, Lql;

    if-eqz v5, :cond_37

    .line 192
    check-cast v3, Lql;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lql;->e:Z

    .line 193
    :cond_37
    invoke-static {}, Lui;->a()V

    .line 194
    :cond_38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-object v3, v1, Lqq;->f:Lqp;

    iget v5, v8, Lqz;->f:I

    .line 195
    invoke-virtual {v3, v5}, Lqp;->a(I)Lqo;

    move-result-object v3

    iget-wide v11, v3, Lqo;->d:J

    sub-long/2addr v9, v6

    invoke-static {v11, v12, v9, v10}, Lqp;->a(JJ)J

    move-result-wide v5

    iput-wide v5, v3, Lqo;->d:J

    iget-object v3, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 196
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->m()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 197
    iget-object v3, v8, Lqz;->a:Landroid/view/View;

    .line 198
    invoke-static {v3}, Lge;->e(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_39

    .line 199
    const/4 v11, 0x1

    invoke-static {v3, v11}, Lge;->a(Landroid/view/View;I)V

    goto :goto_18

    .line 198
    :cond_39
    const/4 v11, 0x1

    .line 199
    :goto_18
    iget-object v5, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->K:Lrb;

    if-nez v5, :cond_3a

    goto :goto_19

    :cond_3a
    iget-object v5, v5, Lrb;->c:Lra;

    .line 200
    instance-of v6, v5, Lra;

    if-eqz v6, :cond_3b

    .line 201
    invoke-static {v3}, Lge;->b(Landroid/view/View;)Lfl;

    move-result-object v6

    if-eqz v6, :cond_3b

    if-eq v6, v5, :cond_3b

    iget-object v7, v5, Lra;->c:Ljava/util/Map;

    .line 202
    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_3b
    invoke-static {v3, v5}, Lge;->a(Landroid/view/View;Lfl;)V

    goto :goto_19

    .line 196
    :cond_3c
    const/4 v11, 0x1

    .line 199
    :goto_19
    iget-object v3, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v3, v3, Lqx;->g:Z

    if-eqz v3, :cond_3d

    iput v0, v8, Lqz;->g:I

    :cond_3d
    const/4 v0, 0x1

    .line 204
    :goto_1a
    iget-object v3, v8, Lqz;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_3e

    iget-object v3, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 205
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 206
    iget-object v5, v8, Lqz;->a:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b

    :cond_3e
    iget-object v5, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 207
    invoke-virtual {v5, v3}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_3f

    iget-object v5, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 208
    invoke-virtual {v5, v3}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 209
    iget-object v5, v8, Lqz;->a:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b

    .line 210
    :cond_3f
    check-cast v3, Lql;

    .line 206
    :goto_1b
    check-cast v3, Lql;

    iput-object v8, v3, Lql;->c:Lqz;

    if-eqz v2, :cond_40

    if-eqz v0, :cond_40

    const/4 v4, 0x1

    :cond_40
    iput-boolean v4, v3, Lql;->f:Z

    return-object v8

    .line 79
    :cond_41
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Item count:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    .line 81
    invoke-virtual {v0}, Lqx;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 82
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :goto_1c
    throw v2

    :goto_1d
    goto :goto_1c
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lqq;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    invoke-virtual {p0}, Lqq;->c()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .line 33
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lqz;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 36
    :cond_0
    invoke-virtual {v0}, Lqz;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {v0}, Lqz;->f()V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Lqz;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {v0}, Lqz;->h()V

    .line 40
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lqq;->a(Lqz;)V

    iget-object p1, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    if-eqz p1, :cond_3

    .line 41
    invoke-virtual {v0}, Lqz;->s()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    .line 42
    invoke-virtual {p1, v0}, Lqg;->d(Lqz;)V

    :cond_3
    return-void
.end method

.method final a(Lqz;)V
    .locals 6

    .line 43
    invoke-virtual {p1}, Lqz;->e()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    iget-object v0, p1, Lqz;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 47
    :cond_0
    invoke-virtual {p1}, Lqz;->n()Z

    move-result v0

    if-nez v0, :cond_b

    .line 50
    invoke-virtual {p1}, Lqz;->w()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p1, Lqz;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    iget-object v0, p1, Lqz;->a:Landroid/view/View;

    .line 51
    invoke-static {v0}, Lge;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-virtual {p1}, Lqz;->s()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lqq;->e:I

    if-lez v3, :cond_6

    const/16 v3, 0x20e

    .line 53
    invoke-virtual {p1, v3}, Lqz;->a(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lqq;->c:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lqq;->e:I

    if-lt v3, v4, :cond_2

    if-lez v3, :cond_2

    .line 55
    invoke-virtual {p0, v2}, Lqq;->b(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_2
    if-lez v3, :cond_5

    iget-object v4, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->F:Lou;

    .line 56
    iget v5, p1, Lqz;->c:I

    .line 57
    invoke-virtual {v4, v5}, Lou;->a(I)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_4

    iget-object v4, p0, Lqq;->c:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqz;

    iget v4, v4, Lqz;->c:I

    iget-object v5, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->F:Lou;

    .line 59
    invoke-virtual {v5, v4}, Lou;->a(I)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 62
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 59
    :cond_4
    :goto_2
    add-int/2addr v3, v1

    :cond_5
    iget-object v4, p0, Lqq;->c:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_3

    .line 62
    :cond_6
    const/4 v3, 0x0

    .line 60
    :goto_3
    if-nez v3, :cond_7

    .line 61
    invoke-virtual {p0, p1, v1}, Lqq;->a(Lqz;Z)V

    move v2, v3

    goto :goto_5

    .line 62
    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    nop

    :goto_4
    const/4 v1, 0x0

    .line 61
    :goto_5
    iget-object v3, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 62
    invoke-virtual {v3, p1}, Lsc;->d(Lqz;)V

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-object v0, p1, Lqz;->p:Lqc;

    iput-object v0, p1, Lqz;->o:Landroid/support/v7/widget/RecyclerView;

    :cond_9
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 64
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 49
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_c
    :goto_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Lqz;->e()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lqz;->a:Landroid/view/View;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_7

    .line 64
    :cond_d
    const/4 v1, 0x0

    .line 46
    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method final a(Lqz;Z)V
    .locals 4

    .line 4
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Lqz;)V

    .line 5
    iget-object v0, p1, Lqz;->a:Landroid/view/View;

    iget-object v1, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->K:Lrb;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lrb;->c:Lra;

    .line 6
    instance-of v3, v1, Lra;

    if-eqz v3, :cond_0

    iget-object v1, v1, Lra;->c:Ljava/util/Map;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfl;

    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v2

    .line 8
    :goto_0
    invoke-static {v0, v1}, Lge;->a(Landroid/view/View;Lfl;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    if-eqz v0, :cond_2

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 9
    invoke-virtual {p2, p1}, Lsc;->d(Lqz;)V

    :cond_2
    iput-object v2, p1, Lqz;->p:Lqc;

    iput-object v2, p1, Lqz;->o:Landroid/support/v7/widget/RecyclerView;

    .line 10
    invoke-virtual {p0}, Lqq;->d()Lqp;

    move-result-object p2

    iget v0, p1, Lqz;->f:I

    .line 11
    invoke-virtual {p2, v0}, Lqp;->a(I)Lqo;

    move-result-object v1

    iget-object v1, v1, Lqo;->a:Ljava/util/ArrayList;

    iget-object p2, p2, Lqp;->a:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lqo;

    iget p2, p2, Lqo;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x5

    if-lt p2, v0, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-virtual {p1}, Lqz;->r()V

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    if-eqz v0, :cond_0

    iget v0, v0, Lqk;->x:I

    goto :goto_0

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 0
    :goto_0
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lqq;->e:I

    iget-object v0, p0, Lqq;->c:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lqq;->c:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lqq;->e:I

    if-le v1, v2, :cond_1

    .line 217
    invoke-virtual {p0, v0}, Lqq;->b(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lqq;->c:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqz;

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lqq;->a(Lqz;Z)V

    iget-object v0, p0, Lqq;->c:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method final b(Landroid/view/View;)V
    .locals 1

    .line 22
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lqz;->k:Lqq;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lqz;->l:Z

    .line 23
    invoke-virtual {p1}, Lqz;->h()V

    .line 24
    invoke-virtual {p0, p1}, Lqq;->a(Lqz;)V

    return-void
.end method

.method public final b(Lqz;)V
    .locals 1

    .line 211
    iget-boolean v0, p1, Lqz;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqq;->b:Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lqq;->a:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lqz;->k:Lqq;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lqz;->l:Z

    .line 214
    invoke-virtual {p1}, Lqz;->h()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lqq;->c:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 26
    invoke-virtual {p0, v0}, Lqq;->b(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqq;->c:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    sget v0, Landroid/support/v7/widget/RecyclerView;->O:I

    iget-object v0, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->F:Lou;

    .line 29
    invoke-virtual {v0}, Lou;->a()V

    return-void
.end method

.method final c(Landroid/view/View;)V
    .locals 2

    .line 65
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object p1

    .line 66
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lqz;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    invoke-virtual {p1}, Lqz;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->A:Lqg;

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p1}, Lqz;->q()Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1}, Lqz;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lqq;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqq;->b:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, p0, v0}, Lqz;->a(Lqq;Z)V

    iget-object v0, p0, Lqq;->b:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 71
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lqz;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lqz;->m()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iget-boolean v0, v0, Lqc;->b:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqq;->g:Landroid/support/v7/widget/RecyclerView;

    .line 75
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p0, v0}, Lqz;->a(Lqq;Z)V

    iget-object v0, p0, Lqq;->a:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()Lqp;
    .locals 1

    iget-object v0, p0, Lqq;->f:Lqp;

    if-nez v0, :cond_0

    new-instance v0, Lqp;

    .line 21
    invoke-direct {v0}, Lqp;-><init>()V

    iput-object v0, p0, Lqq;->f:Lqp;

    :cond_0
    iget-object v0, p0, Lqq;->f:Lqp;

    return-object v0
.end method
