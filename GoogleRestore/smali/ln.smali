.class public final Lln;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgj;


# instance fields
.field a:I

.field final synthetic b:Llo;

.field private c:Z


# direct methods
.method protected constructor <init>(Llo;)V
    .locals 0

    iput-object p1, p0, Lln;->b:Llo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lln;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lln;->c:Z

    return-void
.end method

.method public final a(Lgi;I)V
    .locals 1

    iget-object v0, p0, Lln;->b:Llo;

    iput-object p1, v0, Llo;->f:Lgi;

    iput p2, p0, Lln;->a:I

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lln;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lln;->b:Llo;

    const/4 v1, 0x0

    iput-object v1, v0, Llo;->f:Lgi;

    iget v1, p0, Lln;->a:I

    .line 1
    invoke-static {v0, v1}, Llo;->a(Llo;I)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lln;->b:Llo;

    .line 2
    invoke-static {v0}, Llo;->a(Llo;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lln;->c:Z

    return-void
.end method
