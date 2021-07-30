.class abstract Lcqc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# instance fields
.field public a:I

.field final b:Ljava/lang/CharSequence;

.field final c:Lcqo;

.field final d:Z

.field e:I

.field f:I

.field private g:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcrd;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcqc;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcqc;->e:I

    iget-object v0, p1, Lcrd;->a:Lcqo;

    iput-object v0, p0, Lcqc;->c:Lcqo;

    iget-boolean v0, p1, Lcrd;->b:Z

    iput-boolean v0, p0, Lcqc;->d:Z

    iget p1, p1, Lcrd;->d:I

    iput p1, p0, Lcqc;->f:I

    iput-object p2, p0, Lcqc;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b(I)I
.end method

.method public final forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$$CC;->forEachRemaining$$dflt$$(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 10

    iget v0, p0, Lcqc;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcrj;->b(Z)V

    iget v0, p0, Lcqc;->a:I

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_e

    if-eqz v4, :cond_d

    const/4 v0, 0x2

    if-eq v4, v0, :cond_c

    iput v1, p0, Lcqc;->a:I

    iget v0, p0, Lcqc;->e:I

    :cond_1
    :goto_1
    iget v1, p0, Lcqc;->e:I

    const/4 v4, 0x3

    const/4 v6, -0x1

    if-eq v1, v6, :cond_a

    .line 3
    invoke-virtual {p0, v1}, Lcqc;->a(I)I

    move-result v1

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcqc;->b:Ljava/lang/CharSequence;

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v6, p0, Lcqc;->e:I

    const/4 v7, -0x1

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p0, v1}, Lcqc;->b(I)I

    move-result v7

    iput v7, p0, Lcqc;->e:I

    .line 4
    :goto_2
    if-ne v7, v0, :cond_3

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcqc;->e:I

    iget-object v1, p0, Lcqc;->b:Ljava/lang/CharSequence;

    .line 8
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v7, v1, :cond_1

    iput v6, p0, Lcqc;->e:I

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v0, v1, :cond_4

    iget-object v7, p0, Lcqc;->c:Lcqo;

    iget-object v8, p0, Lcqc;->b:Ljava/lang/CharSequence;

    .line 6
    invoke-interface {v8, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcqo;->a(C)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 12
    :cond_4
    nop

    .line 6
    :cond_5
    :goto_4
    if-le v1, v0, :cond_6

    add-int/lit8 v7, v1, -0x1

    iget-object v8, p0, Lcqc;->c:Lcqo;

    iget-object v9, p0, Lcqc;->b:Ljava/lang/CharSequence;

    .line 7
    invoke-interface {v9, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Lcqo;->a(C)Z

    move-result v8

    if-eqz v8, :cond_6

    move v1, v7

    goto :goto_4

    :cond_6
    iget-boolean v7, p0, Lcqc;->d:Z

    if-eqz v7, :cond_7

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcqc;->e:I

    goto :goto_1

    :cond_7
    iget v5, p0, Lcqc;->f:I

    if-ne v5, v3, :cond_8

    iget-object v1, p0, Lcqc;->b:Ljava/lang/CharSequence;

    .line 10
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v6, p0, Lcqc;->e:I

    :goto_5
    if-le v1, v0, :cond_9

    add-int/lit8 v5, v1, -0x1

    iget-object v6, p0, Lcqc;->c:Lcqo;

    iget-object v7, p0, Lcqc;->b:Ljava/lang/CharSequence;

    .line 11
    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcqo;->a(C)Z

    move-result v6

    if-eqz v6, :cond_9

    move v1, v5

    goto :goto_5

    .line 12
    :cond_8
    add-int/2addr v5, v6

    iput v5, p0, Lcqc;->f:I

    .line 11
    :cond_9
    iget-object v5, p0, Lcqc;->b:Ljava/lang/CharSequence;

    .line 12
    invoke-interface {v5, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 5
    :cond_a
    iput v4, p0, Lcqc;->a:I

    .line 9
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    .line 12
    :goto_6
    iput-object v0, p0, Lcqc;->g:Ljava/lang/Object;

    iget v0, p0, Lcqc;->a:I

    if-eq v0, v4, :cond_b

    iput v3, p0, Lcqc;->a:I

    return v3

    :cond_b
    return v2

    .line 9
    :cond_c
    return v2

    :cond_d
    return v3

    :cond_e
    nop

    .line 2
    goto :goto_8

    :goto_7
    throw v5

    :goto_8
    goto :goto_7
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcqc;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcqc;->a:I

    iget-object v0, p0, Lcqc;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcqc;->g:Ljava/lang/Object;

    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 14
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 15
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
