.class public final Ltm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public b:Z

.field public c:[J

.field public d:[Ljava/lang/Object;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltm;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltm;->b:Z

    const/16 v0, 0xa

    invoke-static {v0}, Ltk;->b(I)I

    move-result v0

    .line 1
    new-array v1, v0, [J

    iput-object v1, p0, Ltm;->c:[J

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ltm;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 3

    iget-boolean v0, p0, Ltm;->b:Z

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Ltm;->b()V

    :cond_0
    iget-object v0, p0, Ltm;->c:[J

    .line 16
    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final a(J)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ltm;->c:[J

    iget v1, p0, Ltm;->e:I

    .line 12
    invoke-static {v0, v1, p1, p2}, Ltk;->a([JIJ)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Ltm;->d:[Ljava/lang/Object;

    .line 13
    aget-object v0, p2, p1

    sget-object v1, Ltm;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    aget-object p1, p2, p1

    return-object p1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Ltm;
    .locals 2

    .line 4
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltm;

    iget-object v1, p0, Ltm;->c:[J

    .line 5
    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Ltm;->c:[J

    iget-object v1, p0, Ltm;->d:[Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Ltm;->d:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final a(JLjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ltm;->c:[J

    iget v1, p0, Ltm;->e:I

    .line 17
    invoke-static {v0, v1, p1, p2}, Ltk;->a([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Ltm;->d:[Ljava/lang/Object;

    .line 18
    aput-object p3, p1, v0

    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Ltm;->e:I

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Ltm;->d:[Ljava/lang/Object;

    .line 19
    aget-object v3, v2, v0

    sget-object v4, Ltm;->a:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p0, Ltm;->c:[J

    .line 32
    aput-wide p1, v1, v0

    .line 33
    aput-object p3, v2, v0

    return-void

    .line 19
    :cond_2
    :goto_0
    iget-boolean v2, p0, Ltm;->b:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltm;->c:[J

    .line 20
    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 21
    invoke-virtual {p0}, Ltm;->b()V

    iget-object v0, p0, Ltm;->c:[J

    iget v1, p0, Ltm;->e:I

    .line 22
    invoke-static {v0, v1, p1, p2}, Ltk;->a([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_3
    iget v1, p0, Ltm;->e:I

    iget-object v2, p0, Ltm;->c:[J

    .line 23
    array-length v2, v2

    if-lt v1, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ltk;->b(I)I

    move-result v1

    .line 24
    new-array v2, v1, [J

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Ltm;->c:[J

    .line 26
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Ltm;->d:[Ljava/lang/Object;

    .line 27
    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Ltm;->c:[J

    iput-object v1, p0, Ltm;->d:[Ljava/lang/Object;

    :cond_4
    iget v1, p0, Ltm;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_5

    iget-object v2, p0, Ltm;->c:[J

    add-int/lit8 v3, v0, 0x1

    .line 28
    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ltm;->d:[Ljava/lang/Object;

    iget v2, p0, Ltm;->e:I

    sub-int/2addr v2, v0

    .line 29
    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v1, p0, Ltm;->c:[J

    .line 30
    aput-wide p1, v1, v0

    iget-object p1, p0, Ltm;->d:[Ljava/lang/Object;

    .line 31
    aput-object p3, p1, v0

    iget p1, p0, Ltm;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ltm;->e:I

    return-void
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Ltm;->b:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Ltm;->b()V

    :cond_0
    iget-object v0, p0, Ltm;->d:[Ljava/lang/Object;

    .line 48
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b()V
    .locals 9

    iget v0, p0, Ltm;->e:I

    iget-object v1, p0, Ltm;->c:[J

    iget-object v2, p0, Ltm;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 8
    aget-object v6, v2, v4

    sget-object v7, Ltm;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 9
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 10
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 11
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Ltm;->b:Z

    iput v5, p0, Ltm;->e:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Ltm;->b:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Ltm;->b()V

    :cond_0
    iget v0, p0, Ltm;->e:I

    return v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ltm;->a()Ltm;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 5

    iget v0, p0, Ltm;->e:I

    iget-object v1, p0, Ltm;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    .line 3
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Ltm;->e:I

    iput-boolean v2, p0, Ltm;->b:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 35
    invoke-virtual {p0}, Ltm;->c()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Ltm;->e:I

    mul-int/lit8 v1, v1, 0x1c

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ltm;->e:I

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_1

    .line 38
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_1
    invoke-virtual {p0, v1}, Ltm;->a(I)J

    move-result-wide v2

    .line 40
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0, v1}, Ltm;->b(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    nop

    .line 44
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_3
    const/16 v1, 0x7d

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
