.class final Lce;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbq;

.field public final b:Lba;

.field public c:I

.field private final d:Lcf;

.field private e:Z

.field private f:Lue;

.field private g:Lue;


# direct methods
.method public constructor <init>(Lbq;Lcf;Lba;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lce;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lce;->c:I

    iput-object p1, p0, Lce;->a:Lbq;

    iput-object p2, p0, Lce;->d:Lcf;

    iput-object p3, p0, Lce;->b:Lba;

    return-void
.end method

.method public constructor <init>(Lbq;Lcf;Lba;Lcd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lce;->e:Z

    const/4 v1, -0x1

    iput v1, p0, Lce;->c:I

    iput-object p1, p0, Lce;->a:Lbq;

    iput-object p2, p0, Lce;->d:Lcf;

    iput-object p3, p0, Lce;->b:Lba;

    const/4 p1, 0x0

    iput-object p1, p3, Lba;->h:Landroid/util/SparseArray;

    iput v0, p3, Lba;->v:I

    iput-boolean v0, p3, Lba;->s:Z

    iput-boolean v0, p3, Lba;->p:Z

    .line 1
    iget-object p2, p3, Lba;->l:Lba;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lba;->j:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    move-object p2, p1

    .line 1
    :goto_0
    iput-object p2, p3, Lba;->m:Ljava/lang/String;

    iput-object p1, p3, Lba;->l:Lba;

    iget-object p1, p4, Lcd;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    iput-object p1, p3, Lba;->g:Landroid/os/Bundle;

    return-void

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    .line 2
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Lba;->g:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lbq;Lcf;Ljava/lang/ClassLoader;Lbm;Lcd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lce;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lce;->c:I

    iput-object p1, p0, Lce;->a:Lbq;

    iput-object p2, p0, Lce;->d:Lcf;

    iget-object p1, p5, Lcd;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p4, p3, p1}, Lbm;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Lba;

    move-result-object p1

    iput-object p1, p0, Lce;->b:Lba;

    iget-object p2, p5, Lcd;->j:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    iget-object p2, p5, Lcd;->j:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p1, p2}, Lba;->d(Landroid/os/Bundle;)V

    iget-object p2, p5, Lcd;->b:Ljava/lang/String;

    iput-object p2, p1, Lba;->j:Ljava/lang/String;

    iget-boolean p2, p5, Lcd;->c:Z

    iput-boolean p2, p1, Lba;->r:Z

    const/4 p2, 0x1

    iput-boolean p2, p1, Lba;->t:Z

    iget p2, p5, Lcd;->d:I

    iput p2, p1, Lba;->A:I

    iget p2, p5, Lcd;->e:I

    iput p2, p1, Lba;->B:I

    iget-object p2, p5, Lcd;->f:Ljava/lang/String;

    iput-object p2, p1, Lba;->C:Ljava/lang/String;

    iget-boolean p2, p5, Lcd;->g:Z

    iput-boolean p2, p1, Lba;->F:Z

    iget-boolean p2, p5, Lcd;->h:Z

    iput-boolean p2, p1, Lba;->q:Z

    iget-boolean p2, p5, Lcd;->i:Z

    iput-boolean p2, p1, Lba;->E:Z

    iget-boolean p2, p5, Lcd;->k:Z

    iput-boolean p2, p1, Lba;->D:Z

    .line 6
    invoke-static {}, Li;->values()[Li;

    move-result-object p2

    iget p3, p5, Lcd;->l:I

    aget-object p2, p2, p3

    iput-object p2, p1, Lba;->U:Li;

    iget-object p2, p5, Lcd;->m:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    iput-object p2, p1, Lba;->g:Landroid/os/Bundle;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    .line 7
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Lba;->g:Landroid/os/Bundle;

    .line 6
    :goto_0
    const/4 p2, 0x2

    invoke-static {p2}, Lbx;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method final a()I
    .locals 7

    iget-object v0, p0, Lce;->b:Lba;

    .line 31
    iget-object v1, v0, Lba;->w:Lbx;

    if-nez v1, :cond_0

    .line 32
    iget v0, v0, Lba;->f:I

    return v0

    :cond_0
    iget v1, p0, Lce;->c:I

    .line 33
    iget-boolean v2, v0, Lba;->r:Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 34
    iget-boolean v2, v0, Lba;->s:Z

    if-eqz v2, :cond_1

    .line 35
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 43
    :cond_1
    if-ge v1, v3, :cond_2

    .line 36
    iget v0, v0, Lba;->f:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    nop

    .line 37
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    nop

    .line 35
    :goto_0
    iget-object v0, p0, Lce;->b:Lba;

    .line 38
    iget-boolean v0, v0, Lba;->p:Z

    if-nez v0, :cond_4

    .line 39
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    iget-object v0, p0, Lce;->b:Lba;

    .line 40
    iget-boolean v2, v0, Lba;->q:Z

    const/4 v5, -0x1

    if-eqz v2, :cond_6

    .line 41
    invoke-virtual {v0}, Lba;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 48
    :cond_5
    nop

    .line 43
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 42
    :cond_6
    :goto_1
    iget-object v0, p0, Lce;->b:Lba;

    .line 44
    iget-boolean v2, v0, Lba;->M:Z

    const/4 v6, 0x4

    if-eqz v2, :cond_7

    iget v0, v0, Lba;->f:I

    if-ge v0, v6, :cond_7

    .line 45
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 46
    :cond_7
    sget-object v0, Li;->a:Li;

    iget-object v0, p0, Lce;->b:Lba;

    iget-object v0, v0, Lba;->U:Li;

    invoke-virtual {v0}, Li;->ordinal()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    if-eq v0, v3, :cond_9

    if-eq v0, v6, :cond_8

    .line 49
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_8
    return v1

    .line 47
    :cond_9
    nop

    .line 48
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 49
    :cond_a
    nop

    .line 47
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method final a(Ljava/lang/ClassLoader;)V
    .locals 3

    iget-object v0, p0, Lce;->b:Lba;

    .line 180
    iget-object v0, v0, Lba;->g:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Lce;->b:Lba;

    .line 182
    iget-object v0, p1, Lba;->g:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Lba;->h:Landroid/util/SparseArray;

    iget-object p1, p0, Lce;->b:Lba;

    .line 183
    iget-object v0, p1, Lba;->g:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lba;->m:Ljava/lang/String;

    iget-object p1, p0, Lce;->b:Lba;

    .line 184
    iget-object v0, p1, Lba;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p1, Lba;->g:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lba;->n:I

    :cond_1
    iget-object p1, p0, Lce;->b:Lba;

    .line 186
    iget-object v0, p1, Lba;->i:Ljava/lang/Boolean;

    .line 187
    iget-object v0, p1, Lba;->g:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lba;->N:Z

    iget-object p1, p0, Lce;->b:Lba;

    .line 188
    iget-boolean v0, p1, Lba;->N:Z

    if-nez v0, :cond_2

    iput-boolean v2, p1, Lba;->M:Z

    :cond_2
    return-void
.end method

.method final b()V
    .locals 5

    iget-boolean v0, p0, Lce;->e:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {v1}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lce;->b:Lba;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lce;->e:Z

    .line 144
    :goto_0
    invoke-virtual {p0}, Lce;->a()I

    move-result v2

    iget-object v3, p0, Lce;->b:Lba;

    iget v3, v3, Lba;->f:I

    if-eq v2, v3, :cond_9

    const/4 v4, 0x3

    if-le v2, v3, :cond_4

    add-int/lit8 v3, v3, 0x1

    iget-object v2, p0, Lce;->g:Lue;

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {v2}, Lue;->b()V

    :cond_2
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 160
    :pswitch_0
    invoke-virtual {p0}, Lce;->j()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lce;->b:Lba;

    const/4 v3, 0x5

    iput v3, v2, Lba;->f:I

    goto :goto_0

    .line 161
    :pswitch_2
    invoke-virtual {p0}, Lce;->i()V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lce;->b:Lba;

    .line 162
    iget-object v3, v2, Lba;->L:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lba;->K:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 163
    invoke-virtual {v2}, Lba;->t()Lbx;

    move-result-object v2

    .line 164
    invoke-static {v3, v2}, Ldh;->a(Landroid/view/ViewGroup;Lbx;)Ldh;

    move-result-object v2

    new-instance v3, Lue;

    invoke-direct {v3}, Lue;-><init>()V

    iput-object v3, p0, Lce;->f:Lue;

    .line 165
    invoke-virtual {v2, p0, v3}, Ldh;->a(Lce;Lue;)V

    :cond_3
    iget-object v2, p0, Lce;->b:Lba;

    iput v4, v2, Lba;->f:I

    goto :goto_0

    .line 166
    :pswitch_4
    invoke-virtual {p0}, Lce;->c()V

    .line 167
    invoke-virtual {p0}, Lce;->f()V

    .line 168
    invoke-virtual {p0}, Lce;->g()V

    .line 169
    invoke-virtual {p0}, Lce;->h()V

    goto :goto_0

    .line 170
    :pswitch_5
    invoke-virtual {p0}, Lce;->e()V

    goto :goto_0

    .line 171
    :pswitch_6
    invoke-virtual {p0}, Lce;->d()V

    goto :goto_0

    .line 170
    :cond_4
    add-int/lit8 v3, v3, -0x1

    iget-object v2, p0, Lce;->f:Lue;

    if-eqz v2, :cond_5

    .line 145
    invoke-virtual {v2}, Lue;->b()V

    :cond_5
    packed-switch v3, :pswitch_data_1

    :goto_1
    goto :goto_0

    .line 154
    :pswitch_7
    invoke-virtual {p0}, Lce;->k()V

    goto :goto_0

    .line 145
    :pswitch_8
    iget-object v2, p0, Lce;->b:Lba;

    const/4 v3, 0x4

    iput v3, v2, Lba;->f:I

    goto :goto_1

    .line 155
    :pswitch_9
    invoke-virtual {p0}, Lce;->l()V

    goto :goto_0

    .line 145
    :pswitch_a
    invoke-static {v4}, Lbx;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lce;->b:Lba;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    iget-object v2, p0, Lce;->b:Lba;

    .line 147
    iget-object v3, v2, Lba;->L:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 148
    iget-object v2, v2, Lba;->h:Landroid/util/SparseArray;

    if-nez v2, :cond_7

    .line 149
    invoke-virtual {p0}, Lce;->m()V

    :cond_7
    iget-object v2, p0, Lce;->b:Lba;

    .line 150
    iget-object v3, v2, Lba;->L:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, v2, Lba;->K:Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    iget v4, p0, Lce;->c:I

    if-ltz v4, :cond_8

    .line 151
    invoke-virtual {v2}, Lba;->t()Lbx;

    move-result-object v2

    .line 152
    invoke-static {v3, v2}, Ldh;->a(Landroid/view/ViewGroup;Lbx;)Ldh;

    move-result-object v2

    new-instance v3, Lue;

    invoke-direct {v3}, Lue;-><init>()V

    iput-object v3, p0, Lce;->g:Lue;

    .line 153
    invoke-virtual {v2, p0, v3}, Ldh;->a(Lce;Lue;)V

    :cond_8
    iget-object v2, p0, Lce;->b:Lba;

    iput v1, v2, Lba;->f:I

    goto/16 :goto_0

    .line 156
    :pswitch_b
    invoke-virtual {p0}, Lce;->n()V

    goto/16 :goto_0

    .line 157
    :pswitch_c
    invoke-virtual {p0}, Lce;->o()V

    goto/16 :goto_0

    .line 158
    :pswitch_d
    invoke-virtual {p0}, Lce;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 172
    :cond_9
    iput-boolean v0, p0, Lce;->e:Z

    return-void

    .line 157
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lce;->e:Z

    .line 172
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method final c()V
    .locals 5

    iget-object v0, p0, Lce;->b:Lba;

    .line 133
    iget-boolean v1, v0, Lba;->r:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lba;->s:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lba;->u:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lce;->b:Lba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lce;->b:Lba;

    .line 135
    iget-object v1, v0, Lba;->g:Landroid/os/Bundle;

    invoke-virtual {v0}, Lba;->N()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lce;->b:Lba;

    iget-object v3, v3, Lba;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lba;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Lce;->b:Lba;

    .line 136
    iget-object v0, v0, Lba;->L:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Lce;->b:Lba;

    .line 138
    iget-object v2, v0, Lba;->L:Landroid/view/View;

    const v3, 0x7f0a009f

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lce;->b:Lba;

    .line 139
    iget-boolean v2, v0, Lba;->D:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lba;->L:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lce;->b:Lba;

    .line 140
    iget-object v2, v0, Lba;->L:Landroid/view/View;

    iget-object v3, v0, Lba;->g:Landroid/os/Bundle;

    iget-object v4, p0, Lce;->a:Lbq;

    .line 141
    invoke-virtual {v4, v0, v2, v3, v1}, Lbq;->a(Lba;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_2
    return-void
.end method

.method final d()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ATTACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lce;->b:Lba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lce;->b:Lba;

    .line 15
    iget-object v1, v0, Lba;->l:Lba;

    const-string v2, " that does not belong to this FragmentManager!"

    const-string v3, " declared target fragment "

    const/4 v4, 0x0

    const-string v5, "Fragment "

    if-eqz v1, :cond_2

    iget-object v0, p0, Lce;->d:Lcf;

    iget-object v1, v1, Lba;->j:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Lcf;->b(Ljava/lang/String;)Lce;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v1, p0, Lce;->b:Lba;

    .line 18
    iget-object v2, v1, Lba;->l:Lba;

    iget-object v2, v2, Lba;->j:Ljava/lang/String;

    iput-object v2, v1, Lba;->m:Ljava/lang/String;

    iput-object v4, v1, Lba;->l:Lba;

    move-object v4, v0

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lce;->b:Lba;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lce;->b:Lba;

    iget-object v3, v3, Lba;->l:Lba;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_2
    iget-object v0, v0, Lba;->m:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lce;->d:Lcf;

    .line 20
    invoke-virtual {v1, v0}, Lcf;->b(Ljava/lang/String;)Lce;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lce;->b:Lba;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lce;->b:Lba;

    iget-object v3, v3, Lba;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    nop

    .line 18
    :goto_0
    if-eqz v4, :cond_5

    iget-object v0, v4, Lce;->b:Lba;

    .line 21
    iget v0, v0, Lba;->f:I

    if-gtz v0, :cond_5

    .line 22
    invoke-virtual {v4}, Lce;->b()V

    :cond_5
    iget-object v0, p0, Lce;->b:Lba;

    .line 23
    iget-object v1, v0, Lba;->w:Lbx;

    iget-object v2, v1, Lbx;->j:Lbn;

    iput-object v2, v0, Lba;->x:Lbn;

    iget-object v1, v1, Lbx;->l:Lba;

    iput-object v1, v0, Lba;->z:Lba;

    iget-object v1, p0, Lce;->a:Lbq;

    .line 24
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbq;->a(Lba;Z)V

    iget-object v0, p0, Lce;->b:Lba;

    iget-object v1, v0, Lba;->y:Lbx;

    iget-object v3, v0, Lba;->x:Lbn;

    .line 25
    invoke-virtual {v0}, Lba;->g()Lbj;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lbx;->a(Lbn;Lbj;Lba;)V

    iput v2, v0, Lba;->f:I

    iput-boolean v2, v0, Lba;->J:Z

    iget-object v1, v0, Lba;->x:Lbn;

    iget-object v1, v1, Lbn;->c:Landroid/content/Context;

    .line 26
    invoke-virtual {v0, v1}, Lba;->a(Landroid/content/Context;)V

    iget-boolean v1, v0, Lba;->J:Z

    if-eqz v1, :cond_6

    .line 27
    iget-object v0, v0, Lba;->y:Lbx;

    iput-boolean v2, v0, Lbx;->n:Z

    iput-boolean v2, v0, Lbx;->o:Z

    iget-object v1, v0, Lbx;->q:Lcb;

    iput-boolean v2, v1, Lcb;->i:Z

    .line 28
    invoke-virtual {v0, v2}, Lbx;->c(I)V

    iget-object v0, p0, Lce;->a:Lbq;

    iget-object v1, p0, Lce;->b:Lba;

    .line 29
    invoke-virtual {v0, v1, v2}, Lbq;->b(Lba;Z)V

    return-void

    .line 26
    :cond_6
    new-instance v1, Ldi;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onAttach()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldi;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final e()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lce;->b:Lba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lce;->b:Lba;

    .line 51
    iget-boolean v1, v0, Lba;->T:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lce;->a:Lbq;

    .line 52
    iget-object v3, v0, Lba;->g:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lbq;->a(Lba;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lce;->b:Lba;

    .line 53
    iget-object v1, v0, Lba;->g:Landroid/os/Bundle;

    iget-object v3, v0, Lba;->y:Lbx;

    .line 54
    invoke-virtual {v3}, Lbx;->noteStateNotSaved()V

    iput v2, v0, Lba;->f:I

    iput-boolean v4, v0, Lba;->J:Z

    iget-object v3, v0, Lba;->X:Lwz;

    .line 55
    invoke-virtual {v3, v1}, Lwz;->a(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {v0, v1}, Lba;->a(Landroid/os/Bundle;)V

    iput-boolean v2, v0, Lba;->T:Z

    iget-boolean v1, v0, Lba;->J:Z

    if-eqz v1, :cond_1

    .line 57
    iget-object v0, v0, Lba;->Y:Lj;

    .line 58
    sget-object v1, Lh;->a:Lh;

    invoke-virtual {v0, v1}, Lj;->a(Lh;)V

    iget-object v0, p0, Lce;->a:Lbq;

    iget-object v1, p0, Lce;->b:Lba;

    .line 59
    iget-object v2, v1, Lba;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v4}, Lbq;->b(Lba;Landroid/os/Bundle;Z)V

    return-void

    .line 56
    :cond_1
    new-instance v1, Ldi;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onCreate()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldi;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_2
    iget-object v1, v0, Lba;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lba;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Lce;->b:Lba;

    iput v2, v0, Lba;->f:I

    return-void
.end method

.method final f()V
    .locals 10

    iget-object v0, p0, Lce;->b:Lba;

    .line 61
    iget-boolean v0, v0, Lba;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lce;->b:Lba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lce;->b:Lba;

    .line 63
    iget-object v1, v0, Lba;->g:Landroid/os/Bundle;

    invoke-virtual {v0}, Lba;->N()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lce;->b:Lba;

    .line 64
    iget-object v2, v1, Lba;->K:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 65
    :cond_2
    iget v2, v1, Lba;->B:I

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    .line 67
    iget-object v1, v1, Lba;->w:Lbx;

    iget-object v1, v1, Lbx;->k:Lbj;

    .line 68
    invoke-virtual {v1, v2}, Lbj;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_6

    iget-object v1, p0, Lce;->b:Lba;

    .line 69
    iget-boolean v4, v1, Lba;->t:Z

    if-eqz v4, :cond_3

    goto :goto_1

    .line 90
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lba;->s()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lce;->b:Lba;

    iget v1, v1, Lba;->B:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    const-string v0, "unknown"

    .line 90
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lce;->b:Lba;

    iget v3, v3, Lba;->B:I

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lce;->b:Lba;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lce;->b:Lba;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_5
    const/4 v2, 0x0

    .line 64
    :cond_6
    :goto_1
    iget-object v1, p0, Lce;->b:Lba;

    iput-object v2, v1, Lba;->K:Landroid/view/ViewGroup;

    .line 70
    iget-object v4, v1, Lba;->g:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2, v4}, Lba;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Lce;->b:Lba;

    .line 71
    iget-object v0, v0, Lba;->L:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Lce;->b:Lba;

    .line 73
    iget-object v4, v0, Lba;->L:Landroid/view/View;

    const v5, 0x7f0a009f

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz v2, :cond_c

    iget-object v4, p0, Lce;->d:Lcf;

    iget-object v5, p0, Lce;->b:Lba;

    .line 74
    iget-object v6, v5, Lba;->K:Landroid/view/ViewGroup;

    if-nez v6, :cond_7

    goto :goto_4

    .line 89
    :cond_7
    iget-object v7, v4, Lcf;->a:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v7, v5, -0x1

    :goto_2
    if-ltz v7, :cond_9

    iget-object v8, v4, Lcf;->a:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lba;

    .line 77
    iget-object v9, v8, Lba;->K:Landroid/view/ViewGroup;

    if-ne v9, v6, :cond_8

    iget-object v8, v8, Lba;->L:Landroid/view/View;

    if-eqz v8, :cond_8

    .line 78
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_9
    add-int/2addr v5, v0

    :goto_3
    iget-object v7, v4, Lcf;->a:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_b

    iget-object v7, v4, Lcf;->a:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lba;

    .line 81
    iget-object v8, v7, Lba;->K:Landroid/view/ViewGroup;

    if-ne v8, v6, :cond_a

    iget-object v7, v7, Lba;->L:Landroid/view/View;

    if-eqz v7, :cond_a

    .line 82
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    nop

    .line 74
    :goto_4
    iget-object v4, p0, Lce;->b:Lba;

    .line 83
    iget-object v4, v4, Lba;->L:Landroid/view/View;

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_c
    iget-object v2, p0, Lce;->b:Lba;

    .line 84
    iget-boolean v3, v2, Lba;->D:Z

    if-eqz v3, :cond_d

    .line 85
    iget-object v2, v2, Lba;->L:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v2, p0, Lce;->b:Lba;

    .line 86
    iget-object v2, v2, Lba;->L:Landroid/view/View;

    invoke-static {v2}, Lge;->q(Landroid/view/View;)V

    iget-object v2, p0, Lce;->b:Lba;

    .line 87
    iget-object v3, v2, Lba;->L:Landroid/view/View;

    iget-object v4, v2, Lba;->g:Landroid/os/Bundle;

    iget-object v5, p0, Lce;->a:Lbq;

    .line 88
    invoke-virtual {v5, v2, v3, v4, v1}, Lbq;->a(Lba;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v2, p0, Lce;->b:Lba;

    .line 89
    iget-object v3, v2, Lba;->L:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lce;->b:Lba;

    iget-object v3, v3, Lba;->K:Landroid/view/ViewGroup;

    if-eqz v3, :cond_e

    const/4 v1, 0x1

    :cond_e
    iput-boolean v1, v2, Lba;->P:Z

    return-void

    .line 82
    :cond_f
    return-void
.end method

.method final g()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lce;->b:Lba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lce;->b:Lba;

    .line 10
    iget-object v1, v0, Lba;->g:Landroid/os/Bundle;

    iget-object v1, v0, Lba;->y:Lbx;

    .line 11
    invoke-virtual {v1}, Lbx;->noteStateNotSaved()V

    const/4 v1, 0x2

    iput v1, v0, Lba;->f:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lba;->J:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lba;->J:Z

    iget-object v0, v0, Lba;->y:Lbx;

    .line 12
    invoke-virtual {v0}, Lbx;->g()V

    iget-object v0, p0, Lce;->a:Lbq;

    iget-object v2, p0, Lce;->b:Lba;

    .line 13
    iget-object v3, v2, Lba;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v1}, Lbq;->c(Lba;Landroid/os/Bundle;Z)V

    return-void
.end method

.method final h()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lce;->b:Lba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lce;->b:Lba;

    .line 190
    iget-object v1, v0, Lba;->L:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 191
    iget-object v3, v0, Lba;->g:Landroid/os/Bundle;

    iget-object v4, v0, Lba;->h:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 192
    invoke-virtual {v1, v4}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v2, v0, Lba;->h:Landroid/util/SparseArray;

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lba;->J:Z

    .line 193
    invoke-virtual {v0, v3}, Lba;->b(Landroid/os/Bundle;)V

    iget-boolean v1, v0, Lba;->J:Z

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, v0, Lba;->L:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lba;->V:Lda;

    .line 195
    sget-object v1, Lh;->a:Lh;

    invoke-virtual {v0, v1}, Lda;->a(Lh;)V

    goto :goto_0

    .line 193
    :cond_2
    new-instance v1, Ldi;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldi;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_3
    :goto_0
    iget-object v0, p0, Lce;->b:Lba;

    iput-object v2, v0, Lba;->g:Landroid/os/Bundle;

    return-void
.end method

.method final i()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lce;->b:Lba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lce;->b:Lba;

    iget-object v1, v0, Lba;->y:Lbx;

    .line 210
    invoke-virtual {v1}, Lbx;->noteStateNotSaved()V

    iget-object v1, v0, Lba;->y:Lbx;

    const/4 v2, 0x1

    .line 211
    invoke-virtual {v1, v2}, Lbx;->c(Z)V

    const/4 v1, 0x4

    iput v1, v0, Lba;->f:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lba;->J:Z

    .line 212
    invoke-virtual {v0}, Lba;->h()V

    iget-boolean v2, v0, Lba;->J:Z

    if-eqz v2, :cond_2

    .line 213
    iget-object v2, v0, Lba;->Y:Lj;

    .line 214
    sget-object v3, Lh;->b:Lh;

    invoke-virtual {v2, v3}, Lj;->a(Lh;)V

    iget-object v2, v0, Lba;->L:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lba;->V:Lda;

    sget-object v3, Lh;->b:Lh;

    .line 215
    invoke-virtual {v2, v3}, Lda;->a(Lh;)V

    :cond_1
    iget-object v0, v0, Lba;->y:Lbx;

    .line 216
    invoke-virtual {v0}, Lbx;->h()V

    iget-object v0, p0, Lce;->a:Lbq;

    iget-object v2, p0, Lce;->b:Lba;

    .line 217
    invoke-virtual {v0, v2, v1}, Lbq;->c(Lba;Z)V

    return-void

    .line 212
    :cond_2
    new-instance v1, Ldi;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onStart()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldi;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final j()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lce;->b:Lba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lce;->b:Lba;

    iget-object v1, v0, Lba;->y:Lbx;

    .line 197
    invoke-virtual {v1}, Lbx;->noteStateNotSaved()V

    iget-object v1, v0, Lba;->y:Lbx;

    const/4 v2, 0x1

    .line 198
    invoke-virtual {v1, v2}, Lbx;->c(Z)V

    const/4 v1, 0x6

    iput v1, v0, Lba;->f:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lba;->J:Z

    .line 199
    invoke-virtual {v0}, Lba;->y()V

    iget-boolean v2, v0, Lba;->J:Z

    if-eqz v2, :cond_2

    .line 200
    iget-object v2, v0, Lba;->Y:Lj;

    .line 201
    sget-object v3, Lh;->c:Lh;

    invoke-virtual {v2, v3}, Lj;->a(Lh;)V

    iget-object v2, v0, Lba;->L:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lba;->V:Lda;

    sget-object v3, Lh;->c:Lh;

    .line 202
    invoke-virtual {v2, v3}, Lda;->a(Lh;)V

    :cond_1
    iget-object v0, v0, Lba;->y:Lbx;

    .line 203
    invoke-virtual {v0}, Lbx;->i()V

    iget-object v0, p0, Lce;->a:Lbq;

    iget-object v2, p0, Lce;->b:Lba;

    .line 204
    invoke-virtual {v0, v2, v1}, Lbq;->d(Lba;Z)V

    iget-object v0, p0, Lce;->b:Lba;

    const/4 v1, 0x0

    iput-object v1, v0, Lba;->g:Landroid/os/Bundle;

    iput-object v1, v0, Lba;->h:Landroid/util/SparseArray;

    return-void

    .line 199
    :cond_2
    new-instance v1, Ldi;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onResume()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldi;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final k()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lce;->b:Lba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lce;->b:Lba;

    iget-object v1, v0, Lba;->y:Lbx;

    .line 174
    invoke-virtual {v1}, Lbx;->j()V

    iget-object v1, v0, Lba;->L:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lba;->V:Lda;

    .line 175
    sget-object v2, Lh;->d:Lh;

    invoke-virtual {v1, v2}, Lda;->a(Lh;)V

    :cond_1
    iget-object v1, v0, Lba;->Y:Lj;

    .line 176
    sget-object v2, Lh;->d:Lh;

    invoke-virtual {v1, v2}, Lj;->a(Lh;)V

    const/4 v1, 0x5

    iput v1, v0, Lba;->f:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lba;->J:Z

    .line 177
    invoke-virtual {v0}, Lba;->z()V

    iget-boolean v2, v0, Lba;->J:Z

    if-eqz v2, :cond_2

    .line 179
    iget-object v0, p0, Lce;->a:Lbq;

    iget-object v2, p0, Lce;->b:Lba;

    .line 178
    invoke-virtual {v0, v2, v1}, Lbq;->e(Lba;Z)V

    return-void

    .line 177
    :cond_2
    new-instance v1, Ldi;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onPause()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldi;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final l()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lce;->b:Lba;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lce;->b:Lba;

    iget-object v2, v1, Lba;->y:Lbx;

    .line 219
    invoke-virtual {v2}, Lbx;->k()V

    iget-object v2, v1, Lba;->L:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lba;->V:Lda;

    .line 220
    sget-object v3, Lh;->e:Lh;

    invoke-virtual {v2, v3}, Lda;->a(Lh;)V

    :cond_1
    iget-object v2, v1, Lba;->Y:Lj;

    .line 221
    sget-object v3, Lh;->e:Lh;

    invoke-virtual {v2, v3}, Lj;->a(Lh;)V

    iput v0, v1, Lba;->f:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lba;->J:Z

    .line 222
    invoke-virtual {v1}, Lba;->i()V

    iget-boolean v2, v1, Lba;->J:Z

    if-eqz v2, :cond_2

    .line 224
    iget-object v1, p0, Lce;->a:Lbq;

    iget-object v2, p0, Lce;->b:Lba;

    .line 223
    invoke-virtual {v1, v2, v0}, Lbq;->f(Lba;Z)V

    return-void

    .line 222
    :cond_2
    new-instance v0, Ldi;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStop()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldi;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final m()V
    .locals 2

    iget-object v0, p0, Lce;->b:Lba;

    .line 205
    iget-object v0, v0, Lba;->L:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    .line 206
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lce;->b:Lba;

    .line 207
    iget-object v1, v1, Lba;->L:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 208
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lce;->b:Lba;

    iput-object v0, v1, Lba;->h:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method final n()V
    .locals 3

    iget-object v0, p0, Lce;->b:Lba;

    .line 118
    invoke-virtual {v0}, Lba;->E()V

    iget-object v0, p0, Lce;->a:Lbq;

    iget-object v1, p0, Lce;->b:Lba;

    .line 119
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbq;->g(Lba;Z)V

    iget-object v0, p0, Lce;->b:Lba;

    const/4 v1, 0x0

    iput-object v1, v0, Lba;->K:Landroid/view/ViewGroup;

    iput-object v1, v0, Lba;->L:Landroid/view/View;

    iput-object v1, v0, Lba;->V:Lda;

    .line 120
    iget-object v0, v0, Lba;->W:Lv;

    invoke-virtual {v0, v1}, Lv;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lce;->b:Lba;

    iput-boolean v2, v0, Lba;->s:Z

    return-void
.end method

.method final o()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lce;->b:Lba;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lce;->b:Lba;

    .line 94
    iget-boolean v2, v1, Lba;->q:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lba;->o()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 115
    :cond_2
    const/4 v1, 0x0

    .line 94
    :goto_0
    if-nez v1, :cond_5

    iget-object v2, p0, Lce;->d:Lcf;

    iget-object v2, v2, Lcf;->c:Lcb;

    iget-object v5, p0, Lce;->b:Lba;

    .line 95
    invoke-virtual {v2, v5}, Lcb;->b(Lba;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 98
    :cond_3
    iget-object v0, p0, Lce;->b:Lba;

    .line 116
    iget-object v0, v0, Lba;->m:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lce;->d:Lcf;

    .line 117
    invoke-virtual {v1, v0}, Lcf;->c(Ljava/lang/String;)Lba;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lba;->F:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lce;->b:Lba;

    iput-object v0, v1, Lba;->l:Lba;

    :cond_4
    iget-object v0, p0, Lce;->b:Lba;

    iput v4, v0, Lba;->f:I

    return-void

    .line 95
    :cond_5
    :goto_1
    iget-object v2, p0, Lce;->b:Lba;

    .line 96
    iget-object v2, v2, Lba;->x:Lbn;

    .line 97
    instance-of v5, v2, Lak;

    if-eqz v5, :cond_6

    iget-object v2, p0, Lce;->d:Lcf;

    iget-object v2, v2, Lcf;->c:Lcb;

    iget-boolean v2, v2, Lcb;->h:Z

    goto :goto_2

    .line 114
    :cond_6
    iget-object v2, v2, Lbn;->c:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 98
    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    xor-int/2addr v2, v3

    .line 97
    :goto_2
    if-nez v1, :cond_7

    if-eqz v2, :cond_a

    :cond_7
    iget-object v1, p0, Lce;->d:Lcf;

    iget-object v1, v1, Lcf;->c:Lcb;

    iget-object v2, p0, Lce;->b:Lba;

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing non-config state for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_8
    iget-object v0, v1, Lcb;->e:Ljava/util/HashMap;

    .line 100
    iget-object v3, v2, Lba;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcb;

    if-eqz v0, :cond_9

    .line 101
    invoke-virtual {v0}, Lcb;->a()V

    iget-object v0, v1, Lcb;->e:Ljava/util/HashMap;

    .line 102
    iget-object v3, v2, Lba;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, v1, Lcb;->f:Ljava/util/HashMap;

    .line 103
    iget-object v3, v2, Lba;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj;

    if-eqz v0, :cond_a

    .line 104
    invoke-virtual {v0}, Laj;->b()V

    iget-object v0, v1, Lcb;->f:Ljava/util/HashMap;

    .line 105
    iget-object v1, v2, Lba;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lce;->b:Lba;

    iget-object v1, v0, Lba;->y:Lbx;

    .line 106
    invoke-virtual {v1}, Lbx;->l()V

    iget-object v1, v0, Lba;->Y:Lj;

    .line 107
    sget-object v2, Lh;->f:Lh;

    invoke-virtual {v1, v2}, Lj;->a(Lh;)V

    iput v4, v0, Lba;->f:I

    iput-boolean v4, v0, Lba;->J:Z

    iput-boolean v4, v0, Lba;->T:Z

    .line 108
    invoke-virtual {v0}, Lba;->A()V

    iget-boolean v1, v0, Lba;->J:Z

    if-eqz v1, :cond_e

    iget-object v0, p0, Lce;->a:Lbq;

    iget-object v1, p0, Lce;->b:Lba;

    .line 109
    invoke-virtual {v0, v1, v4}, Lbq;->h(Lba;Z)V

    iget-object v0, p0, Lce;->d:Lcf;

    .line 110
    invoke-virtual {v0}, Lcf;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v4, v1, :cond_c

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lce;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lce;->b:Lba;

    iget-object v3, p0, Lce;->b:Lba;

    .line 111
    iget-object v3, v3, Lba;->j:Ljava/lang/String;

    iget-object v5, v2, Lba;->m:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lce;->b:Lba;

    iput-object v3, v2, Lba;->l:Lba;

    const/4 v3, 0x0

    iput-object v3, v2, Lba;->m:Ljava/lang/String;

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lce;->b:Lba;

    .line 112
    iget-object v1, v0, Lba;->m:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lce;->d:Lcf;

    .line 113
    invoke-virtual {v2, v1}, Lcf;->c(Ljava/lang/String;)Lba;

    move-result-object v1

    iput-object v1, v0, Lba;->l:Lba;

    :cond_d
    iget-object v0, p0, Lce;->d:Lcf;

    .line 114
    invoke-virtual {v0, p0}, Lcf;->b(Lce;)V

    return-void

    .line 117
    :cond_e
    new-instance v1, Ldi;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onDestroy()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldi;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method final p()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ATTACHED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lce;->b:Lba;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lce;->b:Lba;

    const/4 v2, -0x1

    iput v2, v1, Lba;->f:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lba;->J:Z

    .line 122
    invoke-virtual {v1}, Lba;->f()V

    const/4 v4, 0x0

    iput-object v4, v1, Lba;->S:Landroid/view/LayoutInflater;

    iget-boolean v5, v1, Lba;->J:Z

    if-eqz v5, :cond_5

    .line 123
    iget-object v5, v1, Lba;->y:Lbx;

    iget-boolean v6, v5, Lbx;->p:Z

    if-nez v6, :cond_1

    .line 124
    invoke-virtual {v5}, Lbx;->l()V

    new-instance v5, Lbx;

    .line 125
    invoke-direct {v5}, Lbx;-><init>()V

    iput-object v5, v1, Lba;->y:Lbx;

    :cond_1
    iget-object v1, p0, Lce;->a:Lbq;

    iget-object v5, p0, Lce;->b:Lba;

    .line 126
    invoke-virtual {v1, v5, v3}, Lbq;->i(Lba;Z)V

    iget-object v1, p0, Lce;->b:Lba;

    iput v2, v1, Lba;->f:I

    iput-object v4, v1, Lba;->x:Lbn;

    iput-object v4, v1, Lba;->z:Lba;

    iput-object v4, v1, Lba;->w:Lbx;

    .line 127
    iget-boolean v2, v1, Lba;->q:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lba;->o()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Lce;->d:Lcf;

    iget-object v1, v1, Lcf;->c:Lcb;

    iget-object v2, p0, Lce;->b:Lba;

    .line 128
    invoke-virtual {v1, v2}, Lcb;->b(Lba;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 127
    :cond_3
    :goto_0
    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initState called for fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lce;->b:Lba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lce;->b:Lba;

    .line 130
    invoke-virtual {v0}, Lba;->n()V

    .line 131
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lba;->j:Ljava/lang/String;

    iput-boolean v3, v0, Lba;->p:Z

    iput-boolean v3, v0, Lba;->q:Z

    iput-boolean v3, v0, Lba;->r:Z

    iput-boolean v3, v0, Lba;->s:Z

    iput-boolean v3, v0, Lba;->t:Z

    iput v3, v0, Lba;->v:I

    iput-object v4, v0, Lba;->w:Lbx;

    new-instance v1, Lbx;

    .line 132
    invoke-direct {v1}, Lbx;-><init>()V

    iput-object v1, v0, Lba;->y:Lbx;

    iput-object v4, v0, Lba;->x:Lbn;

    iput v3, v0, Lba;->A:I

    iput v3, v0, Lba;->B:I

    iput-object v4, v0, Lba;->C:Ljava/lang/String;

    iput-boolean v3, v0, Lba;->D:Z

    iput-boolean v3, v0, Lba;->E:Z

    return-void

    .line 122
    :cond_5
    new-instance v0, Ldi;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDetach()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldi;-><init>(Ljava/lang/String;)V

    throw v0
.end method
