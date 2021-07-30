.class final Lcsh;
.super Lcsi;
.source "PG"


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcsi;


# direct methods
.method public constructor <init>(Lcsi;II)V
    .locals 0

    iput-object p1, p0, Lcsh;->c:Lcsi;

    .line 1
    invoke-direct {p0}, Lcsi;-><init>()V

    iput p2, p0, Lcsh;->a:I

    iput p3, p0, Lcsh;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)Lcsi;
    .locals 2

    iget v0, p0, Lcsh;->b:I

    .line 7
    invoke-static {p1, p2, v0}, Lcrj;->a(III)V

    iget-object v0, p0, Lcsh;->c:Lcsi;

    iget v1, p0, Lcsh;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 8
    invoke-virtual {v0, p1, p2}, Lcsi;->a(II)Lcsi;

    move-result-object p1

    return-object p1
.end method

.method public final b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcsh;->c:Lcsi;

    .line 4
    invoke-virtual {v0}, Lcsd;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcsh;->c:Lcsi;

    .line 6
    invoke-virtual {v0}, Lcsd;->c()I

    move-result v0

    iget v1, p0, Lcsh;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcsh;->c:Lcsi;

    .line 5
    invoke-virtual {v0}, Lcsd;->c()I

    move-result v0

    iget v1, p0, Lcsh;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcsh;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcsh;->b:I

    .line 2
    invoke-static {p1, v0}, Lcrj;->a(II)V

    iget-object v0, p0, Lcsh;->c:Lcsi;

    iget v1, p0, Lcsh;->a:I

    add-int/2addr p1, v1

    .line 3
    invoke-virtual {v0, p1}, Lcsi;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcsh;->b:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcsi;->a(II)Lcsi;

    move-result-object p1

    return-object p1
.end method
