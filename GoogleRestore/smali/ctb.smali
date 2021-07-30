.class final Lctb;
.super Lcsi;
.source "PG"


# instance fields
.field final synthetic a:Lctc;


# direct methods
.method public constructor <init>(Lctc;)V
    .locals 0

    iput-object p1, p0, Lctb;->a:Lctc;

    .line 1
    invoke-direct {p0}, Lcsi;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lctb;->a:Lctc;

    sget v1, Lctc;->d:I

    iget v0, v0, Lctc;->c:I

    invoke-static {p1, v0}, Lcrj;->a(II)V

    iget-object v0, p0, Lctb;->a:Lctc;

    iget-object v1, v0, Lctc;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    invoke-static {v0}, Lctc;->a(Lctc;)V

    aget-object v0, v1, p1

    iget-object v1, p0, Lctb;->a:Lctc;

    iget-object v2, v1, Lctc;->b:[Ljava/lang/Object;

    invoke-static {v1}, Lctc;->a(Lctc;)V

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v2, p1

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 2

    iget-object v0, p0, Lctb;->a:Lctc;

    .line 2
    sget v1, Lctc;->d:I

    .line 3
    iget v0, v0, Lctc;->c:I

    return v0
.end method
