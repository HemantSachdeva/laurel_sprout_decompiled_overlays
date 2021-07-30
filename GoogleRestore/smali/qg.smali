.class public final Lqg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static n:Landroid/animation/TimeInterpolator;


# instance fields
.field public a:Lqh;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field f:Ljava/util/ArrayList;

.field g:Ljava/util/ArrayList;

.field h:Ljava/util/ArrayList;

.field i:Ljava/util/ArrayList;

.field j:Ljava/util/ArrayList;

.field k:Ljava/util/ArrayList;

.field l:Ljava/util/ArrayList;

.field private final m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqg;->a:Lqh;

    new-instance v0, Ljava/util/ArrayList;

    .line 153
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqg;->m:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqg;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqg;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqg;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqg;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqg;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqg;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqg;->g:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqg;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqg;->i:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqg;->j:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqg;->k:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqg;->l:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 22
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqz;

    iget-object v1, v1, Lqz;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Lqz;)V
    .locals 3

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 125
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lof;

    .line 126
    invoke-direct {p0, v1, p2}, Lqg;->a(Lof;Lqz;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, v1, Lof;->a:Lqz;

    if-nez v2, :cond_0

    iget-object v2, v1, Lof;->b:Lqz;

    if-nez v2, :cond_0

    .line 128
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lof;)V
    .locals 1

    .line 129
    iget-object v0, p1, Lof;->a:Lqz;

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, p1, v0}, Lqg;->a(Lof;Lqz;)Z

    .line 131
    :cond_0
    iget-object v0, p1, Lof;->b:Lqz;

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0, p1, v0}, Lqg;->a(Lof;Lqz;)Z

    :cond_1
    return-void
.end method

.method private a(Lof;Lqz;)Z
    .locals 2

    .line 133
    iget-object v0, p1, Lof;->b:Lqz;

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    iput-object v1, p1, Lof;->b:Lqz;

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p1, Lof;->a:Lqz;

    if-ne v0, p2, :cond_1

    iput-object v1, p1, Lof;->a:Lqz;

    .line 135
    :goto_0
    iget-object p1, p2, Lqz;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 136
    iget-object p1, p2, Lqz;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 137
    iget-object p1, p2, Lqz;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 138
    invoke-virtual {p0, p2}, Lqg;->a(Lqz;)V

    const/4 p1, 0x1

    return p1

    .line 134
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static final b()Lqf;
    .locals 1

    new-instance v0, Lqf;

    invoke-direct {v0}, Lqf;-><init>()V

    return-object v0
.end method

.method public static b(Lqz;)V
    .locals 2

    .line 154
    iget v0, p0, Lqz;->j:I

    .line 155
    invoke-virtual {p0}, Lqz;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lqz;->d:I

    .line 156
    invoke-virtual {p0}, Lqz;->d()I

    move-result p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq p0, v1, :cond_1

    if-eq v0, p0, :cond_1

    :cond_1
    return-void
.end method

.method public static final c(Lqz;)Lqf;
    .locals 1

    invoke-static {}, Lqg;->b()Lqf;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p0}, Lqf;->a(Lqz;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lqg;->m:Ljava/util/ArrayList;

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lqg;->m:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqe;

    invoke-interface {v2}, Lqe;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqg;->m:Ljava/util/ArrayList;

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final a(Lqz;)V
    .locals 8

    iget-object v0, p0, Lqg;->a:Lqh;

    if-eqz v0, :cond_5

    .line 157
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lqz;->a(Z)V

    .line 158
    iget-object v2, p1, Lqz;->h:Lqz;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Lqz;->i:Lqz;

    if-nez v2, :cond_0

    iput-object v3, p1, Lqz;->h:Lqz;

    :cond_0
    iput-object v3, p1, Lqz;->i:Lqz;

    iget v2, p1, Lqz;->j:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lqh;->a:Landroid/support/v7/widget/RecyclerView;

    .line 159
    iget-object v3, p1, Lqz;->a:Landroid/view/View;

    .line 160
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->d()V

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->d:Lnu;

    iget-object v5, v4, Lnu;->c:Lqa;

    .line 161
    invoke-virtual {v5, v3}, Lqa;->a(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_2

    .line 162
    invoke-virtual {v4, v3}, Lnu;->d(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v6, v4, Lnu;->a:Lnt;

    .line 163
    invoke-virtual {v6, v5}, Lnt;->c(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lnu;->a:Lnt;

    .line 164
    invoke-virtual {v6, v5}, Lnt;->d(I)Z

    .line 165
    invoke-virtual {v4, v3}, Lnu;->d(Landroid/view/View;)V

    iget-object v4, v4, Lnu;->c:Lqa;

    .line 166
    invoke-virtual {v4, v5}, Lqa;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 162
    :goto_0
    if-eqz v1, :cond_4

    .line 167
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v3

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 168
    invoke-virtual {v4, v3}, Lqq;->b(Lqz;)V

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    .line 169
    invoke-virtual {v4, v3}, Lqq;->a(Lqz;)V

    :cond_4
    xor-int/lit8 v3, v1, 0x1

    .line 170
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    if-nez v1, :cond_5

    .line 159
    invoke-virtual {p1}, Lqz;->n()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lqh;->a:Landroid/support/v7/widget/RecyclerView;

    .line 171
    iget-object p1, p1, Lqz;->a:Landroid/view/View;

    invoke-virtual {v0, p1, v7}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void

    .line 158
    :cond_5
    :goto_1
    return-void
.end method

.method public a(Lqz;IIII)Z
    .locals 8

    .line 13
    iget-object v0, p1, Lqz;->a:Landroid/view/View;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int v4, p2, v1

    .line 15
    iget-object p2, p1, Lqz;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int v5, p3, p2

    .line 16
    invoke-virtual {p0, p1}, Lqg;->e(Lqz;)V

    sub-int p2, p4, v4

    sub-int p3, p5, v5

    const/4 v1, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lqg;->a(Lqz;)V

    return v1

    .line 16
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    neg-int p2, p2

    int-to-float p2, p2

    .line 17
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    if-eqz p3, :cond_3

    neg-int p2, p3

    int-to-float p2, p2

    .line 18
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    iget-object p2, p0, Lqg;->d:Ljava/util/ArrayList;

    new-instance p3, Log;

    .line 19
    move-object v2, p3

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Log;-><init>(Lqz;IIII)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lqz;Lqz;Lqf;Lqf;)Z
    .locals 8

    .line 176
    iget v3, p3, Lqf;->a:I

    .line 177
    iget v4, p3, Lqf;->b:I

    .line 178
    invoke-virtual {p2}, Lqz;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget p4, p3, Lqf;->a:I

    .line 180
    iget p3, p3, Lqf;->b:I

    move v6, p3

    move v5, p4

    goto :goto_0

    .line 181
    :cond_0
    iget p3, p4, Lqf;->a:I

    .line 182
    iget p4, p4, Lqf;->b:I

    move v5, p3

    move v6, p4

    .line 180
    :goto_0
    if-ne p1, p2, :cond_1

    .line 183
    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lqg;->a(Lqz;IIII)Z

    move-result p1

    goto :goto_1

    .line 184
    :cond_1
    iget-object p3, p1, Lqz;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result p3

    .line 185
    iget-object p4, p1, Lqz;->a:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getTranslationY()F

    move-result p4

    .line 186
    iget-object v0, p1, Lqz;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 187
    invoke-virtual {p0, p1}, Lqg;->e(Lqz;)V

    sub-int v1, v5, v3

    int-to-float v1, v1

    sub-float/2addr v1, p3

    float-to-int v1, v1

    sub-int v2, v6, v4

    int-to-float v2, v2

    sub-float/2addr v2, p4

    float-to-int v2, v2

    .line 188
    iget-object v7, p1, Lqz;->a:Landroid/view/View;

    invoke-virtual {v7, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 189
    iget-object p3, p1, Lqz;->a:Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 190
    iget-object p3, p1, Lqz;->a:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_2

    .line 191
    invoke-virtual {p0, p2}, Lqg;->e(Lqz;)V

    iget-object p3, p2, Lqz;->a:Landroid/view/View;

    neg-int p4, v1

    int-to-float p4, p4

    .line 192
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    iget-object p3, p2, Lqz;->a:Landroid/view/View;

    neg-int p4, v2

    int-to-float p4, p4

    .line 193
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationY(F)V

    iget-object p3, p2, Lqz;->a:Landroid/view/View;

    const/4 p4, 0x0

    .line 194
    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object p3, p0, Lqg;->e:Ljava/util/ArrayList;

    new-instance p4, Lof;

    .line 195
    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lof;-><init>(Lqz;Lqz;IIII)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 183
    :goto_1
    return p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lqg;->c:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqg;->e:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqg;->d:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqg;->b:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqg;->j:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqg;->k:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqg;->i:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqg;->l:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqg;->g:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqg;->f:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqg;->h:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lqg;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lqg;->a()V

    :cond_0
    return-void
.end method

.method public d(Lqz;)V
    .locals 7

    .line 25
    iget-object v0, p1, Lqz;->a:Landroid/view/View;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lqg;->d:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    iget-object v3, p0, Lqg;->d:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Log;

    .line 29
    iget-object v3, v3, Log;->a:Lqz;

    if-ne v3, p1, :cond_0

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 32
    invoke-virtual {p0, p1}, Lqg;->a(Lqz;)V

    iget-object v2, p0, Lqg;->d:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lqg;->e:Ljava/util/ArrayList;

    .line 34
    invoke-direct {p0, v1, p1}, Lqg;->a(Ljava/util/List;Lqz;)V

    iget-object v1, p0, Lqg;->b:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 37
    invoke-virtual {p0, p1}, Lqg;->a(Lqz;)V

    :cond_2
    iget-object v1, p0, Lqg;->c:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 40
    invoke-virtual {p0, p1}, Lqg;->a(Lqz;)V

    :cond_3
    iget-object v1, p0, Lqg;->h:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    iget-object v4, p0, Lqg;->h:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 43
    invoke-direct {p0, v4, p1}, Lqg;->a(Ljava/util/List;Lqz;)V

    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lqg;->h:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lqg;->g:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_8

    iget-object v4, p0, Lqg;->g:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_7

    .line 49
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Log;

    .line 50
    iget-object v6, v6, Log;->a:Lqz;

    if-ne v6, p1, :cond_6

    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 53
    invoke-virtual {p0, p1}, Lqg;->a(Lqz;)V

    .line 54
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 55
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lqg;->g:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lqg;->f:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_a

    iget-object v2, p0, Lqg;->f:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 60
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 61
    invoke-virtual {p0, p1}, Lqg;->a(Lqz;)V

    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lqg;->f:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lqg;->k:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lqg;->i:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lqg;->l:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lqg;->j:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0}, Lqg;->d()V

    return-void
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Lqg;->d:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lqg;->d:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Log;

    .line 71
    iget-object v3, v2, Log;->a:Lqz;

    iget-object v3, v3, Lqz;->a:Landroid/view/View;

    .line 72
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 73
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 74
    iget-object v1, v2, Log;->a:Lqz;

    .line 75
    invoke-virtual {p0, v1}, Lqg;->a(Lqz;)V

    iget-object v1, p0, Lqg;->d:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqg;->b:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lqg;->b:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqz;

    .line 79
    invoke-virtual {p0, v2}, Lqg;->a(Lqz;)V

    iget-object v2, p0, Lqg;->b:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lqg;->c:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2

    iget-object v3, p0, Lqg;->c:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqz;

    .line 83
    iget-object v4, v3, Lqz;->a:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 84
    invoke-virtual {p0, v3}, Lqg;->a(Lqz;)V

    iget-object v2, p0, Lqg;->c:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lqg;->e:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_3

    iget-object v3, p0, Lqg;->e:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lof;

    invoke-direct {p0, v3}, Lqg;->a(Lof;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lqg;->e:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    invoke-virtual {p0}, Lqg;->c()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lqg;->g:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    iget-object v3, p0, Lqg;->g:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_5
    if-ltz v4, :cond_6

    .line 93
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Log;

    .line 94
    iget-object v6, v5, Log;->a:Lqz;

    .line 95
    iget-object v6, v6, Lqz;->a:Landroid/view/View;

    .line 96
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 97
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 98
    iget-object v5, v5, Log;->a:Lqz;

    .line 99
    invoke-virtual {p0, v5}, Lqg;->a(Lqz;)V

    .line 100
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lqg;->g:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lqg;->f:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_a

    iget-object v1, p0, Lqg;->f:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_7
    if-ltz v3, :cond_9

    .line 106
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqz;

    .line 107
    iget-object v5, v4, Lqz;->a:Landroid/view/View;

    .line 108
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 109
    invoke-virtual {p0, v4}, Lqg;->a(Lqz;)V

    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lqg;->f:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lqg;->h:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_d

    iget-object v1, p0, Lqg;->h:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_c

    .line 116
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lof;

    invoke-direct {p0, v3}, Lqg;->a(Lof;)V

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lqg;->h:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_d
    iget-object v0, p0, Lqg;->k:Ljava/util/ArrayList;

    .line 119
    invoke-static {v0}, Lqg;->a(Ljava/util/List;)V

    iget-object v0, p0, Lqg;->j:Ljava/util/ArrayList;

    .line 120
    invoke-static {v0}, Lqg;->a(Ljava/util/List;)V

    iget-object v0, p0, Lqg;->i:Ljava/util/ArrayList;

    .line 121
    invoke-static {v0}, Lqg;->a(Ljava/util/List;)V

    iget-object v0, p0, Lqg;->l:Ljava/util/ArrayList;

    .line 122
    invoke-static {v0}, Lqg;->a(Ljava/util/List;)V

    .line 123
    invoke-virtual {p0}, Lqg;->a()V

    return-void
.end method

.method public e(Lqz;)V
    .locals 2

    sget-object v0, Lqg;->n:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    .line 150
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lqg;->n:Landroid/animation/TimeInterpolator;

    .line 151
    :cond_0
    iget-object v0, p1, Lqz;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lqg;->n:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 152
    invoke-virtual {p0, p1}, Lqg;->d(Lqz;)V

    return-void
.end method
