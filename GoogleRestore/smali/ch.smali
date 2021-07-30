.class public abstract Lch;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final d:Ljava/util/ArrayList;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:Z

.field l:Ljava/lang/String;

.field m:I

.field n:Ljava/lang/CharSequence;

.field o:I

.field p:Ljava/lang/CharSequence;

.field q:Ljava/util/ArrayList;

.field r:Ljava/util/ArrayList;

.field s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch;->s:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(ILba;)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lch;->a(ILba;Ljava/lang/String;)V

    return-void
.end method

.method public final a(ILba;Ljava/lang/String;)V
    .locals 1

    .line 7
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lch;->a(ILba;Ljava/lang/String;I)V

    return-void
.end method

.method public a(ILba;Ljava/lang/String;I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lba;Ljava/lang/String;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lch;->a(ILba;Ljava/lang/String;I)V

    return-void
.end method

.method final a(Lcg;)V
    .locals 1

    iget-object v0, p0, Lch;->d:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lch;->e:I

    iput v0, p1, Lcg;->c:I

    iget v0, p0, Lch;->f:I

    iput v0, p1, Lcg;->d:I

    iget v0, p0, Lch;->g:I

    iput v0, p1, Lcg;->e:I

    iget v0, p0, Lch;->h:I

    iput v0, p1, Lcg;->f:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lch;->k:Z

    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch;->j:Z

    iput-object p1, p0, Lch;->l:Ljava/lang/String;

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Lch;->j:Z

    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch;->k:Z

    return-void

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
