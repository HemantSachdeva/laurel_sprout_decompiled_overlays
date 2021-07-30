.class public final Ldjp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Ldlj;

.field final b:Ldkc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldlj;Ldlj;Ldkc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    iget-object p1, p3, Ldkc;->c:Ldmz;

    .line 1
    sget-object v0, Ldmz;->k:Ldmz;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p2, p0, Ldjp;->a:Ldlj;

    iput-object p3, p0, Ldjp;->b:Ldkc;

    return-void

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 3
    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ldmz;
    .locals 1

    iget-object v0, p0, Ldjp;->b:Ldkc;

    iget-object v0, v0, Ldkc;->c:Ldmz;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Ldjp;->b:Ldkc;

    iget-boolean v0, v0, Ldkc;->d:Z

    return v0
.end method
