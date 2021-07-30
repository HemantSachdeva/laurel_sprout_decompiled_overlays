.class public Lqz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final q:Ljava/util/List;


# instance fields
.field public final a:Landroid/view/View;

.field public b:Ljava/lang/ref/WeakReference;

.field public c:I

.field public d:I

.field public e:J

.field f:I

.field g:I

.field public h:Lqz;

.field public i:Lqz;

.field j:I

.field k:Lqq;

.field l:Z

.field public m:I

.field public n:I

.field o:Landroid/support/v7/widget/RecyclerView;

.field p:Lqc;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lqz;->q:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lqz;->c:I

    iput v0, p0, Lqz;->d:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lqz;->e:J

    iput v0, p0, Lqz;->f:I

    iput v0, p0, Lqz;->g:I

    const/4 v1, 0x0

    iput-object v1, p0, Lqz;->h:Lqz;

    iput-object v1, p0, Lqz;->i:Lqz;

    const/4 v2, 0x0

    iput v2, p0, Lqz;->r:I

    iput-object v1, p0, Lqz;->k:Lqq;

    iput-boolean v2, p0, Lqz;->l:Z

    iput v2, p0, Lqz;->m:I

    iput v0, p0, Lqz;->n:I

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lqz;->a:Landroid/view/View;

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iget v0, p0, Lqz;->j:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lqz;->j:I

    return-void
.end method

.method public final a(IZ)V
    .locals 2

    iget v0, p0, Lqz;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lqz;->c:I

    iput v0, p0, Lqz;->d:I

    :cond_0
    iget v0, p0, Lqz;->g:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lqz;->c:I

    iput v0, p0, Lqz;->g:I

    :cond_1
    if-eqz p2, :cond_2

    add-int/2addr v0, p1

    iput v0, p0, Lqz;->g:I

    :cond_2
    iget p2, p0, Lqz;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Lqz;->c:I

    iget-object p1, p0, Lqz;->a:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lqz;->a:Landroid/view/View;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lql;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lql;->e:Z

    :cond_3
    return-void
.end method

.method final a(Lqq;Z)V
    .locals 0

    iput-object p1, p0, Lqz;->k:Lqq;

    iput-boolean p2, p0, Lqz;->l:Z

    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v1, p0, Lqz;->r:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 11
    :cond_0
    iget v1, p0, Lqz;->r:I

    add-int/2addr v1, v0

    .line 0
    :goto_0
    iput v1, p0, Lqz;->r:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lqz;->r:I

    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_3

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lqz;->j:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lqz;->j:I

    return-void

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    iget p1, p0, Lqz;->j:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lqz;->j:I

    :cond_4
    return-void
.end method

.method public final a(I)Z
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lqz;->j:I

    or-int/2addr p1, v0

    iput p1, p0, Lqz;->j:I

    return-void
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lqz;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lqz;->c:I

    :cond_0
    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lqz;->o:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->d(Lqz;)I

    move-result v0

    return v0
.end method

.method final e()Z
    .locals 1

    iget-object v0, p0, Lqz;->k:Lqq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final f()V
    .locals 1

    iget-object v0, p0, Lqz;->k:Lqq;

    .line 28
    invoke-virtual {v0, p0}, Lqq;->b(Lqz;)V

    return-void
.end method

.method final g()Z
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final h()V
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lqz;->j:I

    return-void
.end method

.method public final i()V
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lqz;->j:I

    return-void
.end method

.method public final j()Z
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final k()Z
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Lqz;->j:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final o()Z
    .locals 2

    iget-object v0, p0, Lqz;->a:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqz;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lqz;->o:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final p()V
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lqz;->j:I

    return-void
.end method

.method public final q()Ljava/util/List;
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    sget-object v0, Lqz;->q:Ljava/util/List;

    return-object v0

    :cond_0
    sget-object v0, Lqz;->q:Ljava/util/List;

    return-object v0
.end method

.method final r()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lqz;->j:I

    const/4 v1, -0x1

    iput v1, p0, Lqz;->c:I

    iput v1, p0, Lqz;->d:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lqz;->e:J

    iput v1, p0, Lqz;->g:I

    iput v0, p0, Lqz;->r:I

    const/4 v2, 0x0

    iput-object v2, p0, Lqz;->h:Lqz;

    iput-object v2, p0, Lqz;->i:Lqz;

    .line 9
    invoke-virtual {p0}, Lqz;->p()V

    iput v0, p0, Lqz;->m:I

    iput v1, p0, Lqz;->n:I

    .line 10
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->c(Lqz;)V

    return-void
.end method

.method public final s()Z
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lqz;->a:Landroid/view/View;

    .line 6
    invoke-static {v0}, Lge;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Z
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " position="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lqz;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lqz;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", oldPos="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lqz;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pLpos:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lqz;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lqz;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-boolean v2, p0, Lqz;->l:Z

    if-eq v0, v2, :cond_1

    const-string v0, "[attachedScrap]"

    goto :goto_1

    .line 27
    :cond_1
    const-string v0, "[changeScrap]"

    .line 16
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lqz;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lqz;->l()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lqz;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lqz;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lqz;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lqz;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_8
    invoke-virtual {p0}, Lqz;->s()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lqz;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v0, p0, Lqz;->j:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lqz;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    :cond_a
    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v0, p0, Lqz;->a:Landroid/view/View;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_c
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 1

    .line 3
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lqz;->b(I)V

    return-void
.end method

.method public final v()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lqz;->d:I

    iput v0, p0, Lqz;->g:I

    return-void
.end method

.method public final w()Z
    .locals 1

    iget v0, p0, Lqz;->j:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
