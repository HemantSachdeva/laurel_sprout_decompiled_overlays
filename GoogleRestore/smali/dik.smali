.class final Ldik;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldij;


# direct methods
.method public constructor <init>(Ldij;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-string v0, "output"

    invoke-static {p1, v0}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldik;->a:Ldij;

    iput-object p0, p1, Ldij;->f:Ldik;

    return-void
.end method


# virtual methods
.method public final a(ID)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Ldij;->a(ID)V

    return-void
.end method

.method public final a(IF)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 8
    invoke-virtual {v0, p1, p2}, Ldij;->a(IF)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 19
    invoke-virtual {v0, p1, p2}, Ldij;->e(II)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Ldij;->a(IJ)V

    return-void
.end method

.method public final a(ILdib;)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 3
    invoke-virtual {v0, p1, p2}, Ldij;->a(ILdib;)V

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    .line 16
    instance-of v0, p2, Ldib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 17
    check-cast p2, Ldib;

    invoke-virtual {v0, p1, p2}, Ldij;->b(ILdib;)V

    return-void

    :cond_0
    iget-object v0, p0, Ldik;->a:Ldij;

    .line 18
    check-cast p2, Ldlj;

    invoke-virtual {v0, p1, p2}, Ldij;->a(ILdlj;)V

    return-void
.end method

.method public final a(ILjava/lang/Object;Ldlw;)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 15
    check-cast p2, Ldlj;

    invoke-virtual {v0, p1, p2, p3}, Ldij;->a(ILdlj;Ldlw;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 23
    invoke-virtual {v0, p1, p2}, Ldij;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 2
    invoke-virtual {v0, p1, p2}, Ldij;->a(IZ)V

    return-void
.end method

.method public final b(II)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 5
    invoke-virtual {v0, p1, p2}, Ldij;->c(II)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 20
    invoke-virtual {v0, p1, p2, p3}, Ldij;->b(IJ)V

    return-void
.end method

.method public final b(ILjava/lang/Object;Ldlw;)V
    .locals 2

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 9
    check-cast p2, Ldlj;

    .line 10
    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Ldij;->b(II)V

    iget-object v1, v0, Ldij;->f:Ldik;

    .line 11
    invoke-interface {p3, p2, v1}, Ldlw;->a(Ljava/lang/Object;Ldik;)V

    .line 12
    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Ldij;->b(II)V

    return-void
.end method

.method public final c(II)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 13
    invoke-virtual {v0, p1, p2}, Ldij;->c(II)V

    return-void
.end method

.method public final c(IJ)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 25
    invoke-virtual {v0, p1, p2, p3}, Ldij;->a(IJ)V

    return-void
.end method

.method public final d(II)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 6
    invoke-virtual {v0, p1, p2}, Ldij;->e(II)V

    return-void
.end method

.method public final d(IJ)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ldij;->b(IJ)V

    return-void
.end method

.method public final e(II)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 24
    invoke-virtual {v0, p1, p2}, Ldij;->d(II)V

    return-void
.end method

.method public final e(IJ)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 22
    invoke-virtual {v0, p1, p2, p3}, Ldij;->c(IJ)V

    return-void
.end method

.method public final f(II)V
    .locals 1

    iget-object v0, p0, Ldik;->a:Ldij;

    .line 21
    invoke-virtual {v0, p1, p2}, Ldij;->f(II)V

    return-void
.end method
